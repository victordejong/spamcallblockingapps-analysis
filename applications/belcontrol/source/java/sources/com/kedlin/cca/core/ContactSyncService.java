package com.kedlin.cca.core;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.IBinder;
import com.callcontrol.util.job.ScheduledJob;
import java.util.ArrayList;
import p000.r71;
@SuppressLint({"Registered"})
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/ContactSyncService.class */
public class ContactSyncService extends Service {

    /* renamed from: a */
    public static final String f3699a = CCAService.class.getName() + ".CATEGORY_CONTINUE_CONTACTS_SYNC";

    /* renamed from: b */
    public static boolean f3700b = false;

    /* renamed from: c */
    public static ScheduledJob f3701c = null;

    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/core/ContactSyncService$ContactSyncTask.class */
    public static class ContactSyncTask extends AsyncTask<Object, Object, Boolean> {
        public ContactSyncTask() {
        }

        /* renamed from: a */
        public Boolean doInBackground(Object... objArr) {
            Cursor m872Z = new q81().m872Z();
            if (m872Z == null) {
                j91.m1499q(this, "No need to deliver contacts");
                return Boolean.FALSE;
            } else if (m872Z.getCount() == 0) {
                j91.m1499q(this, "No need to deliver contacts");
                m872Z.close();
                return Boolean.FALSE;
            } else {
                t61 t61Var = new t61();
                ArrayList arrayList = new ArrayList();
                if (m872Z.moveToFirst()) {
                    do {
                        q81 q81Var = new q81();
                        q81Var.m881Q(m872Z);
                        if (t61Var.m555b(q81Var)) {
                            arrayList.add(q81Var.mo63a());
                        } else if (t61Var.f8148c.length() != 0) {
                            break;
                        }
                    } while (m872Z.moveToNext());
                }
                m872Z.close();
                if (arrayList.size() == 0) {
                    j91.m1499q(this, "No contacts to deliver");
                    return Boolean.FALSE;
                } else if (!k61.m1467B(t61Var)) {
                    arrayList.clear();
                    return Boolean.TRUE;
                } else {
                    q81.m855q0((String[]) arrayList.toArray(new String[arrayList.size()]), true);
                    arrayList.clear();
                    return Boolean.TRUE;
                }
            }
        }

        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            if (!bool.booleanValue()) {
                boolean unused = ContactSyncService.f3700b = false;
                ScheduledJob unused2 = ContactSyncService.f3701c = null;
                r71.EnumC1638a.f7926V.m685k(Boolean.FALSE);
                return;
            }
            if (ContactSyncService.f3701c == null) {
                ScheduledJob unused3 = ContactSyncService.f3701c = new ScheduledJob(this) { // from class: com.kedlin.cca.core.ContactSyncService.ContactSyncTask.1
                    @Override // com.callcontrol.util.job.ScheduledJob
                    /* renamed from: c */
                    public void mo4392c(zp0 zp0Var) {
                        Intent intent = new Intent(lm1.m1292a(), CCAService.class);
                        intent.addCategory(ContactSyncService.f3699a);
                        fa1.m1850P(intent);
                    }
                };
            }
            ContactSyncService.f3701c.m5261e(60);
            j91.m1499q(this, "Next session scheduled");
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            super.onCancelled();
            if (isCancelled()) {
                boolean unused = ContactSyncService.f3700b = false;
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        ScheduledJob scheduledJob = f3701c;
        if (scheduledJob != null) {
            scheduledJob.m5264a();
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            return super.onStartCommand(intent, i, i2);
        }
        String action = intent.getAction();
        boolean z = action != null && action.equals(aa1.f215h);
        String str = f3699a;
        if (!z && !intent.hasCategory(str)) {
            return super.onStartCommand(intent, i, i2);
        }
        if (!r71.EnumC1638a.f7926V.m695a() || ((f3700b && !intent.hasCategory(str)) || r71.EnumC1638a.f7969m1.m691e() < 0)) {
            j91.m1499q(this, "Changes detected, but another task is in progress, it will pick it up later or we do not need to start it at all");
        } else if (fa1.m1827w()) {
            j91.m1499q(this, "Changes detected, need to sync");
            f3700b = true;
            new ContactSyncTask().execute(new Object[0]);
        } else {
            f3700b = false;
        }
        return super.onStartCommand(intent, i, i2);
    }
}
