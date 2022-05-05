package com.asus.contacts.fonts;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;
import com.asus.contacts.fonts.f;
import com.asus.contacts.fonts.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    Context f2650a;

    /* renamed from: b  reason: collision with root package name */
    f f2651b;
    final ArrayList<a> c = new ArrayList<>();
    ServiceConnection d = new ServiceConnection() { // from class: com.asus.contacts.fonts.e.1
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ArrayList arrayList;
            e.this.f2651b = f.a.a(iBinder);
            try {
                e.this.f2651b.a(e.this.e);
                e eVar = e.this;
                synchronized (eVar.c) {
                    arrayList = (ArrayList) eVar.c.clone();
                }
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((a) it.next()).c();
                    }
                }
                Log.v("FontManagerClient", "onServiceConnected, process: " + Process.myTid());
            } catch (RemoteException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            try {
                e.this.f2651b.b();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            e.this.f2651b = null;
            e.this.f2650a = null;
            Log.v("FontManagerClient", "onServiceDisconnected, process: " + Process.myTid());
        }
    };
    g e = new g.a() { // from class: com.asus.contacts.fonts.e.2
        /* JADX WARN: Type inference failed for: r0v0, types: [com.asus.contacts.fonts.e$2$1] */
        @Override // com.asus.contacts.fonts.g
        public final void a() {
            new AsyncTask<Void, Void, Void>() { // from class: com.asus.contacts.fonts.e.2.1
                @Override // android.os.AsyncTask
                protected final /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) {
                    return null;
                }

                @Override // android.os.AsyncTask
                protected final /* synthetic */ void onPostExecute(Void r3) {
                    synchronized (e.this.c) {
                        if (!e.this.c.isEmpty()) {
                            Iterator<a> it = e.this.c.iterator();
                            while (it.hasNext()) {
                                it.next().b();
                            }
                        }
                    }
                }
            }.execute(new Void[0]);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.asus.contacts.fonts.e$2$2] */
        @Override // com.asus.contacts.fonts.g
        public final void a(final String[] strArr) {
            new AsyncTask<Void, Void, Void>() { // from class: com.asus.contacts.fonts.e.2.2
                @Override // android.os.AsyncTask
                protected final /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) {
                    return null;
                }

                @Override // android.os.AsyncTask
                protected final /* synthetic */ void onPostExecute(Void r4) {
                    synchronized (e.this.c) {
                        if (!e.this.c.isEmpty()) {
                            Iterator<a> it = e.this.c.iterator();
                            while (it.hasNext()) {
                                it.next().a(strArr);
                            }
                        }
                    }
                }
            }.execute(new Void[0]);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.asus.contacts.fonts.e$2$3] */
        @Override // com.asus.contacts.fonts.g
        public final void b() {
            new AsyncTask<Void, Void, Void>() { // from class: com.asus.contacts.fonts.e.2.3
                @Override // android.os.AsyncTask
                protected final /* bridge */ /* synthetic */ Void doInBackground(Void[] voidArr) {
                    return null;
                }

                @Override // android.os.AsyncTask
                protected final /* synthetic */ void onPostExecute(Void r3) {
                    synchronized (e.this.c) {
                        if (!e.this.c.isEmpty()) {
                            Iterator<a> it = e.this.c.iterator();
                            while (it.hasNext()) {
                                it.next();
                            }
                        }
                    }
                }
            }.execute(new Void[0]);
        }
    };

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/e$a.class */
    public interface a {
        void a(String... strArr);

        void b();

        void c();
    }

    public e(Context context) {
        this.f2650a = context;
        if (this.f2651b == null) {
            Context applicationContext = this.f2650a.getApplicationContext();
            Intent intent = new Intent(applicationContext, FontManagerService.class);
            applicationContext.bindService(intent, this.d, 1);
            applicationContext.startService(intent);
        }
    }

    public final String a(int i) {
        String a2;
        if (this.f2651b != null) {
            try {
                a2 = this.f2651b.a(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            return a2;
        }
        a2 = null;
        return a2;
    }

    public final void a(a aVar) {
        synchronized (this.c) {
            if (!this.c.contains(aVar)) {
                this.c.add(aVar);
            }
        }
    }

    public final boolean a() {
        boolean c;
        if (this.f2651b != null) {
            try {
                c = this.f2651b.c();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            return c;
        }
        c = false;
        return c;
    }

    public final boolean a(int i, String str) {
        boolean a2;
        if (this.f2651b != null) {
            try {
                a2 = this.f2651b.a(i, str);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            return a2;
        }
        a2 = false;
        return a2;
    }

    public final Font b(int i) {
        Font b2;
        if (this.f2651b != null) {
            try {
                b2 = this.f2651b.b(i);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            return b2;
        }
        b2 = null;
        return b2;
    }

    public final void b(a aVar) {
        synchronized (this.c) {
            this.c.remove(aVar);
        }
    }

    public final boolean b() {
        boolean d;
        if (this.f2651b != null) {
            try {
                d = this.f2651b.d();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            return d;
        }
        d = false;
        return d;
    }

    public final List<Font> c() {
        List<Font> f;
        if (this.f2651b != null) {
            try {
                f = this.f2651b.f();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
            return f;
        }
        f = null;
        return f;
    }
}
