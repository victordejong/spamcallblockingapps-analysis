package com.inmobi.commons.core.p514f;

import android.content.ContentValues;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
/* renamed from: com.inmobi.commons.core.f.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/f/b.class */
public final class C8378b {

    /* renamed from: a */
    public int f32571a;

    /* renamed from: b */
    public String f32572b;

    /* renamed from: c */
    public String f32573c;

    /* renamed from: d */
    public String f32574d;

    /* renamed from: e */
    public long f32575e;

    /* renamed from: f */
    public String f32576f;

    /* renamed from: g */
    public String f32577g;

    /* renamed from: h */
    public String f32578h;

    /* renamed from: i */
    public long f32579i;

    /* renamed from: j */
    public String f32580j;

    /* renamed from: k */
    public long f32581k = System.currentTimeMillis();

    public C8378b(String str, String str2, String str3, long j, String str4, String str5, String str6, String str7, long j2) {
        this.f32572b = str;
        this.f32573c = str2;
        this.f32574d = str3;
        this.f32575e = j;
        this.f32576f = str4;
        this.f32577g = str5;
        this.f32578h = str6;
        this.f32579i = j2;
        this.f32580j = str7;
    }

    /* renamed from: a */
    public static C8378b m5753a(ContentValues contentValues) {
        String asString = contentValues.getAsString("eventId");
        String asString2 = contentValues.getAsString("adMarkup");
        String asString3 = contentValues.getAsString("eventName");
        long longValue = contentValues.getAsLong("imPlid").longValue();
        String asString4 = contentValues.getAsString("impressionId");
        String asString5 = contentValues.getAsString("eventType");
        String asString6 = contentValues.getAsString("dNettypeRaw");
        long longValue2 = contentValues.getAsLong("ts").longValue();
        String asString7 = contentValues.getAsString("adtype");
        long longValue3 = contentValues.getAsLong(AvidJSONUtil.KEY_TIMESTAMP).longValue();
        C8378b bVar = new C8378b(asString, asString2, asString3, longValue, asString4, asString5, asString6, asString7, longValue2);
        bVar.f32581k = longValue3;
        bVar.f32571a = contentValues.getAsInteger("id").intValue();
        return bVar;
    }
}
