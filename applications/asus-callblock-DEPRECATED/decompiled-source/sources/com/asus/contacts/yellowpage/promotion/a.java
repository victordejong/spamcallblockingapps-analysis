package com.asus.contacts.yellowpage.promotion;

import android.app.AlarmManager;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.preference.PreferenceManager;
import android.support.v4.app.x;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.activities.RequestCameraPermissionsActivity;
import com.android.vcard.VCardConfig;
import com.asus.contacts.yellowpage.AsusBusinessListActivity;
import com.asus.contacts.yellowpage.s;
import com.asus.contacts.yellowpage.utils.b;
import com.asus.contacts.yellowpage.utils.c;
import com.asus.contacts.yellowpage.utils.d;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/promotion/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2852a = a.class.getSimpleName();

    public static int a(int[] iArr, int i) {
        int i2 = iArr[iArr.length - 1];
        int i3 = 0;
        while (true) {
            if (i3 >= iArr.length) {
                break;
            } else if (i == iArr[i3]) {
                i2 = i3 >= iArr.length - 1 ? iArr[0] : iArr[i3 + 1];
            } else {
                i3++;
            }
        }
        return i2;
    }

    public static void a(Context context) {
        Calendar instance = Calendar.getInstance();
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        new d();
        if (d.a(context)) {
            long d = d.d();
            Log.d(f2852a, "Set AlarmManager for lunch promote, start from:" + d.c()[0] + " (hour of day)");
            instance.setTimeInMillis(System.currentTimeMillis());
            instance.set(11, d.c()[0]);
            instance.set(12, d.c()[1]);
            Intent intent = new Intent(context, AsusYellowPagePromotionReceiver.class);
            intent.setAction("android.intent.action.YP_DAILY_PROMOTE_LUNCH");
            alarmManager.setInexactRepeating(0, instance.getTimeInMillis(), d, PendingIntent.getBroadcast(context, 1000, intent, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS));
        }
        new b();
        if (b.a(context)) {
            long d2 = d.d();
            Log.d(f2852a, "Set AlarmManager for coffee break promote, start from:" + b.c()[0] + " (hour of day)");
            instance.setTimeInMillis(System.currentTimeMillis());
            instance.set(11, b.c()[0]);
            instance.set(12, b.c()[1]);
            Intent intent2 = new Intent(context, AsusYellowPagePromotionReceiver.class);
            intent2.setAction("android.intent.action.YP_DAILY_PROMOTE_COFFEEBREAK");
            alarmManager.setInexactRepeating(0, instance.getTimeInMillis(), d2, PendingIntent.getBroadcast(context, RequestCameraPermissionsActivity.REQ_FROM_CONTACT_PHOTO_AND_GROUP_COVER, intent2, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS));
        }
        new e();
        if (e.a(context)) {
            ArrayList<Calendar> a2 = e.a();
            for (int i = 0; i < a2.size(); i++) {
                Calendar calendar = a2.get(i);
                Log.d(f2852a, "Set AlarmManager for Valentines Promote (Month:" + calendar.getDisplayName(2, 1, Locale.US) + ", Date:" + calendar.get(5) + ")");
                Intent intent3 = new Intent(context, AsusYellowPagePromotionReceiver.class);
                intent3.setAction("android.intent.action.YP_FESTIVAL_PROMOTE_VALENTINES");
                intent3.putExtra("EXTA_INDEX", i);
                alarmManager.set(0, calendar.getTimeInMillis(), PendingIntent.getBroadcast(context, i + 1002, intent3, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS));
            }
        }
    }

    public static void a(Context context, int i) {
        a(context, i, null);
    }

    public static void a(Context context, int i, String str) {
        boolean z;
        Log.d(f2852a, "Show notification type = " + i + ", option = " + str);
        switch (i) {
            case 0:
                x.d a2 = new x.d(context).a(2131165432);
                a2.g = BitmapFactory.decodeResource(context.getResources(), 2131165432);
                x.d b2 = a2.a(context.getResources().getString(2131756020)).b(context.getResources().getString(2131756016));
                TaskStackBuilder create = TaskStackBuilder.create(context);
                Intent intent = new Intent(context, AsusBusinessListActivity.class);
                intent.setAction("android.intent.action.SEARCH");
                intent.putExtra("query", context.getString(2131756019));
                intent.putExtra("extra_is_near_by", true);
                intent.putExtra("extra_is_promotion", true);
                intent.putExtra("extra_promotion_type", 0);
                create.addNextIntent(intent);
                b2.d = create.getPendingIntent(0, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS);
                ((NotificationManager) context.getSystemService("notification")).notify(2000, b2.b());
                b.a(context, "Promotion (Lunch Notify)", "Show promotion", (String) null);
                return;
            case 1:
                x.d a3 = new x.d(context).a(2131165432);
                a3.g = BitmapFactory.decodeResource(context.getResources(), 2131165432);
                x.d b3 = a3.a(context.getResources().getString(2131756015)).b(context.getResources().getString(2131756016));
                TaskStackBuilder create2 = TaskStackBuilder.create(context);
                Intent intent2 = new Intent(context, AsusBusinessListActivity.class);
                intent2.setAction("action.asus.yellowpage.search_by_category");
                intent2.putExtra("extra_category", context.getResources().getString(2131756014));
                intent2.putExtra("extra_parent_code", "99FC");
                intent2.putExtra("extra_is_near_by", true);
                intent2.putExtra("extra_is_promotion", true);
                intent2.putExtra("extra_promotion_type", 1);
                create2.addNextIntent(intent2);
                b3.d = create2.getPendingIntent(0, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS);
                ((NotificationManager) context.getSystemService("notification")).notify(2000, b3.b());
                b.a(context, "Promotion (Lunch Notify for cold weather)", "Show promotion", (String) null);
                return;
            case 2:
                x.d a4 = new x.d(context).a(2131165432);
                a4.g = BitmapFactory.decodeResource(context.getResources(), 2131165432);
                x.d b4 = a4.a(context.getResources().getString(2131756018)).b(context.getResources().getString(2131756016));
                TaskStackBuilder create3 = TaskStackBuilder.create(context);
                Intent intent3 = new Intent(context, AsusBusinessListActivity.class);
                intent3.setAction("android.intent.action.SEARCH");
                intent3.putExtra("query", context.getString(2131756017));
                intent3.putExtra("extra_is_near_by", true);
                intent3.putExtra("extra_is_promotion", true);
                intent3.putExtra("extra_promotion_type", 2);
                create3.addNextIntent(intent3);
                b4.d = create3.getPendingIntent(0, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS);
                ((NotificationManager) context.getSystemService("notification")).notify(2000, b4.b());
                b.a(context, "Promotion (Lunch Notify for hot weather)", "Show promotion", (String) null);
                return;
            case 3:
                x.d a5 = new x.d(context).a(2131165432);
                a5.g = BitmapFactory.decodeResource(context.getResources(), 2131165432);
                x.d b5 = a5.a(context.getResources().getString(2131756012)).b(context.getResources().getString(2131756016));
                TaskStackBuilder create4 = TaskStackBuilder.create(context);
                Intent intent4 = new Intent(context, AsusBusinessListActivity.class);
                intent4.setAction("android.intent.action.SEARCH");
                intent4.putExtra("query", context.getString(2131756010));
                intent4.putExtra("extra_is_near_by", true);
                intent4.putExtra("extra_is_promotion", true);
                intent4.putExtra("extra_promotion_type", 3);
                create4.addNextIntent(intent4);
                b5.d = create4.getPendingIntent(0, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS);
                ((NotificationManager) context.getSystemService("notification")).notify(2001, b5.b());
                b.a(context, "Promotion (Coffee break)", "Show promotion", (String) null);
                return;
            case 4:
                x.d a6 = new x.d(context).a(2131165432);
                a6.g = BitmapFactory.decodeResource(context.getResources(), 2131165432);
                x.d b6 = a6.a(context.getResources().getString(2131756013)).b(context.getResources().getString(2131756016));
                TaskStackBuilder create5 = TaskStackBuilder.create(context);
                Intent intent5 = new Intent(context, AsusBusinessListActivity.class);
                intent5.setAction("action.asus.yellowpage.search_by_category");
                intent5.putExtra("extra_category", context.getResources().getString(2131756011));
                intent5.putExtra("extra_parent_code", "99NC03");
                intent5.putExtra("extra_is_near_by", true);
                intent5.putExtra("extra_is_promotion", true);
                intent5.putExtra("extra_promotion_type", 4);
                create5.addNextIntent(intent5);
                b6.d = create5.getPendingIntent(0, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS);
                ((NotificationManager) context.getSystemService("notification")).notify(2001, b6.b());
                b.a(context, "Promotion (Coffee break)", "Show promotion", (String) null);
                return;
            case 5:
                if (TextUtils.isEmpty(str)) {
                    Log.e(f2852a, "Option is null or empty.");
                    return;
                }
                int parseInt = Integer.parseInt(str);
                new e();
                if (System.currentTimeMillis() - e.a().get(parseInt).getTimeInMillis() < 36000000) {
                    Log.d(e.f2855a, "in time for " + parseInt);
                    z = true;
                } else {
                    Log.d(e.f2855a, "not in time for " + parseInt);
                    z = false;
                }
                if (z) {
                    int b7 = e.b();
                    Log.d(e.f2855a, "ValentinesPromotion getNotificationBuilder with index = " + parseInt + ", random number = " + b7);
                    x.d a7 = new x.d(context).a(2131165432);
                    a7.g = BitmapFactory.decodeResource(context.getResources(), 2131165432);
                    x.d b8 = a7.b(context.getResources().getString(2131756016));
                    TaskStackBuilder create6 = TaskStackBuilder.create(context);
                    Intent intent6 = new Intent(context, AsusBusinessListActivity.class);
                    switch (parseInt) {
                        case 0:
                            intent6.setAction("action.asus.yellowpage.search_by_category");
                            if (b7 % 2 == 0) {
                                b8.a(context.getResources().getString(2131756028));
                                intent6.putExtra("extra_category", context.getResources().getString(2131756023));
                                intent6.putExtra("extra_parent_code", context.getResources().getString(2131756021));
                            } else {
                                b8.a(context.getResources().getString(2131756034));
                                intent6.putExtra("extra_category", context.getResources().getString(2131756024));
                                intent6.putExtra("extra_parent_code", context.getResources().getString(2131756022));
                            }
                            intent6.putExtra("extra_is_near_by", false);
                            intent6.putExtra("extra_is_promotion", true);
                            intent6.putExtra("extra_promotion_type", 5);
                            break;
                        case 1:
                            if (b7 % 6 == 0) {
                                b8.a(context.getResources().getString(2131756035));
                                intent6.setAction("android.intent.action.SEARCH");
                                intent6.putExtra("query", context.getString(2131756025));
                            } else if (b7 % 6 == 1) {
                                b8.a(context.getResources().getString(2131756036));
                                intent6.setAction("android.intent.action.SEARCH");
                                intent6.putExtra("query", context.getString(2131756025));
                            } else if (b7 % 6 == 2) {
                                b8.a(context.getResources().getString(2131756037));
                                intent6.setAction("android.intent.action.SEARCH");
                                intent6.putExtra("query", context.getString(2131756026));
                            } else if (b7 % 6 == 3) {
                                b8.a(context.getResources().getString(2131756038));
                                intent6.setAction("android.intent.action.SEARCH");
                                intent6.putExtra("query", context.getString(2131756027));
                            } else if (b7 % 6 == 4) {
                                b8.a(context.getResources().getString(2131756040));
                                intent6.setAction("action.asus.yellowpage.search_by_category");
                                intent6.putExtra("extra_category", context.getResources().getString(2131756023));
                                intent6.putExtra("extra_parent_code", context.getResources().getString(2131756021));
                            } else {
                                b8.a(context.getResources().getString(2131756041));
                                intent6.setAction("action.asus.yellowpage.search_by_category");
                                intent6.putExtra("extra_category", context.getResources().getString(2131756023));
                                intent6.putExtra("extra_parent_code", context.getResources().getString(2131756021));
                            }
                            intent6.putExtra("extra_is_near_by", false);
                            intent6.putExtra("extra_is_promotion", true);
                            intent6.putExtra("extra_promotion_type", 5);
                            break;
                        case 2:
                            if (b7 % 4 == 0) {
                                b8.a(context.getResources().getString(2131756029));
                                intent6.setAction("android.intent.action.SEARCH");
                                intent6.putExtra("query", context.getString(2131756025));
                            } else if (b7 % 4 == 1) {
                                b8.a(context.getResources().getString(2131756030));
                                intent6.setAction("android.intent.action.SEARCH");
                                intent6.putExtra("query", context.getString(2131756025));
                            } else if (b7 % 4 == 2) {
                                b8.a(context.getResources().getString(2131756031));
                                intent6.setAction("android.intent.action.SEARCH");
                                intent6.putExtra("query", context.getString(2131756025));
                            } else {
                                b8.a(context.getResources().getString(2131756032));
                                intent6.setAction("android.intent.action.SEARCH");
                                intent6.putExtra("query", context.getString(2131756027));
                            }
                            intent6.putExtra("extra_is_near_by", false);
                            intent6.putExtra("extra_is_promotion", true);
                            intent6.putExtra("extra_promotion_type", 5);
                            break;
                        case 3:
                            b8.a(context.getResources().getString(2131756033));
                            intent6.setAction("android.intent.action.SEARCH");
                            intent6.putExtra("query", context.getString(2131756027));
                            intent6.putExtra("extra_is_near_by", false);
                            intent6.putExtra("extra_is_promotion", true);
                            intent6.putExtra("extra_promotion_type", 5);
                            break;
                        default:
                            Log.e(e.f2855a, "ValentinesPromotion Index not supported.");
                            break;
                    }
                    create6.addNextIntent(intent6);
                    b8.d = create6.getPendingIntent(0, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS);
                    ((NotificationManager) context.getSystemService("notification")).notify(2002, b8.b());
                    b.a(context, "Promotion (Valentines day)", "Show promotion", (String) null);
                    return;
                }
                return;
            default:
                Log.e(f2852a, "Show notification type not supported");
                return;
        }
    }

    public static void a(Context context, String str) {
        Log.d(f2852a, "Init promotion task");
        if (str.equalsIgnoreCase("1")) {
            if (c.a(context, "key_category_table_version") == -1) {
                Log.d(f2852a, "Start importing data");
                d.a(context, "FromAssets", new ArrayList());
            }
            a(context);
            return;
        }
        b(context);
    }

    public static boolean a() {
        String a2 = s.a("debug.yp_promotion");
        return !TextUtils.isEmpty(a2) && a2.equals("1");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
        if (r6.before(r5[1]) != false) goto L_0x005f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.util.Date[] r5, java.util.Date r6) {
        /*
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = 0
            r0 = r0[r1]
            if (r0 == 0) goto L_0x0079
            r0 = r5
            r1 = 1
            r0 = r0[r1]
            if (r0 == 0) goto L_0x0079
            r0 = r6
            if (r0 == 0) goto L_0x0079
            java.lang.String r0 = com.asus.contacts.yellowpage.promotion.a.f2852a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "isInTimeInterval : "
            r2.<init>(r3)
            r2 = r5
            r3 = 0
            r2 = r2[r3]
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = ", "
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r5
            r3 = 1
            r2 = r2[r3]
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = ", "
            java.lang.StringBuilder r1 = r1.append(r2)
            r2 = r6
            java.lang.String r2 = r2.toString()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = r6
            r1 = r5
            r2 = 0
            r1 = r1[r2]
            boolean r0 = r0.after(r1)
            if (r0 == 0) goto L_0x0079
            r0 = r6
            r1 = r5
            r2 = 1
            r1 = r1[r2]
            boolean r0 = r0.before(r1)
            if (r0 == 0) goto L_0x0079
        L_0x005f:
            java.lang.String r0 = com.asus.contacts.yellowpage.promotion.a.f2852a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = r1
            java.lang.String r3 = "isInTimeInterval result : "
            r2.<init>(r3)
            r2 = r7
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.d(r0, r1)
            r0 = r7
            return r0
        L_0x0079:
            r0 = 0
            r7 = r0
            goto L_0x005f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.contacts.yellowpage.promotion.a.a(java.util.Date[], java.util.Date):boolean");
    }

    public static String b() {
        String a2 = s.a("debug.yp_promotion_temperature");
        if (TextUtils.isEmpty(a2)) {
            a2 = BuildConfig.FLAVOR;
        }
        return a2;
    }

    public static void b(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        Log.d(f2852a, "Cancel AlarmManager for Lunch Promote");
        Intent intent = new Intent(context, AsusYellowPagePromotionReceiver.class);
        intent.setAction("android.intent.action.YP_DAILY_PROMOTE_LUNCH");
        alarmManager.cancel(PendingIntent.getBroadcast(context, 1000, intent, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS));
        Log.d(f2852a, "Cancel AlarmManager for Coffee Break Promote");
        Intent intent2 = new Intent(context, AsusYellowPagePromotionReceiver.class);
        intent2.setAction("android.intent.action.YP_DAILY_PROMOTE_COFFEEBREAK");
        alarmManager.cancel(PendingIntent.getBroadcast(context, RequestCameraPermissionsActivity.REQ_FROM_CONTACT_PHOTO_AND_GROUP_COVER, intent2, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS));
        new e();
        if (e.a(context)) {
            ArrayList<Calendar> a2 = e.a();
            for (int i = 0; i < a2.size(); i++) {
                Log.d(f2852a, "Cancel AlarmManager for Valentines Promote");
                Intent intent3 = new Intent(context, AsusYellowPagePromotionReceiver.class);
                intent3.setAction("android.intent.action.YP_FESTIVAL_PROMOTE_VALENTINES");
                intent3.putExtra("EXTA_INDEX", i);
                alarmManager.cancel(PendingIntent.getBroadcast(context, i + 1002, intent3, VCardConfig.FLAG_CONVERT_PHONETIC_NAME_STRINGS));
            }
        }
    }

    public static void b(Context context, int i) {
        Log.d(f2852a, "Dismiss notification type = " + i);
        switch (i) {
            case 0:
            case 1:
            case 2:
                ((NotificationManager) context.getSystemService("notification")).cancel(2000);
                return;
            case 3:
            case 4:
                ((NotificationManager) context.getSystemService("notification")).cancel(2001);
                return;
            case 5:
                ((NotificationManager) context.getSystemService("notification")).cancel(2002);
                return;
            default:
                Log.e(f2852a, "Dismiss notification type not supported");
                return;
        }
    }

    public static String c() {
        String a2 = s.a("debug.yp_promotion_randomnumber");
        if (TextUtils.isEmpty(a2)) {
            a2 = BuildConfig.FLAVOR;
        }
        return a2;
    }

    public static void c(Context context, int i) {
        Log.d(f2852a, "onUserClickPromotion type = " + i);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        switch (i) {
            case 0:
            case 1:
            case 2:
                new d();
                int i2 = d.b()[0];
                defaultSharedPreferences.edit().putInt("key_yellow_page_promote_lunch_next_interval", i2).apply();
                Log.d(f2852a, " Update next notification after " + i2 + " mins");
                return;
            case 3:
            case 4:
                new b();
                int i3 = b.b()[0];
                defaultSharedPreferences.edit().putInt("key_yellow_page_promote_coffeebreak_next_interval", i3).apply();
                Log.d(f2852a, "Update next notification after " + i3 + " mins");
                return;
            case 5:
                return;
            default:
                Log.e(f2852a, "onUserClickPromotion type not supported");
                return;
        }
    }
}
