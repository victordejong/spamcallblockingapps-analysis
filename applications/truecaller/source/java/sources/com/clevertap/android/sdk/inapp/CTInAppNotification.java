package com.clevertap.android.sdk.inapp;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.LruCache;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1485h.p1486a.p1493c.p1501q0.EnumC22809z;
import p193e.p1485h.p1486a.p1493c.p1511z0.C22899c;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inapp/CTInAppNotification.class */
public class CTInAppNotification implements Parcelable {
    public static final Parcelable.Creator<CTInAppNotification> CREATOR = new C0880a();

    /* renamed from: A */
    public String f2315A;

    /* renamed from: B */
    public String f2316B;

    /* renamed from: C */
    public char f2317C;

    /* renamed from: D */
    public boolean f2318D;

    /* renamed from: E */
    public long f2319E;

    /* renamed from: J */
    public String f2320J;

    /* renamed from: K */
    public String f2321K;

    /* renamed from: L */
    public int f2322L;

    /* renamed from: M */
    public int f2323M;

    /* renamed from: N */
    public String f2324N;

    /* renamed from: O */
    public boolean f2325O;

    /* renamed from: P */
    public int f2326P;

    /* renamed from: Q */
    public int f2327Q;

    /* renamed from: a */
    public AbstractC0881b f2328a;

    /* renamed from: b */
    public String f2329b;

    /* renamed from: c */
    public JSONObject f2330c;

    /* renamed from: d */
    public String f2331d;

    /* renamed from: e */
    public int f2332e;

    /* renamed from: f */
    public ArrayList<CTInAppNotificationButton> f2333f;

    /* renamed from: g */
    public String f2334g;

    /* renamed from: h */
    public JSONObject f2335h;

    /* renamed from: i */
    public String f2336i;

    /* renamed from: j */
    public boolean f2337j;

    /* renamed from: k */
    public String f2338k;

    /* renamed from: l */
    public boolean f2339l;

    /* renamed from: m */
    public int f2340m;

    /* renamed from: n */
    public int f2341n;

    /* renamed from: o */
    public boolean f2342o;

    /* renamed from: p */
    public String f2343p;

    /* renamed from: q */
    public String f2344q;

    /* renamed from: r */
    public EnumC22809z f2345r;

    /* renamed from: s */
    public boolean f2346s;

    /* renamed from: t */
    public boolean f2347t;

    /* renamed from: u */
    public boolean f2348u;

    /* renamed from: v */
    public boolean f2349v;

    /* renamed from: w */
    public JSONObject f2350w;

    /* renamed from: x */
    public String f2351x;

    /* renamed from: y */
    public int f2352y;

    /* renamed from: z */
    public ArrayList<CTInAppNotificationMedia> f2353z;

    /* renamed from: com.clevertap.android.sdk.inapp.CTInAppNotification$a */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inapp/CTInAppNotification$a.class */
    public class C0880a implements Parcelable.Creator<CTInAppNotification> {
        @Override // android.os.Parcelable.Creator
        public CTInAppNotification createFromParcel(Parcel parcel) {
            return new CTInAppNotification(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        public CTInAppNotification[] newArray(int i) {
            return new CTInAppNotification[i];
        }
    }

    /* renamed from: com.clevertap.android.sdk.inapp.CTInAppNotification$b */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inapp/CTInAppNotification$b.class */
    public interface AbstractC0881b {
        /* renamed from: a */
        void mo7764a(CTInAppNotification cTInAppNotification);
    }

    /* renamed from: com.clevertap.android.sdk.inapp.CTInAppNotification$c */
    /* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/inapp/CTInAppNotification$c.class */
    public static class C0882c {

        /* renamed from: a */
        public static final int f2354a;

        /* renamed from: b */
        public static final int f2355b;

        /* renamed from: c */
        public static LruCache<String, byte[]> f2356c;

        static {
            int maxMemory = ((int) Runtime.getRuntime().maxMemory()) / 1024;
            f2354a = maxMemory;
            f2355b = Math.max(maxMemory / 32, 5120);
        }

        /* renamed from: a */
        public static int m42066a() {
            int size;
            synchronized (C0882c.class) {
                try {
                    LruCache<String, byte[]> lruCache = f2356c;
                    size = lruCache == null ? 0 : f2355b - lruCache.size();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return size;
        }

        /* renamed from: b */
        public static byte[] m42065b(String str) {
            byte[] bArr;
            synchronized (C0882c.class) {
                try {
                    LruCache<String, byte[]> lruCache = f2356c;
                    bArr = lruCache == null ? null : lruCache.get(str);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return bArr;
        }
    }

    public CTInAppNotification() {
        this.f2333f = new ArrayList<>();
        this.f2353z = new ArrayList<>();
    }

    public CTInAppNotification(Parcel parcel, C0880a c0880a) {
        this.f2333f = new ArrayList<>();
        this.f2353z = new ArrayList<>();
        try {
            this.f2344q = parcel.readString();
            this.f2334g = parcel.readString();
            this.f2345r = (EnumC22809z) parcel.readValue(EnumC22809z.class.getClassLoader());
            this.f2343p = parcel.readString();
            this.f2339l = parcel.readByte() != 0;
            this.f2318D = parcel.readByte() != 0;
            this.f2337j = parcel.readByte() != 0;
            this.f2352y = parcel.readInt();
            this.f2323M = parcel.readInt();
            this.f2322L = parcel.readInt();
            this.f2317C = ((Character) parcel.readValue(Character.TYPE.getClassLoader())).charValue();
            this.f2340m = parcel.readInt();
            this.f2341n = parcel.readInt();
            this.f2326P = parcel.readInt();
            this.f2327Q = parcel.readInt();
            this.f2350w = parcel.readByte() == 0 ? null : new JSONObject(parcel.readString());
            this.f2338k = parcel.readString();
            this.f2335h = parcel.readByte() == 0 ? null : new JSONObject(parcel.readString());
            this.f2330c = parcel.readByte() == 0 ? null : new JSONObject(parcel.readString());
            this.f2324N = parcel.readString();
            this.f2320J = parcel.readString();
            this.f2321K = parcel.readString();
            this.f2331d = parcel.readString();
            this.f2315A = parcel.readString();
            this.f2316B = parcel.readString();
            try {
                this.f2333f = parcel.createTypedArrayList(CTInAppNotificationButton.CREATOR);
            } catch (Throwable th) {
            }
            try {
                this.f2353z = parcel.createTypedArrayList(CTInAppNotificationMedia.CREATOR);
            } catch (Throwable th2) {
            }
            this.f2342o = parcel.readByte() != 0;
            this.f2332e = parcel.readInt();
            this.f2348u = parcel.readByte() != 0;
            this.f2336i = parcel.readString();
            this.f2349v = parcel.readByte() != 0;
            this.f2347t = parcel.readByte() != 0;
            this.f2346s = parcel.readByte() != 0;
            this.f2351x = parcel.readString();
            this.f2329b = parcel.readString();
            this.f2319E = parcel.readLong();
        } catch (JSONException e) {
        }
    }

    /* renamed from: b */
    public static Bundle m42072b(JSONObject jSONObject) {
        Bundle bundle = new Bundle();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                Object obj = jSONObject.get(next);
                if (obj instanceof String) {
                    bundle.putString(next, (String) obj);
                } else if (obj instanceof Character) {
                    bundle.putChar(next, ((Character) obj).charValue());
                } else if (obj instanceof Integer) {
                    bundle.putInt(next, ((Integer) obj).intValue());
                } else if (obj instanceof Float) {
                    bundle.putFloat(next, ((Float) obj).floatValue());
                } else if (obj instanceof Double) {
                    bundle.putDouble(next, ((Double) obj).doubleValue());
                } else if (obj instanceof Long) {
                    bundle.putLong(next, ((Long) obj).longValue());
                } else if (obj instanceof Boolean) {
                    bundle.putBoolean(next, ((Boolean) obj).booleanValue());
                } else if (obj instanceof JSONObject) {
                    bundle.putBundle(next, m42072b((JSONObject) obj));
                }
            } catch (JSONException e) {
            }
        }
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0257 A[Catch: JSONException -> 0x0400, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0298 A[Catch: JSONException -> 0x0400, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02d9 A[Catch: JSONException -> 0x0400, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x036b A[Catch: JSONException -> 0x0400, TRY_ENTER, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03c3 A[Catch: JSONException -> 0x0400, TRY_ENTER, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x014e A[Catch: JSONException -> 0x0400, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015a A[Catch: JSONException -> 0x0400, TRY_ENTER, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0173 A[Catch: JSONException -> 0x0400, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018c A[Catch: JSONException -> 0x0400, TRY_ENTER, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01dc A[Catch: JSONException -> 0x0400, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0400, blocks: (B:2:0x0000, B:5:0x0010, B:7:0x0021, B:9:0x0031, B:11:0x0042, B:13:0x005d, B:18:0x006f, B:21:0x0083, B:23:0x0092, B:25:0x009c, B:27:0x00a6, B:29:0x00b0, B:31:0x00ca, B:36:0x00db, B:38:0x00ea, B:40:0x00fb, B:42:0x010b, B:47:0x011f, B:49:0x012e, B:54:0x013f, B:56:0x014e, B:57:0x015a, B:59:0x0164, B:61:0x0173, B:65:0x018c, B:67:0x0197, B:69:0x01a9, B:71:0x01ba, B:73:0x01cc, B:75:0x01d3, B:77:0x01dc, B:82:0x01f3, B:84:0x01fe, B:86:0x0209, B:88:0x0212, B:90:0x021d, B:92:0x0228, B:94:0x022e, B:96:0x0237, B:101:0x0248, B:103:0x0257, B:107:0x026b, B:109:0x0284, B:111:0x028f, B:113:0x0298, B:117:0x02ac, B:119:0x02c5, B:121:0x02d0, B:123:0x02d9, B:128:0x02ed, B:130:0x02f6, B:132:0x0314, B:133:0x0328, B:134:0x032e, B:135:0x0335, B:137:0x036b, B:139:0x0375, B:141:0x0380, B:143:0x0388, B:145:0x039a, B:147:0x03a1, B:149:0x03a8, B:152:0x03b0, B:153:0x03b9, B:154:0x03c3, B:156:0x03cc, B:158:0x03d4, B:160:0x03e7, B:162:0x03ef, B:165:0x03f9), top: B:169:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f0  */
    /* JADX WARN: Type inference failed for: r0v172, types: [long] */
    /* JADX WARN: Type inference failed for: r0v174, types: [long] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42073a(org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.clevertap.android.sdk.inapp.CTInAppNotification.m42073a(org.json.JSONObject):void");
    }

    /* renamed from: c */
    public byte[] m42071c(CTInAppNotificationMedia cTInAppNotificationMedia) {
        return C0882c.m42065b(cTInAppNotificationMedia.f2367b);
    }

    /* renamed from: d */
    public Bitmap m42070d(CTInAppNotificationMedia cTInAppNotificationMedia) {
        Bitmap bitmap;
        String str = cTInAppNotificationMedia.f2367b;
        int i = C22899c.f63562a;
        synchronized (C22899c.class) {
            bitmap = null;
            try {
                if (str != null) {
                    LruCache<String, Bitmap> lruCache = C22899c.f63564c;
                    if (lruCache != null) {
                        bitmap = lruCache.get(str);
                    }
                } else {
                    bitmap = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return bitmap;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public CTInAppNotificationMedia m42069e(int i) {
        CTInAppNotificationMedia cTInAppNotificationMedia;
        Iterator<CTInAppNotificationMedia> it = this.f2353z.iterator();
        while (true) {
            if (!it.hasNext()) {
                cTInAppNotificationMedia = null;
                break;
            }
            cTInAppNotificationMedia = it.next();
            if (i == cTInAppNotificationMedia.f2366a) {
                break;
            }
        }
        return cTInAppNotificationMedia;
    }

    /* renamed from: f */
    public final boolean m42068f(Bundle bundle, String str, Class<?> cls) {
        return bundle.containsKey(str) && bundle.get(str).getClass().equals(cls);
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x00e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00da  */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m42067g(org.json.JSONObject r6) {
        /*
            Method dump skipped, instructions count: 1004
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.clevertap.android.sdk.inapp.CTInAppNotification.m42067g(org.json.JSONObject):void");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2344q);
        parcel.writeString(this.f2334g);
        parcel.writeValue(this.f2345r);
        parcel.writeString(this.f2343p);
        parcel.writeByte(this.f2339l ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2318D ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2337j ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f2352y);
        parcel.writeInt(this.f2323M);
        parcel.writeInt(this.f2322L);
        parcel.writeValue(Character.valueOf(this.f2317C));
        parcel.writeInt(this.f2340m);
        parcel.writeInt(this.f2341n);
        parcel.writeInt(this.f2326P);
        parcel.writeInt(this.f2327Q);
        if (this.f2350w == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.f2350w.toString());
        }
        parcel.writeString(this.f2338k);
        if (this.f2335h == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.f2335h.toString());
        }
        if (this.f2330c == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.f2330c.toString());
        }
        parcel.writeString(this.f2324N);
        parcel.writeString(this.f2320J);
        parcel.writeString(this.f2321K);
        parcel.writeString(this.f2331d);
        parcel.writeString(this.f2315A);
        parcel.writeString(this.f2316B);
        parcel.writeTypedList(this.f2333f);
        parcel.writeTypedList(this.f2353z);
        parcel.writeByte(this.f2342o ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f2332e);
        parcel.writeByte(this.f2348u ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f2336i);
        parcel.writeByte(this.f2349v ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2347t ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f2346s ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f2351x);
        parcel.writeString(this.f2329b);
        parcel.writeLong(this.f2319E);
    }
}
