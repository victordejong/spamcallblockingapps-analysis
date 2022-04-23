package com.android.contacts.list;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import android.provider.ContactsContract;
import android.util.Log;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.CoverUtils;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/bh.class */
public final class bh extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f1806a = Uri.withAppendedPath(ContactsContract.AUTHORITY_URI, "provider_status");

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f1807b = {"status", CoverUtils.CoverData.COVER_URI};
    private static final String[] c = {"status"};
    private static bh d;
    private final Context e;
    private int h;
    private a i;
    private c j;
    private final Handler f = new Handler();
    private final Object g = new Object();
    private final ArrayList<b> k = new ArrayList<>();
    private final Runnable l = new Runnable() { // from class: com.android.contacts.list.bh.1
        @Override // java.lang.Runnable
        public final void run() {
            bh.this.g();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/bh$a.class */
    public final class a extends AsyncTask<Void, Void, Boolean> {
        private a() {
        }

        /* synthetic */ a(bh bhVar, byte b2) {
            this();
        }

        private Boolean a() {
            boolean z;
            try {
                Cursor query = bh.this.e.getContentResolver().query(bh.f1806a, CompatUtils.isMarshmallowCompatible() ? bh.c : bh.f1807b, null, null, null);
                if (query != null) {
                    if (query.moveToFirst()) {
                        if (CompatUtils.isMarshmallowCompatible()) {
                            bh.this.j = new c(query.getInt(0), null);
                        } else {
                            bh.this.j = new c(query.getInt(0), query.getString(1));
                        }
                        z = true;
                        query.close();
                        synchronized (bh.this.g) {
                            bh.this.g.notifyAll();
                        }
                        return z;
                    }
                    query.close();
                }
                z = false;
                synchronized (bh.this.g) {
                    bh.this.g.notifyAll();
                }
                return z;
            } catch (Throwable th) {
                synchronized (bh.this.g) {
                    bh.this.g.notifyAll();
                    throw th;
                }
            }
        }

        private void b() {
            bh.this.i = null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onCancelled(Boolean bool) {
            b();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            Boolean bool2 = bool;
            b();
            if (bool2 != null && bool2.booleanValue()) {
                bh.d(bh.this);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/bh$b.class */
    public interface b {
        void onProviderStatusChange();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/bh$c.class */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f1810a;

        /* renamed from: b  reason: collision with root package name */
        public final String f1811b;

        public c(int i, String str) {
            this.f1810a = i;
            this.f1811b = str;
        }
    }

    private bh(Context context) {
        super(null);
        this.e = context;
    }

    public static bh a(Context context) {
        bh bhVar;
        synchronized (bh.class) {
            try {
                if (d == null) {
                    d = new bh(context);
                }
                bhVar = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bhVar;
    }

    static /* synthetic */ void d(bh bhVar) {
        if (bhVar.f()) {
            Iterator<b> it = bhVar.k.iterator();
            while (it.hasNext()) {
                it.next().onProviderStatusChange();
            }
        }
    }

    private boolean f() {
        return this.h > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.i == null) {
            this.i = new a(this, (byte) 0);
            try {
                this.i.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } catch (Exception e) {
                Log.w("ProviderStatusWatcher", e.toString());
            }
        }
    }

    public final void a() {
        int i = this.h + 1;
        this.h = i;
        if (i == 1) {
            this.e.getContentResolver().registerContentObserver(f1806a, false, this);
            g();
        }
    }

    public final void a(b bVar) {
        this.k.add(bVar);
    }

    public final void b() {
        if (!f()) {
            Log.e("ProviderStatusWatcher", "Already stopped");
            return;
        }
        int i = this.h - 1;
        this.h = i;
        if (i == 0) {
            this.f.removeCallbacks(this.l);
            this.e.getContentResolver().unregisterContentObserver(this);
        }
    }

    public final void b(b bVar) {
        this.k.remove(bVar);
    }

    public final c c() {
        if (this.j == null) {
            if (this.i == null) {
                g();
            }
            synchronized (this.g) {
                try {
                    this.g.wait(1000L);
                } catch (InterruptedException e) {
                }
            }
        }
        return this.j == null ? new c(1, null) : this.j;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z, Uri uri) {
        if (f1806a.equals(uri)) {
            Log.i("ProviderStatusWatcher", "Provider status changed.");
            this.f.removeCallbacks(this.l);
            this.f.post(this.l);
        }
    }
}
