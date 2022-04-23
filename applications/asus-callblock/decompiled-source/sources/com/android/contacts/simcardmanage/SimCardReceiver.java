package com.android.contacts.simcardmanage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.util.Log;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConfig;
import com.asus.blocklist.backwardcompatible.BlockListDataSyncService;
import com.asus.prefersim.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/SimCardReceiver.class */
public class SimCardReceiver extends BroadcastReceiver {
    private Context c;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2136b = false;

    /* renamed from: a  reason: collision with root package name */
    d f2135a = null;

    /* JADX WARN: Type inference failed for: r0v22, types: [com.android.contacts.simcardmanage.SimCardReceiver$7] */
    private void a(Context context, int i, long j) {
        boolean z = true;
        if (b.a(context, i)) {
            this.f2135a.c(i, false);
            Intent intent = new Intent(context, ReadIccProviderService.class);
            intent.setAction("android.intent.action.ASUS_READ_ICC_PROVIDER_SERVICE");
            intent.putExtra("sim_index", i);
            intent.putExtra("sim_sub_id", j);
            context.startService(intent);
            this.f2135a.b(i, true);
            Intent intent2 = new Intent();
            intent2.setAction("com.asus.contactswidget.CONTACTS_UPDATE");
            intent2.putExtra("allupdate", true);
            context.sendBroadcast(intent2);
            new Thread() { // from class: com.android.contacts.simcardmanage.SimCardReceiver.7
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    SystemClock.sleep(1000L);
                    Intent intent3 = new Intent();
                    intent3.setFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
                    intent3.setAction("com.asus.contactswidget.CONTACTS_UPDATE");
                    intent3.putExtra("allupdate", true);
                    SimCardReceiver.this.c.sendBroadcast(intent3);
                }
            }.start();
            context.sendBroadcast(new Intent("android.appwidget.action.APPWIDGET_UPDATE_SIM"));
            Log.d("SimCardReceiver", "Send android.appwidget.action.APPWIDGET_UPDATE_SIM");
            Log.d("SimCardReceiver", "isPhone:" + PhoneCapabilityTester.isPhone(context));
            if (PhoneCapabilityTester.isPhone(context)) {
                if (PreferenceManager.getDefaultSharedPreferences(context).getBoolean("PREF_KEY_BLOCKLIST_UPGRADE_ACTION_FOR_SIM_COMPLETE", false)) {
                    z = false;
                }
                Log.d("SimCardReceiver", "mNeedSyncSimData:" + z);
                if (z) {
                    try {
                        Intent intent3 = new Intent(context, BlockListDataSyncService.class);
                        intent3.setAction("android.intent.action.ASUS_BLOCKLIST_SYNC_ACTION_FOR_SIM");
                        context.startService(intent3);
                    } catch (Exception e) {
                        Log.e("SimCardReceiver", "Fail to start blocklist data sync service, Exception : " + e.toString());
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.android.contacts.simcardmanage.SimCardReceiver$6] */
    /* JADX WARN: Type inference failed for: r0v56, types: [com.android.contacts.simcardmanage.SimCardReceiver$5] */
    /* JADX WARN: Type inference failed for: r0v61, types: [com.android.contacts.simcardmanage.SimCardReceiver$4] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(android.content.Context r7, android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 767
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.SimCardReceiver.a(android.content.Context, android.content.Intent):void");
    }

    private void b(Context context, int i, long j) {
        if (b.a(context, i)) {
            Intent intent = new Intent(context, ReadIccProviderService.class);
            intent.setAction("android.intent.action.ASUS_READ_ICC_PROVIDER_SERVICE");
            intent.putExtra("sim_index", i);
            intent.putExtra("sim_sub_id", j);
            context.startService(intent);
            this.f2135a.b(i, true);
            c.a(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v134, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [com.android.contacts.simcardmanage.SimCardReceiver$3] */
    /* JADX WARN: Type inference failed for: r0v77, types: [com.android.contacts.simcardmanage.SimCardReceiver$1] */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v20 */
    /* JADX WARN: Type inference failed for: r13v21 */
    /* JADX WARN: Type inference failed for: r13v22 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v27 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Unknown variable types count: 6 */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onReceive(final android.content.Context r7, android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 1348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.SimCardReceiver.onReceive(android.content.Context, android.content.Intent):void");
    }
}
