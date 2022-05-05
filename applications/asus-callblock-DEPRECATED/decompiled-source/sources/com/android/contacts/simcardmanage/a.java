package com.android.contacts.simcardmanage;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.preference.PreferenceManager;
import android.telecom.PhoneAccountHandle;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2151a = a.class.getSimpleName();

    public static int a(long j) {
        Object obj;
        boolean z = true;
        try {
            obj = SubscriptionManager.class.getMethod("getSlotId", Integer.TYPE).invoke(null, Integer.valueOf((int) j));
        } catch (NoSuchMethodException e) {
            Log.e(f2151a, "Method getSlotId(int subId) not exist.");
            try {
                obj = SubscriptionManager.class.getMethod("getSlotId", Long.TYPE).invoke(null, Long.valueOf(j));
            } catch (NoSuchMethodException e2) {
                Log.e(f2151a, "Method getSlotId(long subId) not exist.");
                z = false;
                obj = null;
            } catch (Exception e3) {
                Log.e(f2151a, e3.toString());
                z = false;
                obj = null;
            }
        } catch (Exception e4) {
            Log.e(f2151a, e4.toString());
            z = false;
            obj = null;
        }
        return z ? ((Integer) obj).intValue() : 0;
    }

    public static int a(Cursor cursor) {
        return a(cursor.getString(cursor.getColumnIndex("subscription_component_name")), cursor.getString(cursor.getColumnIndex("subscription_id")));
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
        if (java.lang.String.valueOf(r0).equals(java.lang.String.valueOf(com.android.contacts.simcardmanage.b.a(2))) == false) goto L_0x0063;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x008d, code lost:
        if ("-1".equals(com.android.contacts.simcardmanage.b.b(com.android.contacts.ContactsApplication.b().getApplicationContext(), 2)) != false) goto L_0x0028;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.telecom.PhoneAccountHandle r4) {
        /*
            r0 = 1
            r5 = r0
            java.lang.String r0 = "-1"
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0010
            r0 = r4
            java.lang.String r0 = r0.getId()     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            r7 = r0
        L_0x0010:
            r0 = r7
            r6 = r0
            r0 = r7
            java.lang.String r1 = "E"
            boolean r0 = r0.equals(r1)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            if (r0 == 0) goto L_0x002a
            r0 = r7
            r6 = r0
            java.lang.String r0 = com.android.contacts.simcardmanage.a.f2151a     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            java.lang.String r1 = "getSlotIdFromPhoneAccountHandle sub id is E"
            int r0 = android.util.Log.e(r0, r1)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            r0 = -1
            r5 = r0
        L_0x0028:
            r0 = r5
            return r0
        L_0x002a:
            r0 = r7
            r6 = r0
            r0 = r7
            long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            r8 = r0
            r0 = r7
            r6 = r0
            r0 = r8
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            r1 = 1
            java.lang.Object r1 = com.android.contacts.simcardmanage.b.a(r1)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            boolean r0 = r0.equals(r1)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            if (r0 == 0) goto L_0x004b
            r0 = 0
            r5 = r0
            goto L_0x0028
        L_0x004b:
            r0 = r7
            r6 = r0
            r0 = r8
            java.lang.String r0 = java.lang.String.valueOf(r0)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            r1 = 2
            java.lang.Object r1 = com.android.contacts.simcardmanage.b.a(r1)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            boolean r0 = r0.equals(r1)     // Catch: NumberFormatException -> 0x0068, Exception -> 0x0093
            r10 = r0
            r0 = r10
            if (r0 != 0) goto L_0x0028
        L_0x0063:
            r0 = -1
            r5 = r0
            goto L_0x0028
        L_0x0068:
            r4 = move-exception
            r0 = r6
            com.android.contacts.ContactsApplication r1 = com.android.contacts.ContactsApplication.b()
            android.content.Context r1 = r1.getApplicationContext()
            r2 = 1
            java.lang.String r1 = com.android.contacts.simcardmanage.b.b(r1, r2)
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007f
            r0 = 0
            r5 = r0
            goto L_0x0028
        L_0x007f:
            r0 = r6
            com.android.contacts.ContactsApplication r1 = com.android.contacts.ContactsApplication.b()
            android.content.Context r1 = r1.getApplicationContext()
            r2 = 2
            java.lang.String r1 = com.android.contacts.simcardmanage.b.b(r1, r2)
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0063
            goto L_0x0028
        L_0x0093:
            r4 = move-exception
            r0 = r4
            r0.printStackTrace()
            goto L_0x0063
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.simcardmanage.a.a(android.telecom.PhoneAccountHandle):int");
    }

    public static int a(String str, String str2) {
        int a2 = a((TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? null : new PhoneAccountHandle(ComponentName.unflattenFromString(str), str2));
        int i = 0;
        if (a2 == 0) {
            i = 1;
        } else if (a2 == 1) {
            i = 2;
        }
        return i;
    }

    public static PhoneAccountHandle a(Context context, int i) {
        return b.h(context, i);
    }

    public static boolean a(Context context, Cursor cursor) {
        boolean z;
        long j;
        boolean z2 = true;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if (defaultSharedPreferences.contains("SUBSCRIPTION_ID_TYPE")) {
            z = defaultSharedPreferences.getBoolean("SUBSCRIPTION_ID_TYPE", false);
            Log.d(f2151a, "[checkSubscriptionIdFormat] preference exists, SUBSCRIPTION_ID_TYPE = " + z);
        } else {
            z = false;
            if (cursor != null) {
                z = false;
                if (cursor.getCount() > 0) {
                    z = false;
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(cursor.getColumnIndex("subscription_id"));
                        Log.d(f2151a, "[checkSubscriptionIdFormat] accountId = " + string);
                        z = false;
                        try {
                            if (string != null) {
                                try {
                                    if (string.equals("E")) {
                                        Log.e(f2151a, "[checkSubscriptionIdFormat] subId is E");
                                        j = -1;
                                    } else {
                                        j = Long.parseLong(string);
                                    }
                                    defaultSharedPreferences.edit().putBoolean("SUBSCRIPTION_ID_TYPE", j == -1).apply();
                                } catch (NumberFormatException e) {
                                    Log.e(f2151a, "[checkSubscriptionIdFormat] NumberFormatException occurred");
                                    defaultSharedPreferences.edit().putBoolean("SUBSCRIPTION_ID_TYPE", -1 == -1).apply();
                                    j = -1;
                                }
                                z = false;
                                if (j == -1) {
                                    z = true;
                                }
                            }
                        } catch (Throwable th) {
                            SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                            if (-1 != -1) {
                                z2 = false;
                            }
                            edit.putBoolean("SUBSCRIPTION_ID_TYPE", z2).apply();
                            throw th;
                        }
                    }
                }
            }
        }
        return z;
    }
}
