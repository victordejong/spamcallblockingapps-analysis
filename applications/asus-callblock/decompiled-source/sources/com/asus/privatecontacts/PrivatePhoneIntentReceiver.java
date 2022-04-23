package com.asus.privatecontacts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.telephony.PhoneStateListener;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.privatecontacts.b.b;
import com.asus.privatecontacts.b.e;
import com.asus.privatecontacts.b.f;
import com.asus.privatecontacts.provider.c;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivatePhoneIntentReceiver.class */
public class PrivatePhoneIntentReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2980a = PrivatePhoneIntentReceiver.class.getSimpleName();

    /* loaded from: classes-dex2jar.jar:com/asus/privatecontacts/PrivatePhoneIntentReceiver$a.class */
    final class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private Context f2982b;

        public a(Context context) {
            this.f2982b = context;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            f.a();
            Context context = this.f2982b;
            if (context == null) {
                Log.e(f.f3007a, "Exit handleCallEnd() due to context is null!");
                return null;
            }
            ArrayList<String> d = c.d(context);
            ArrayList<String> arrayList = new ArrayList<>();
            ArrayList<String> arrayList2 = new ArrayList<>();
            Log.d(f.f3007a, "callList size: " + d.size());
            Iterator<String> it = d.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (f.a(context, next)) {
                    Log.d(f.f3007a, "Number: " + b.b(next) + " was added to privaye call list...");
                    arrayList.add(next);
                } else if (f.b(context, next)) {
                    Log.d(f.f3007a, "Number: " + b.b(next) + " was added to privaye sip list...");
                    arrayList2.add(next);
                } else {
                    Log.d(f.f3007a, "Number: " + b.b(next) + " doesn't belong to any private contact.");
                }
            }
            if (arrayList.size() > 0 || arrayList2.size() > 0) {
                Log.d(f.f3007a, "privateList size: " + arrayList.size() + ", privateSipList size: " + arrayList2.size());
                Iterator<String> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    f.a(context, it2.next(), false);
                }
                Iterator<String> it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    f.a(context, it3.next(), true);
                }
                Log.d(f.f3007a, "Start copying call logs to private database...");
                Intent intent = new Intent(context, PrivateContactsManager.class);
                intent.setAction("new_private_call_logs");
                intent.putStringArrayListExtra("phone_numbers", arrayList);
                intent.putStringArrayListExtra("sip_numbers", arrayList2);
                context.startService(intent);
            } else {
                Log.d(f.f3007a, "privateList or privateSipList is empty");
            }
            Log.d(f.f3007a, "<<< handleCallEnd");
            return null;
        }
    }

    private static void a(Context context) {
        try {
            int b2 = com.android.contacts.simcardmanage.b.b(context);
            for (int i = 0; i < b2; i++) {
                long longValue = ((Number) com.android.contacts.simcardmanage.b.a(i + 1)).longValue();
                d dVar = new d(context, longValue);
                Log.d(f2980a, "Successfully registerd a phone state listener for subId: " + longValue);
                com.android.contacts.simcardmanage.b.a(context, (PhoneStateListener) dVar);
            }
        } catch (Exception e) {
            Log.e(f2980a, ">>> listen: Register phone state listener error!");
            e.printStackTrace();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0164 -> B:28:0x0114). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x0175 -> B:35:0x0158). Please submit an issue!!! */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            Log.d(f2980a, "<PrivatePhoneIntentReceiver> onReceive");
            if (context == null || intent == null) {
                Log.d(f2980a, "<PrivatePhoneIntentReceiver> context == null || intent == null");
            } else if (intent.getExtras() == null) {
                Log.d(f2980a, "<PrivatePhoneIntentReceiver> intent.getExtras() == null");
            } else {
                if ("android.intent.action.NEW_OUTGOING_CALL".equals(intent.getAction())) {
                    stringExtra = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
                    Log.d(f2980a, "NEW OUTGOING CALL");
                } else {
                    stringExtra = intent.getStringExtra("incoming_number");
                    Log.d(f2980a, "PHONE STATE");
                }
                String str = stringExtra;
                if (stringExtra != null) {
                    str = stringExtra;
                    if (!TextUtils.isEmpty(stringExtra)) {
                        str = e.a(stringExtra);
                        c.a(context, str);
                    }
                }
                Log.d(f2980a, "<PrivatePhoneIntentReceiver> Phone Number : " + b.b(str));
                if (Build.VERSION.SDK_INT >= 21) {
                    try {
                        Integer num = f.b().get(intent.getExtras().getString("state"));
                        if (num != null) {
                            int intValue = num.intValue();
                            Log.d(f2980a, "<onCallStateChanged> state: " + intValue + ", number: " + b.b(str));
                            switch (intValue) {
                                case 0:
                                    if (f.a().f3008b != intValue) {
                                        try {
                                            new a(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                                        } catch (Exception e) {
                                            Log.e(f2980a, "Failed to execute HandlePrivateCallLogAsyncTask");
                                            e.printStackTrace();
                                        }
                                    }
                                    f.a().f3008b = intValue;
                                    break;
                                case 1:
                                    if (f.a().f3008b == 0) {
                                    }
                                    f.a().f3008b = intValue;
                                    break;
                                case 2:
                                    Intent intent2 = new Intent("com.asus.privatecontacts.action.userleave");
                                    intent2.putExtra("key_user_leave", true);
                                    context.sendBroadcast(intent2);
                                    if (f.a().f3008b == 1) {
                                    }
                                    f.a().f3008b = intValue;
                                    break;
                                default:
                                    Log.e(f2980a, "Unexpeted phone state: " + intValue);
                                    break;
                            }
                        }
                    } catch (Exception e2) {
                        Log.e(f2980a, "Failed to get extra...");
                        e2.printStackTrace();
                    }
                } else {
                    a(context);
                }
                Log.d(f2980a, "End of PrivatePhoneIntentReceiver.onReceive()");
            }
        }
    }
}
