package com.applovin.impl.mediation.debugger.p045ui.p046a;

import android.content.Context;
import android.text.SpannedString;
import android.text.TextUtils;
import com.applovin.impl.mediation.debugger.p041a.p042a.C1118a;
import com.applovin.impl.mediation.debugger.p041a.p042a.C1119b;
import com.applovin.impl.mediation.debugger.p041a.p042a.C1121d;
import com.applovin.impl.mediation.debugger.p045ui.p047b.p048a.C1156a;
import com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1176e;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.applovin.impl.mediation.debugger.ui.a.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/a/b.class */
public class C1139b extends AbstractView$OnClickListenerC1173d {

    /* renamed from: a */
    private final C1118a f4117a;

    /* renamed from: b */
    private final C1119b f4118b;

    /* renamed from: d */
    private final List<C1169c> f4119d = m6329c();

    /* renamed from: e */
    private final List<C1169c> f4120e = m6328d();

    /* renamed from: f */
    private final List<C1169c> f4121f = m6327e();

    /* renamed from: com.applovin.impl.mediation.debugger.ui.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/a/b$a.class */
    public class C1140a extends C1156a {

        /* renamed from: o */
        private final C1119b f4123o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1140a(C1119b c1119b, String str, boolean z) {
            super(c1119b.m6402a(), r7.f4262c);
            C1139b.this = r7;
            this.f4123o = c1119b;
            this.f4228d = StringUtils.createSpannedString(c1119b.m6400c(), -16777216, 18, 1);
            this.f4229e = !TextUtils.isEmpty(str) ? new SpannedString(str) : null;
            this.f4227c = z;
        }

        /* renamed from: a */
        public C1119b m6323a() {
            return this.f4123o;
        }

        @Override // com.applovin.impl.mediation.debugger.p045ui.p047b.p048a.C1156a, com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
        /* renamed from: b */
        public boolean mo6255b() {
            return this.f4227c;
        }

        @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c
        /* renamed from: c */
        public int mo6254c() {
            return -12303292;
        }
    }

    /* renamed from: com.applovin.impl.mediation.debugger.ui.a.b$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/a/b$b.class */
    public enum EnumC1141b {
        INFO,
        BIDDERS,
        WATERFALL,
        COUNT
    }

    public C1139b(C1118a c1118a, C1119b c1119b, Context context) {
        super(context);
        this.f4117a = c1118a;
        this.f4118b = c1119b;
        notifyDataSetChanged();
    }

    /* renamed from: c */
    private List<C1169c> m6329c() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(m6326f());
        arrayList.add(m6325g());
        if (this.f4118b != null) {
            arrayList.add(m6324h());
        }
        return arrayList;
    }

    /* renamed from: d */
    private List<C1169c> m6328d() {
        C1119b c1119b = this.f4118b;
        if (c1119b == null || c1119b.m6398e()) {
            List<C1119b> m6396a = this.f4117a.m6405e().m6396a();
            ArrayList arrayList = new ArrayList(m6396a.size());
            for (C1119b c1119b2 : m6396a) {
                C1119b c1119b3 = this.f4118b;
                if (c1119b3 == null || c1119b3.m6401b().equals(c1119b2.m6401b())) {
                    arrayList.add(new C1140a(c1119b2, c1119b2.m6399d() != null ? c1119b2.m6399d().m6392a() : "", this.f4118b == null));
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }

    /* renamed from: e */
    private List<C1169c> m6327e() {
        C1119b c1119b = this.f4118b;
        if (c1119b == null || !c1119b.m6398e()) {
            List<C1119b> m6394b = this.f4117a.m6405e().m6394b();
            ArrayList arrayList = new ArrayList(m6394b.size());
            for (C1119b c1119b2 : m6394b) {
                C1119b c1119b3 = this.f4118b;
                if (c1119b3 == null || c1119b3.m6401b().equals(c1119b2.m6401b())) {
                    arrayList.add(new C1140a(c1119b2, null, this.f4118b == null));
                    for (C1121d c1121d : c1119b2.m6397f()) {
                        arrayList.add(C1169c.m6243p().m6238a(c1121d.m6392a()).m6234b(c1121d.m6391b()).m6233b(true).m6242a());
                    }
                }
            }
            return arrayList;
        }
        return new ArrayList();
    }

    /* renamed from: f */
    private C1169c m6326f() {
        return C1169c.m6243p().m6238a("ID").m6234b(this.f4117a.m6410a()).m6242a();
    }

    /* renamed from: g */
    private C1169c m6325g() {
        return C1169c.m6243p().m6238a("Ad Format").m6234b(this.f4117a.m6407c()).m6242a();
    }

    /* renamed from: h */
    private C1169c m6324h() {
        return C1169c.m6243p().m6238a("Selected Network").m6234b(this.f4118b.m6400c()).m6242a();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: a */
    public int mo6218a(int i) {
        return (i == EnumC1141b.INFO.ordinal() ? this.f4119d : i == EnumC1141b.BIDDERS.ordinal() ? this.f4120e : this.f4121f).size();
    }

    /* renamed from: a */
    public String m6331a() {
        return this.f4117a.m6408b();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: b */
    public int mo6217b() {
        return EnumC1141b.COUNT.ordinal();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: b */
    public C1169c mo6216b(int i) {
        return i == EnumC1141b.INFO.ordinal() ? new C1176e("INFO") : i == EnumC1141b.BIDDERS.ordinal() ? new C1176e("BIDDERS") : new C1176e("WATERFALL");
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: c */
    public List<C1169c> mo6215c(int i) {
        return i == EnumC1141b.INFO.ordinal() ? this.f4119d : i == EnumC1141b.BIDDERS.ordinal() ? this.f4120e : this.f4121f;
    }
}
