package com.appnext.base.moments.p011a.p012a;

import com.appnext.base.p006a.p008b.C0477a;
import java.util.Date;
/* renamed from: com.appnext.base.moments.a.a.b */
/* loaded from: classes-dex2jar.jar:com/appnext/base/moments/a/a/b.class */
public final class C0484b extends C0477a {

    /* renamed from: cc */
    private String f1676cc;

    /* renamed from: cd */
    private String f1677cd;

    /* renamed from: ce */
    private String f1678ce;

    /* renamed from: cf */
    private Date f1679cf;
    private String mDataType;

    public C0484b(String str, String str2, String str3) {
        this(str, str, str2, null, str3);
    }

    public C0484b(String str, String str2, String str3, Date date, String str4) {
        this.f1676cc = str;
        this.f1677cd = str2;
        this.f1678ce = str3;
        this.f1679cf = date;
        this.mDataType = str4;
    }

    /* renamed from: U */
    public final String m42549U() {
        return this.f1676cc;
    }

    /* renamed from: V */
    public final String m42548V() {
        return this.f1678ce;
    }

    /* renamed from: W */
    public final Date m42547W() {
        return this.f1679cf;
    }

    /* renamed from: X */
    public final String m42546X() {
        return this.mDataType;
    }

    public final String getType() {
        return this.f1677cd;
    }
}
