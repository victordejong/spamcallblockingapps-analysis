package com.asus.contacts.b;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/b/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2587a = c.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public static HashMap<String, Integer> f2588b;

    static {
        HashMap<String, Integer> hashMap = new HashMap<>();
        f2588b = hashMap;
        hashMap.put("key_private_contacts", 1);
    }

    public static boolean a(Context context, String str) {
        boolean z;
        try {
            Integer num = f2588b.get(str);
            Integer num2 = num;
            if (num == null) {
                num2 = 0;
            }
            SharedPreferences.Editor edit = context.getSharedPreferences("newFeatureData", 0).edit();
            edit.putInt("key_private_contacts", num2.intValue());
            edit.commit();
            z = true;
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    public static boolean b(Context context, String str) {
        boolean z = false;
        int i = context != null ? context.getSharedPreferences("newFeatureData", 0).getInt(str, 0) : 0;
        Integer num = f2588b.get(str);
        Integer num2 = num;
        if (num == null) {
            num2 = 0;
        }
        if (num2.intValue() > Integer.valueOf(i).intValue()) {
            z = true;
        }
        return z;
    }
}
