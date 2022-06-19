package com.google.android.exoplayer2.offline;

import android.content.Context;
import com.google.android.exoplayer2.scheduler.C5194b;
import com.google.android.exoplayer2.scheduler.Requirements;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.exoplayer2.offline.d */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/d.class */
public final class C5174d {

    /* renamed from: a */
    public static final Requirements f16244a = new Requirements(1);

    /* renamed from: b */
    private final Context f16245b;

    /* renamed from: c */
    private final C5194b.AbstractC5197c f16246c;

    /* renamed from: d */
    private final CopyOnWriteArraySet<AbstractC5175a> f16247d;

    /* renamed from: e */
    private int f16248e;

    /* renamed from: f */
    private int f16249f;

    /* renamed from: g */
    private boolean f16250g;

    /* renamed from: h */
    private boolean f16251h;

    /* renamed from: i */
    private int f16252i;

    /* renamed from: j */
    private boolean f16253j;

    /* renamed from: k */
    private List<C5172b> f16254k;

    /* renamed from: l */
    private C5194b f16255l;

    /* renamed from: com.google.android.exoplayer2.offline.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/offline/d$a.class */
    public interface AbstractC5175a {
        /* renamed from: a */
        void mo20232a(C5174d c5174d, boolean z);

        /* renamed from: b */
        void mo20231b(C5174d c5174d, Requirements requirements, int i);
    }

    /* renamed from: i */
    private void m20242i() {
        Iterator<AbstractC5175a> it = this.f16247d.iterator();
        while (it.hasNext()) {
            it.next().mo20232a(this, this.f16253j);
        }
    }

    /* renamed from: j */
    private void m20241j(C5194b c5194b, int i) {
        Requirements m20170e = c5194b.m20170e();
        if (this.f16252i != i) {
            this.f16252i = i;
            this.f16248e++;
            throw null;
        }
        boolean m20233r = m20233r();
        Iterator<AbstractC5175a> it = this.f16247d.iterator();
        while (it.hasNext()) {
            it.next().mo20231b(this, m20170e, i);
        }
        if (!m20233r) {
            return;
        }
        m20242i();
    }

    /* renamed from: o */
    private void m20236o(boolean z) {
        if (this.f16251h == z) {
            return;
        }
        this.f16251h = z;
        this.f16248e++;
        throw null;
    }

    /* renamed from: r */
    private boolean m20233r() {
        boolean z;
        boolean z2 = true;
        if (!this.f16251h && this.f16252i != 0) {
            for (int i = 0; i < this.f16254k.size(); i++) {
                if (this.f16254k.get(i).f16243a == 0) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        if (this.f16253j == z) {
            z2 = false;
        }
        this.f16253j = z;
        return z2;
    }

    /* renamed from: a */
    public void m20250a(DownloadRequest downloadRequest, int i) {
        this.f16248e++;
        throw null;
    }

    /* renamed from: b */
    public void m20249b(AbstractC5175a abstractC5175a) {
        this.f16247d.add(abstractC5175a);
    }

    /* renamed from: c */
    public List<C5172b> m20248c() {
        return this.f16254k;
    }

    /* renamed from: d */
    public boolean m20247d() {
        return this.f16251h;
    }

    /* renamed from: e */
    public Requirements m20246e() {
        return this.f16255l.m20170e();
    }

    /* renamed from: f */
    public boolean m20245f() {
        return this.f16249f == 0 && this.f16248e == 0;
    }

    /* renamed from: g */
    public boolean m20244g() {
        return this.f16250g;
    }

    /* renamed from: h */
    public boolean m20243h() {
        return this.f16253j;
    }

    /* renamed from: k */
    public void m20240k() {
        m20236o(true);
    }

    /* renamed from: l */
    public void m20239l() {
        this.f16248e++;
        throw null;
    }

    /* renamed from: m */
    public void m20238m(String str) {
        this.f16248e++;
        throw null;
    }

    /* renamed from: n */
    public void m20237n() {
        m20236o(false);
    }

    /* renamed from: p */
    public void m20235p(Requirements requirements) {
        if (requirements.equals(this.f16255l.m20170e())) {
            return;
        }
        this.f16255l.m20167h();
        C5194b c5194b = new C5194b(this.f16245b, this.f16246c, requirements);
        this.f16255l = c5194b;
        m20241j(this.f16255l, c5194b.m20168g());
    }

    /* renamed from: q */
    public void m20234q(String str, int i) {
        this.f16248e++;
        throw null;
    }
}
