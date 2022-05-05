package p459j.p460a.p582w0;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14108o4;
/* renamed from: j.a.w0.i4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/i4.class */
public class C14030i4 {

    /* renamed from: a */
    public static final Uri f31470a = Uri.parse("content://mms");

    /* renamed from: b */
    public static HashMap<String, Long> f31471b = null;

    /* renamed from: a */
    public static long m2749a(Context context, String str) {
        String l = C14108o4.m2474l(str);
        HashMap<String, Long> hashMap = f31471b;
        if (hashMap == null || !hashMap.containsKey(l)) {
            m2748a(context, false);
        } else {
            String str2 = "cacheSize=" + f31471b.size() + ", containsKey(" + l + ")=" + f31471b.containsKey(l);
        }
        HashMap<String, Long> hashMap2 = f31471b;
        return (hashMap2 == null || !hashMap2.containsKey(l)) ? 0L : f31471b.get(l).longValue();
    }

    /* renamed from: a */
    public static void m2748a(Context context, boolean z) {
        synchronized (C14030i4.class) {
            try {
                if (f31471b == null) {
                    f31471b = new HashMap<>();
                } else if (z) {
                    f31471b.clear();
                }
                if (C12810o.m5233l()) {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    Cursor query = context.getContentResolver().query(f31470a, new String[]{"_id", "thread_id", "msg_box"}, "(m_type=132 OR m_type=130 OR m_type=128) AND (thread_id > 0)", null, "_id ASC");
                    if (query != null) {
                        if (query.moveToFirst()) {
                            do {
                                hashMap.put(Long.valueOf(query.getLong(0)), Long.valueOf(query.getLong(1)));
                                hashMap2.put(Long.valueOf(query.getLong(0)), Integer.valueOf(query.getInt(2)));
                            } while (query.moveToNext());
                            query.close();
                        } else {
                            query.close();
                        }
                    }
                    if (hashMap.size() > 0) {
                        for (Map.Entry entry : hashMap.entrySet()) {
                            long longValue = ((Long) entry.getKey()).longValue();
                            long longValue2 = ((Long) entry.getValue()).longValue();
                            if (!f31471b.containsValue(Long.valueOf(longValue2))) {
                                Cursor query2 = context.getContentResolver().query(Uri.parse(String.format("content://mms/%d/addr", Long.valueOf(longValue))), new String[]{"address"}, "(type = ?)", new String[]{String.valueOf(((Integer) hashMap2.get(Long.valueOf(longValue))).intValue() == 1 ? 137 : 151)}, null);
                                String str = "";
                                if (query2 != null) {
                                    str = "";
                                    if (query2.moveToFirst()) {
                                        do {
                                            str = query2.getString(0);
                                            if (!C14108o4.m2496a(str, C14108o4.EnumC14110b.MESSAGE)) {
                                                break;
                                            }
                                        } while (query2.moveToNext());
                                    }
                                    query2.close();
                                }
                                if (!TextUtils.isEmpty(str)) {
                                    f31471b.put(C14108o4.m2474l(str), Long.valueOf(longValue2));
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
