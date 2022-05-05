package com.android.contacts.dialpad;

import android.app.Service;
import android.content.ContentProviderOperation;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.OperationApplicationException;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.RemoteException;
import android.provider.ContactsContract;
import android.util.Log;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/SmartDialFirstSyncService.class */
public class SmartDialFirstSyncService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private SharedPreferences f968a = null;

    /* renamed from: b  reason: collision with root package name */
    private a f969b = null;
    private PowerManager.WakeLock c = null;
    private String d;
    private String e;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/SmartDialFirstSyncService$a.class */
    private final class a extends AsyncTask<String, Void, Void> {

        /* renamed from: a  reason: collision with root package name */
        Context f970a;
        private long c = 0;
        private long d = 0;

        a(Context context) {
            this.f970a = null;
            this.f970a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:69:0x0200  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.Void a() {
            /*
                Method dump skipped, instructions count: 530
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.SmartDialFirstSyncService.a.a():java.lang.Void");
        }

        private void a(List<b> list) {
            int i = 50;
            if (list.size() != 0) {
                if (list.size() <= 50) {
                    b(list);
                    return;
                }
                for (int i2 = 0; i2 < list.size(); i2 = i) {
                    if (SmartDialFirstSyncService.this.f969b.isCancelled()) {
                        Log.d("LongOperation", " task cancel");
                        return;
                    }
                    try {
                        List<b> subList = list.subList(i2, i);
                        if (subList != null) {
                            b(subList);
                            int i3 = i + 50;
                            i = i3;
                            if (i3 > list.size()) {
                                i = list.size();
                            }
                        } else {
                            return;
                        }
                    } catch (Exception e) {
                        return;
                    }
                }
            }
        }

        private void b(List<b> list) {
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            ContentValues contentValues = new ContentValues();
            for (int i = 0; i < list.size(); i++) {
                b bVar = list.get(i);
                long j = bVar.f972a;
                String str = bVar.f973b;
                contentValues.clear();
                contentValues.put("display_name", str);
                ContentProviderOperation.Builder newUpdate = ContentProviderOperation.newUpdate(ContactsContract.RawContacts.CONTENT_URI);
                newUpdate.withValues(contentValues);
                newUpdate.withSelection("_id=" + j, null);
                newUpdate.withYieldAllowed(true);
                arrayList.add(newUpdate.build());
            }
            try {
                this.f970a.getContentResolver().applyBatch("com.android.contacts", arrayList);
            } catch (OperationApplicationException e) {
                Log.e("LongOperation", String.format("%s: %s", e.toString(), e.getMessage()));
            } catch (RemoteException e2) {
                Log.e("LongOperation", String.format("%s: %s", e2.toString(), e2.getMessage()));
            }
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(String[] strArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final void onCancelled() {
            super.onCancelled();
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onCancelled(Void r4) {
            super.onCancelled(r4);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            try {
                SmartDialFirstSyncService.this.stopSelf();
            } catch (Exception e) {
                Log.d("LongOperation", "stop service fail");
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/SmartDialFirstSyncService$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        long f972a;

        /* renamed from: b  reason: collision with root package name */
        String f973b;

        private b() {
        }

        /* synthetic */ b(byte b2) {
            this();
        }
    }

    static /* synthetic */ void a(SmartDialFirstSyncService smartDialFirstSyncService, boolean z) {
        if (smartDialFirstSyncService.c == null) {
            return;
        }
        if (z && !smartDialFirstSyncService.c.isHeld()) {
            smartDialFirstSyncService.c.acquire();
        } else if (!z && smartDialFirstSyncService.c.isHeld()) {
            smartDialFirstSyncService.c.release();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.v("SmartDialFirstSyncService", "Service killed");
        super.onDestroy();
        if (this.f969b != null) {
            this.f969b.cancel(true);
        }
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        super.onStart(intent, i);
        if (intent != null && intent.getExtras() != null) {
            this.d = intent.getExtras().getString("source");
            this.e = intent.getExtras().getString("mode");
            if (intent.getExtras().getBoolean("toast")) {
                Toast.makeText(getApplicationContext(), 2131756150, 0).show();
            }
            this.f969b = new a(getApplicationContext());
            this.f969b.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        } else if (!com.android.contacts.dialpad.b.f1011b) {
            this.f969b = new a(getApplicationContext());
            this.f969b.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
        }
    }
}
