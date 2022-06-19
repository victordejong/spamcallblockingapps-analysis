package com.applovin.impl.mediation.debugger.p045ui.p049c;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1122a;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1126c;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1127d;
import com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1176e;
import com.applovin.impl.sdk.utils.C1491f;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.sdk.C1583R;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.applovin.impl.mediation.debugger.ui.c.b */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/c/b.class */
public class C1165b extends AbstractView$OnClickListenerC1173d {

    /* renamed from: a */
    private final C1123b f4204a;

    /* renamed from: b */
    private List<C1169c> f4205b;

    /* renamed from: d */
    private final List<C1169c> f4206d;

    /* renamed from: e */
    private final List<C1169c> f4207e;

    /* renamed from: f */
    private final List<C1169c> f4208f;

    /* renamed from: g */
    private final List<C1169c> f4209g;

    /* renamed from: h */
    private SpannedString f4210h;

    /* renamed from: com.applovin.impl.mediation.debugger.ui.c.b$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/c/b$a.class */
    public enum EnumC1166a {
        INTEGRATIONS,
        PERMISSIONS,
        CONFIGURATION,
        DEPENDENCIES,
        TEST_ADS,
        COUNT
    }

    public C1165b(C1123b c1123b, Context context) {
        super(context);
        this.f4204a = c1123b;
        if (c1123b.m6386a() == C1123b.EnumC1124a.INVALID_INTEGRATION) {
            SpannableString spannableString = new SpannableString("Tap for more information");
            spannableString.setSpan(new AbsoluteSizeSpan(12, true), 0, spannableString.length(), 33);
            this.f4210h = new SpannedString(spannableString);
        } else {
            this.f4210h = new SpannedString("");
        }
        this.f4205b = m6268d();
        this.f4206d = m6274a(c1123b.m6364r());
        this.f4207e = m6275a(c1123b.m6362t());
        this.f4208f = m6272b(c1123b.m6363s());
        this.f4209g = m6263h();
        notifyDataSetChanged();
    }

    /* renamed from: a */
    private int m6273a(boolean z) {
        return z ? C1583R.C1585drawable.applovin_ic_check_mark_bordered : C1583R.C1585drawable.applovin_ic_x_mark;
    }

    /* renamed from: a */
    private C1169c m6276a(C1123b.EnumC1125b enumC1125b) {
        C1169c.C1171a m6243p = C1169c.m6243p();
        if (enumC1125b == C1123b.EnumC1125b.READY) {
            m6243p.m6240a(this.f4262c);
        }
        return m6243p.m6238a("Test Mode").m6234b(enumC1125b.m6355a()).m6236b(enumC1125b.m6354b()).m6230d(enumC1125b.m6353c()).m6237a(true).m6242a();
    }

    /* renamed from: a */
    private List<C1169c> m6275a(C1126c c1126c) {
        ArrayList arrayList = new ArrayList(1);
        if (c1126c.m6352a()) {
            boolean m6351b = c1126c.m6351b();
            arrayList.add(C1169c.m6256a(m6351b ? C1169c.EnumC1172b.RIGHT_DETAIL : C1169c.EnumC1172b.DETAIL).m6238a("Cleartext Traffic").m6235b(m6351b ? null : this.f4210h).m6230d(c1126c.m6350c()).m6241a(m6273a(m6351b)).m6232c(m6271b(m6351b)).m6237a(true ^ m6351b).m6242a());
        }
        return arrayList;
    }

    /* renamed from: a */
    private List<C1169c> m6274a(List<C1127d> list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            for (C1127d c1127d : list) {
                boolean m6347c = c1127d.m6347c();
                arrayList.add(C1169c.m6256a(m6347c ? C1169c.EnumC1172b.RIGHT_DETAIL : C1169c.EnumC1172b.DETAIL).m6238a(c1127d.m6349a()).m6235b(m6347c ? null : this.f4210h).m6230d(c1127d.m6348b()).m6241a(m6273a(m6347c)).m6232c(m6271b(m6347c)).m6237a(!m6347c).m6242a());
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private int m6271b(boolean z) {
        return C1491f.m5077a(z ? C1583R.C1584color.applovin_sdk_checkmarkColor : C1583R.C1584color.applovin_sdk_xmarkColor, this.f4262c);
    }

    /* renamed from: b */
    private List<C1169c> m6272b(List<C1122a> list) {
        ArrayList arrayList = new ArrayList(list.size());
        if (list.size() > 0) {
            for (C1122a c1122a : list) {
                boolean m6387c = c1122a.m6387c();
                arrayList.add(C1169c.m6256a(m6387c ? C1169c.EnumC1172b.RIGHT_DETAIL : C1169c.EnumC1172b.DETAIL).m6238a(c1122a.m6390a()).m6235b(m6387c ? null : this.f4210h).m6230d(c1122a.m6388b()).m6241a(m6273a(m6387c)).m6232c(m6271b(m6387c)).m6237a(!m6387c).m6242a());
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    private C1169c m6269c(List<String> list) {
        return C1169c.m6243p().m6238a("Region/VPN Required").m6234b(CollectionUtils.implode(list, ", ", list.size())).m6242a();
    }

    /* renamed from: d */
    private List<C1169c> m6268d() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(m6267e());
        arrayList.add(m6265f());
        arrayList.add(m6264g());
        return arrayList;
    }

    /* renamed from: e */
    private C1169c m6267e() {
        C1169c.C1171a m6234b = C1169c.m6243p().m6238a("SDK").m6234b(this.f4204a.m6372j());
        if (TextUtils.isEmpty(this.f4204a.m6372j())) {
            m6234b.m6241a(m6273a(this.f4204a.m6378d())).m6232c(m6271b(this.f4204a.m6378d()));
        }
        return m6234b.m6242a();
    }

    /* renamed from: e */
    private String m6266e(int i) {
        return (MaxAdapter.InitializationStatus.INITIALIZED_SUCCESS.getCode() == i || MaxAdapter.InitializationStatus.INITIALIZED_UNKNOWN.getCode() == i || MaxAdapter.InitializationStatus.DOES_NOT_APPLY.getCode() == i) ? "Initialized" : MaxAdapter.InitializationStatus.INITIALIZED_FAILURE.getCode() == i ? "Failure" : MaxAdapter.InitializationStatus.INITIALIZING.getCode() == i ? "Initializing..." : "Waiting to Initialize...";
    }

    /* renamed from: f */
    private C1169c m6265f() {
        C1169c.C1171a m6234b = C1169c.m6243p().m6238a("Adapter").m6234b(this.f4204a.m6371k());
        if (TextUtils.isEmpty(this.f4204a.m6371k())) {
            m6234b.m6241a(m6273a(this.f4204a.m6377e())).m6232c(m6271b(this.f4204a.m6377e()));
        }
        return m6234b.m6242a();
    }

    /* renamed from: g */
    private C1169c m6264g() {
        C1169c.C1171a m6234b;
        boolean z = false;
        if (this.f4204a.m6360v().m5540C().m6177b()) {
            m6234b = C1169c.m6243p().m6238a("Initialize with Activity Context").m6230d("Please ensure that you are initializing the AppLovin MAX SDK with an Activity Context.").m6241a(m6273a(false)).m6232c(m6271b(false));
            z = true;
        } else {
            m6234b = C1169c.m6243p().m6238a("Initialization Status").m6234b(m6266e(this.f4204a.m6380b()));
        }
        return m6234b.m6237a(z).m6242a();
    }

    /* renamed from: h */
    private List<C1169c> m6263h() {
        ArrayList arrayList = new ArrayList(3);
        if (StringUtils.isValidString(this.f4204a.m6361u())) {
            arrayList.add(C1169c.m6256a(C1169c.EnumC1172b.DETAIL).m6238a(this.f4204a.m6361u()).m6242a());
        }
        if (this.f4204a.m6379c() != C1123b.EnumC1125b.NOT_SUPPORTED) {
            if (this.f4204a.m6368n() != null) {
                arrayList.add(m6269c(this.f4204a.m6368n()));
            }
            arrayList.add(m6276a(this.f4204a.m6379c()));
        }
        return arrayList;
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: a */
    public int mo6218a(int i) {
        return (i == EnumC1166a.INTEGRATIONS.ordinal() ? this.f4205b : i == EnumC1166a.PERMISSIONS.ordinal() ? this.f4206d : i == EnumC1166a.CONFIGURATION.ordinal() ? this.f4207e : i == EnumC1166a.DEPENDENCIES.ordinal() ? this.f4208f : this.f4209g).size();
    }

    /* renamed from: a */
    public C1123b m6277a() {
        return this.f4204a;
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: b */
    public int mo6217b() {
        return EnumC1166a.COUNT.ordinal();
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: b */
    public C1169c mo6216b(int i) {
        return i == EnumC1166a.INTEGRATIONS.ordinal() ? new C1176e("INTEGRATIONS") : i == EnumC1166a.PERMISSIONS.ordinal() ? new C1176e("PERMISSIONS") : i == EnumC1166a.CONFIGURATION.ordinal() ? new C1176e("CONFIGURATION") : i == EnumC1166a.DEPENDENCIES.ordinal() ? new C1176e("DEPENDENCIES") : new C1176e("TEST ADS");
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d
    /* renamed from: c */
    public List<C1169c> mo6215c(int i) {
        return i == EnumC1166a.INTEGRATIONS.ordinal() ? this.f4205b : i == EnumC1166a.PERMISSIONS.ordinal() ? this.f4206d : i == EnumC1166a.CONFIGURATION.ordinal() ? this.f4207e : i == EnumC1166a.DEPENDENCIES.ordinal() ? this.f4208f : this.f4209g;
    }

    /* renamed from: c */
    public void m6270c() {
        this.f4205b = m6268d();
    }

    public String toString() {
        return "MediatedNetworkListAdapter{}";
    }
}
