package com.android.contacts.group;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.contacts.activities.ContactEditorSetPrimaryCallActivity;
import com.android.contacts.list.e;
import com.android.contacts.model.account.a;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.updatesdk.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/contacts/group/f.class */
public class f {
    private static int d = 6;

    /* renamed from: a  reason: collision with root package name */
    public static final String f1417a = f.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public static final String[] f1418b = {"Coworkers", "Family", "Friends", "Favorites", "Frequent", "Emergency contacts", "Starred in Android"};
    public static final int[] c = {2131755667, 2131755668, 2131755671, 2131755669, 2131755670, 2131755607, 2131755669};

    private f() {
    }

    public static int a() {
        if (PhoneCapabilityTester.isATTSku()) {
            d = 5;
        } else {
            d = 6;
        }
        return d;
    }

    public static View a(Context context) {
        return ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427582, (ViewGroup) null);
    }

    public static String a(Context context, String str) {
        String str2 = str;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            if (context == null) {
                str2 = str;
            } else {
                int length = f1418b.length;
                int i = 0;
                while (true) {
                    str2 = str;
                    if (i >= length) {
                        break;
                    } else if (f1418b[i].equals(str)) {
                        str2 = context.getResources().getString(c[i]);
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        return str2;
    }

    private static ArrayList<Long> a(Context context, long j) {
        Cursor cursor;
        Throwable th;
        ArrayList<Long> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(String.valueOf(j));
        try {
            Cursor query = context.getContentResolver().query(ContactsContract.RawContacts.CONTENT_URI, new String[]{"_id"}, "contact_id=?", (String[]) arrayList2.toArray(new String[arrayList2.size()]), null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        int count = query.getCount();
                        for (int i = 0; i < count; i++) {
                            query.moveToPosition(i);
                            arrayList.add(Long.valueOf(query.getLong(0)));
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    private static ArrayList<Long> a(Context context, ArrayList<Long> arrayList) {
        boolean z;
        Cursor cursor;
        Throwable th;
        ArrayList<Long> arrayList2 = new ArrayList<>();
        arrayList.size();
        Iterator<Long> it = arrayList.iterator();
        while (it.hasNext()) {
            Long next = it.next();
            Iterator<Long> it2 = a(context, next.longValue()).iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = true;
                    break;
                }
                Long next2 = it2.next();
                ContentResolver contentResolver = context.getContentResolver();
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add("vnd.android.cursor.item/phone_v2");
                arrayList3.add(String.valueOf(next2));
                try {
                    cursor = contentResolver.query(ContactsContract.Data.CONTENT_URI, new String[]{"_id", "is_primary", CoverUtils.CoverData.COVER_URI}, "mimetype=? AND raw_contact_id=?", (String[]) arrayList3.toArray(new String[arrayList3.size()]), null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                int count = cursor.getCount();
                                for (int i = 0; i < count; i++) {
                                    cursor.moveToPosition(i);
                                    if ("1".equals(cursor.getString(1))) {
                                        if (cursor != null) {
                                            cursor.close();
                                            z = false;
                                        } else {
                                            z = false;
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                }
            }
            if (z) {
                arrayList2.add(next);
            }
        }
        return arrayList2;
    }

    private static ArrayList<g> a(ArrayList<g> arrayList) {
        ArrayList<g> arrayList2 = new ArrayList<>();
        Iterator<g> it = arrayList.iterator();
        while (it.hasNext()) {
            g next = it.next();
            if (c(next.f)) {
                if (arrayList2.size() == 0) {
                    arrayList2.add(0, next);
                } else {
                    arrayList2.add(1, next);
                }
                it.remove();
            } else if (b(next.f)) {
                arrayList2.add(0, next);
                it.remove();
            }
        }
        arrayList2.addAll(arrayList);
        return arrayList2;
    }

    public static void a(Context context, View view, String str, String str2) {
        a a2 = com.android.contacts.model.a.a(context).a(str, str2);
        TextView textView = (TextView) view.findViewById(16908310);
        if (textView == null) {
            throw new IllegalStateException("Group source view must contain a TextView with idandroid.R.id.label");
        }
        textView.setText(a2.c(context));
        ImageView imageView = (ImageView) view.findViewById(16908294);
        if (imageView == null) {
            throw new IllegalStateException("Group source view must contain an ImageView with idandroid.R.id.icon");
        }
        imageView.setImageDrawable(a2.d(context));
    }

    public static boolean a(com.android.contacts.list.f fVar) {
        ArrayList<Long> arrayList;
        boolean z = false;
        ArrayList arrayList2 = new ArrayList();
        e eVar = (e) fVar.t;
        if (eVar.g.size() > 0) {
            for (Map.Entry<Uri, Integer> entry : eVar.g.entrySet()) {
                if (entry.getValue().intValue() == 1) {
                    arrayList2.add(entry.getKey());
                }
            }
        }
        if (a(fVar.f)) {
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(Long.valueOf(ContentUris.parseId((Uri) it.next())));
            }
            arrayList = a(fVar.getActivity(), arrayList3);
        } else {
            arrayList = null;
        }
        if (arrayList == null || arrayList.size() == 0) {
            z = true;
        } else {
            long[] jArr = new long[arrayList.size()];
            for (int i = 0; i < jArr.length; i++) {
                jArr[i] = arrayList.get(i).longValue();
            }
            Intent intent = new Intent(fVar.getActivity(), ContactEditorSetPrimaryCallActivity.class);
            intent.putExtra(ContactEditorSetPrimaryCallActivity.NO_PRIMARY_LIST, jArr);
            fVar.startActivityForResult(intent, 1);
        }
        return z;
    }

    public static boolean a(String str) {
        return f1418b[5].equals(str);
    }

    public static String b() {
        return f1418b[5];
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x014d A[Catch: Exception -> 0x020c, LOOP:1: B:42:0x0143->B:44:0x014d, LOOP_END, TRY_LEAVE, TryCatch #1 {Exception -> 0x020c, blocks: (B:40:0x0130, B:42:0x0143, B:44:0x014d, B:64:0x01f5), top: B:69:0x0130 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.group.f.b(android.content.Context):void");
    }

    public static boolean b(String str) {
        return f1418b[4].equals(str);
    }

    public static String c() {
        return " (CASE WHEN data14 > 0 THEN 0 ELSE 1 END),CAST(data14 AS INTEGER), " + (PhoneCapabilityTester.IsUnbundled() ? "sort_key" : (!PhoneCapabilityTester.IsAsusDevice() || !Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) ? "phonebook_bucket, sort_key" : "display_name");
    }

    public static boolean c(String str) {
        return f1418b[3].equals(str);
    }

    public static String d() {
        String str = PhoneCapabilityTester.IsUnbundled() ? "sort_key" : (!PhoneCapabilityTester.IsAsusDevice() || !Locale.getDefault().equals(Locale.TRADITIONAL_CHINESE)) ? "phonebook_bucket, sort_key" : "display_name";
        String str2 = BuildConfig.FLAVOR;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            str2 = " (CASE WHEN order_favorite > 0 THEN 0 ELSE 1 END),CAST(order_favorite AS INTEGER),";
        }
        return str2 + str;
    }

    public static boolean d(String str) {
        return "VIP".equals(str);
    }
}
