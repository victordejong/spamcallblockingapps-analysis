package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.C5845s;
import com.google.android.gms.ads.formats.AbstractC5607b;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.ads.mediation.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/v.class */
public abstract class AbstractC5791v {

    /* renamed from: a */
    private String f18649a;

    /* renamed from: b */
    private List<AbstractC5607b> f18650b;

    /* renamed from: c */
    private String f18651c;

    /* renamed from: d */
    private AbstractC5607b f18652d;

    /* renamed from: e */
    private String f18653e;

    /* renamed from: f */
    private String f18654f;

    /* renamed from: g */
    private Double f18655g;

    /* renamed from: h */
    private String f18656h;

    /* renamed from: i */
    private String f18657i;

    /* renamed from: j */
    private C5845s f18658j;

    /* renamed from: k */
    private boolean f18659k;

    /* renamed from: l */
    private View f18660l;

    /* renamed from: m */
    private View f18661m;

    /* renamed from: n */
    private Object f18662n;

    /* renamed from: o */
    private Bundle f18663o = new Bundle();

    /* renamed from: p */
    private boolean f18664p;

    /* renamed from: q */
    private boolean f18665q;

    /* renamed from: r */
    private float f18666r;

    /* renamed from: A */
    public final void m17896A(boolean z) {
        this.f18664p = z;
    }

    /* renamed from: B */
    public final void m17895B(@RecentlyNonNull String str) {
        this.f18657i = str;
    }

    /* renamed from: C */
    public final void m17894C(@RecentlyNonNull Double d) {
        this.f18655g = d;
    }

    /* renamed from: D */
    public final void m17893D(@RecentlyNonNull String str) {
        this.f18656h = str;
    }

    /* renamed from: E */
    public abstract void mo17892E(@RecentlyNonNull View view, @RecentlyNonNull Map<String, View> map, @RecentlyNonNull Map<String, View> map2);

    /* renamed from: F */
    public void m17891F(@RecentlyNonNull View view) {
    }

    /* renamed from: G */
    public final void m17890G(@RecentlyNonNull C5845s c5845s) {
        this.f18658j = c5845s;
    }

    /* renamed from: H */
    public final void m17889H(@RecentlyNonNull Object obj) {
        this.f18662n = obj;
    }

    @RecentlyNonNull
    /* renamed from: I */
    public final C5845s m17888I() {
        return this.f18658j;
    }

    @RecentlyNonNull
    /* renamed from: J */
    public final View m17887J() {
        return this.f18661m;
    }

    @RecentlyNonNull
    /* renamed from: K */
    public final Object m17886K() {
        return this.f18662n;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public View m17885a() {
        return this.f18660l;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final String m17884b() {
        return this.f18654f;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final String m17883c() {
        return this.f18651c;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public final String m17882d() {
        return this.f18653e;
    }

    /* renamed from: e */
    public float m17881e() {
        return 0.0f;
    }

    /* renamed from: f */
    public float m17880f() {
        return 0.0f;
    }

    @RecentlyNonNull
    /* renamed from: g */
    public final Bundle m17879g() {
        return this.f18663o;
    }

    @RecentlyNonNull
    /* renamed from: h */
    public final String m17878h() {
        return this.f18649a;
    }

    @RecentlyNonNull
    /* renamed from: i */
    public final AbstractC5607b m17877i() {
        return this.f18652d;
    }

    @RecentlyNonNull
    /* renamed from: j */
    public final List<AbstractC5607b> m17876j() {
        return this.f18650b;
    }

    /* renamed from: k */
    public float m17875k() {
        return this.f18666r;
    }

    /* renamed from: l */
    public final boolean m17874l() {
        return this.f18665q;
    }

    /* renamed from: m */
    public final boolean m17873m() {
        return this.f18664p;
    }

    @RecentlyNonNull
    /* renamed from: n */
    public final String m17872n() {
        return this.f18657i;
    }

    @RecentlyNonNull
    /* renamed from: o */
    public final Double m17871o() {
        return this.f18655g;
    }

    @RecentlyNonNull
    /* renamed from: p */
    public final String m17870p() {
        return this.f18656h;
    }

    /* renamed from: q */
    public void m17869q(@RecentlyNonNull View view) {
    }

    /* renamed from: r */
    public boolean m17868r() {
        return this.f18659k;
    }

    /* renamed from: s */
    public void m17867s() {
    }

    /* renamed from: t */
    public final void m17866t(@RecentlyNonNull String str) {
        this.f18654f = str;
    }

    /* renamed from: u */
    public final void m17865u(@RecentlyNonNull String str) {
        this.f18651c = str;
    }

    /* renamed from: v */
    public final void m17864v(@RecentlyNonNull String str) {
        this.f18653e = str;
    }

    /* renamed from: w */
    public final void m17863w(@RecentlyNonNull String str) {
        this.f18649a = str;
    }

    /* renamed from: x */
    public final void m17862x(@RecentlyNonNull AbstractC5607b abstractC5607b) {
        this.f18652d = abstractC5607b;
    }

    /* renamed from: y */
    public final void m17861y(@RecentlyNonNull List<AbstractC5607b> list) {
        this.f18650b = list;
    }

    /* renamed from: z */
    public final void m17860z(boolean z) {
        this.f18665q = z;
    }
}
