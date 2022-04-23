package com.phone.libphone;

import com.callerid.block.main.EZCallApplication;
/* renamed from: com.phone.libphone.k */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/k.class */
public class C2805k {

    /* renamed from: a */
    public static final String f11645a;

    /* renamed from: b */
    static final String f11646b;

    /* renamed from: c */
    static final String f11647c;

    /* renamed from: d */
    static final String f11648d;

    static {
        String path = EZCallApplication.m10163c().getFilesDir().getPath();
        f11645a = path;
        String str = EZCallApplication.m10163c().getExternalFilesDir("") + "/offlinedatavest.zip";
        f11646b = path + "/phonenumbers/PhoneNumberMetadataProto";
        String str2 = path + "/phonenumbers/SingleFilePhoneNumberMetadataProto";
        String str3 = path + "/phonenumbers/PhoneNumberAlternateFormatsProto";
        String str4 = path + "/phonenumbers/ShortNumberMetadataProto";
        f11647c = path + "/carrier/";
        f11648d = path + "/geocoding/";
        String str5 = path + "/office.zip";
    }
}
