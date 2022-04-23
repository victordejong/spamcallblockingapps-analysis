package com.google.android.gms.ads.mediation;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.C1498r;
import com.google.android.gms.ads.formats.AbstractC1361b;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.ads.mediation.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/v.class */
public abstract class AbstractC1482v {

    /* renamed from: a */
    private String f5656a;

    /* renamed from: b */
    private List<AbstractC1361b> f5657b;

    /* renamed from: c */
    private String f5658c;

    /* renamed from: d */
    private AbstractC1361b f5659d;

    /* renamed from: e */
    private String f5660e;

    /* renamed from: f */
    private String f5661f;

    /* renamed from: g */
    private Double f5662g;

    /* renamed from: h */
    private String f5663h;

    /* renamed from: i */
    private String f5664i;

    /* renamed from: j */
    private C1498r f5665j;

    /* renamed from: k */
    private boolean f5666k;

    /* renamed from: l */
    private View f5667l;

    /* renamed from: m */
    private View f5668m;

    /* renamed from: n */
    private Object f5669n;

    /* renamed from: o */
    private Bundle f5670o = new Bundle();

    /* renamed from: p */
    private boolean f5671p;

    /* renamed from: q */
    private boolean f5672q;

    /* renamed from: r */
    private float f5673r;

    /* renamed from: A */
    public final void m8664A(boolean z) {
        this.f5671p = z;
    }

    /* renamed from: B */
    public final void m8663B(@RecentlyNonNull String str) {
        this.f5664i = str;
    }

    /* renamed from: C */
    public final void m8662C(@RecentlyNonNull Double d) {
        this.f5662g = d;
    }

    /* renamed from: D */
    public final void m8661D(@RecentlyNonNull String str) {
        this.f5663h = str;
    }

    /* renamed from: E */
    public abstract void m8660E(@RecentlyNonNull View view, @RecentlyNonNull Map<String, View> map, @RecentlyNonNull Map<String, View> map2);

    /* renamed from: F */
    public void m8659F(@RecentlyNonNull View view) {
    }

    /* renamed from: G */
    public final void m8658G(@RecentlyNonNull C1498r rVar) {
        this.f5665j = rVar;
    }

    /* renamed from: H */
    public final void m8657H(@RecentlyNonNull Object obj) {
        this.f5669n = obj;
    }

    @RecentlyNonNull
    /* renamed from: I */
    public final C1498r m8656I() {
        return this.f5665j;
    }

    @RecentlyNonNull
    /* renamed from: J */
    public final View m8655J() {
        return this.f5668m;
    }

    @RecentlyNonNull
    /* renamed from: K */
    public final Object m8654K() {
        return this.f5669n;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public View m8653a() {
        return this.f5667l;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final String m8652b() {
        return this.f5661f;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final String m8651c() {
        return this.f5658c;
    }

    @RecentlyNonNull
    /* renamed from: d */
    public final String m8650d() {
        return this.f5660e;
    }

    /* renamed from: e */
    public float m8649e() {
        return 0.0f;
    }

    /* renamed from: f */
    public float m8648f() {
        return 0.0f;
    }

    @RecentlyNonNull
    /* renamed from: g */
    public final Bundle m8647g() {
        return this.f5670o;
    }

    @RecentlyNonNull
    /* renamed from: h */
    public final String m8646h() {
        return this.f5656a;
    }

    @RecentlyNonNull
    /* renamed from: i */
    public final AbstractC1361b m8645i() {
        return this.f5659d;
    }

    @RecentlyNonNull
    /* renamed from: j */
    public final List<AbstractC1361b> m8644j() {
        return this.f5657b;
    }

    /* renamed from: k */
    public float m8643k() {
        return this.f5673r;
    }

    /* renamed from: l */
    public final boolean m8642l() {
        return this.f5672q;
    }

    /* renamed from: m */
    public final boolean m8641m() {
        return this.f5671p;
    }

    @RecentlyNonNull
    /* renamed from: n */
    public final String m8640n() {
        return this.f5664i;
    }

    @RecentlyNonNull
    /* renamed from: o */
    public final Double m8639o() {
        return this.f5662g;
    }

    @RecentlyNonNull
    /* renamed from: p */
    public final String m8638p() {
        return this.f5663h;
    }

    /* renamed from: q */
    public void m8637q(@RecentlyNonNull View view) {
    }

    /* renamed from: r */
    public boolean m8636r() {
        return this.f5666k;
    }

    /* renamed from: s */
    public void m8635s() {
    }

    /* renamed from: t */
    public final void m8634t(@RecentlyNonNull String str) {
        this.f5661f = str;
    }

    /* renamed from: u */
    public final void m8633u(@RecentlyNonNull String str) {
        this.f5658c = str;
    }

    /* renamed from: v */
    public final void m8632v(@RecentlyNonNull String str) {
        this.f5660e = str;
    }

    /* renamed from: w */
    public final void m8631w(@RecentlyNonNull String str) {
        this.f5656a = str;
    }

    /* renamed from: x */
    public final void m8630x(@RecentlyNonNull AbstractC1361b bVar) {
        this.f5659d = bVar;
    }

    /* renamed from: y */
    public final void m8629y(@RecentlyNonNull List<AbstractC1361b> list) {
        this.f5657b = list;
    }

    /* renamed from: z */
    public final void m8628z(boolean z) {
        this.f5672q = z;
    }
}
