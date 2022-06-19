package com.huawei.hms.framework.network.grs.p087g;

import android.content.Context;
import android.net.Uri;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.p085e.C2311c;
import com.tenor.android.core.constant.ScreenDensity;
import java.util.concurrent.Callable;
/* renamed from: com.huawei.hms.framework.network.grs.g.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/a.class */
public class C2316a {

    /* renamed from: a */
    public C2321d f7411a;

    /* renamed from: b */
    private final String f7412b;

    /* renamed from: c */
    private final C2319c f7413c;

    /* renamed from: d */
    private final int f7414d;

    /* renamed from: e */
    private final Context f7415e;

    /* renamed from: f */
    private final String f7416f;

    /* renamed from: g */
    private final GrsBaseInfo f7417g;

    /* renamed from: h */
    private final C2311c f7418h;

    /* renamed from: com.huawei.hms.framework.network.grs.g.a$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/g/a$a.class */
    public enum EnumC2317a {
        GRSPOST,
        GRSGET,
        GRSDEFAULT
    }

    public C2316a(String str, int i, C2319c c2319c, Context context, String str2, GrsBaseInfo grsBaseInfo, C2311c c2311c) {
        this.f7412b = str;
        this.f7413c = c2319c;
        this.f7414d = i;
        this.f7415e = context;
        this.f7416f = str2;
        this.f7417g = grsBaseInfo;
        this.f7418h = c2311c;
    }

    /* renamed from: a */
    private String m37950a(String str) {
        return Uri.parse(str).getPath();
    }

    /* renamed from: h */
    private EnumC2317a m37943h() {
        if (this.f7412b.isEmpty()) {
            return EnumC2317a.GRSDEFAULT;
        }
        String m37950a = m37950a(this.f7412b);
        return m37950a.contains("1.0") ? EnumC2317a.GRSGET : m37950a.contains(ScreenDensity.SD_200) ? EnumC2317a.GRSPOST : EnumC2317a.GRSDEFAULT;
    }

    /* renamed from: a */
    public Context m37951a() {
        return this.f7415e;
    }

    /* renamed from: b */
    public C2319c m37949b() {
        return this.f7413c;
    }

    /* renamed from: c */
    public String m37948c() {
        return this.f7412b;
    }

    /* renamed from: d */
    public int m37947d() {
        return this.f7414d;
    }

    /* renamed from: e */
    public String m37946e() {
        return this.f7416f;
    }

    /* renamed from: f */
    public C2311c m37945f() {
        return this.f7418h;
    }

    /* renamed from: g */
    public Callable<C2321d> m37944g() {
        if (EnumC2317a.GRSDEFAULT.equals(m37943h())) {
            return null;
        }
        return EnumC2317a.GRSGET.equals(m37943h()) ? new f(this.f7412b, this.f7414d, this.f7413c, this.f7415e, this.f7416f, this.f7417g) : new g(this.f7412b, this.f7414d, this.f7413c, this.f7415e, this.f7416f, this.f7417g, this.f7418h);
    }
}
