package com.google.android.exoplayer2.p241a1;

import android.view.Surface;
import com.google.android.exoplayer2.AbstractC5162o0;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.C5102l0;
import com.google.android.exoplayer2.C5160n0;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AbstractC4829k;
import com.google.android.exoplayer2.audio.AbstractC4830l;
import com.google.android.exoplayer2.drm.AbstractC5037h;
import com.google.android.exoplayer2.metadata.AbstractC5125e;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p241a1.AbstractC4802b;
import com.google.android.exoplayer2.p242b1.C4857d;
import com.google.android.exoplayer2.source.AbstractC5294v;
import com.google.android.exoplayer2.source.AbstractC5297w;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.C5411g;
import com.google.android.exoplayer2.upstream.AbstractC5473f;
import com.google.android.exoplayer2.util.AbstractC5510f;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.video.AbstractC5568p;
import com.google.android.exoplayer2.video.AbstractC5569q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.a1.a */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/a1/a.class */
public class C4799a implements AbstractC5162o0.AbstractC5163a, AbstractC5125e, AbstractC4830l, AbstractC5569q, AbstractC5297w, AbstractC5473f.AbstractC5474a, AbstractC5037h, AbstractC5568p, AbstractC4829k {

    /* renamed from: e */
    private final AbstractC5510f f14486e;

    /* renamed from: h */
    private AbstractC5162o0 f14489h;

    /* renamed from: d */
    private final CopyOnWriteArraySet<AbstractC4802b> f14485d = new CopyOnWriteArraySet<>();

    /* renamed from: g */
    private final C4801b f14488g = new C4801b();

    /* renamed from: f */
    private final AbstractC5585y0.C5588c f14487f = new AbstractC5585y0.C5588c();

    /* renamed from: com.google.android.exoplayer2.a1.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/a1/a$a.class */
    public static final class C4800a {

        /* renamed from: a */
        public final AbstractC5294v.C5295a f14490a;

        /* renamed from: b */
        public final AbstractC5585y0 f14491b;

        /* renamed from: c */
        public final int f14492c;

        public C4800a(AbstractC5294v.C5295a c5295a, AbstractC5585y0 abstractC5585y0, int i) {
            this.f14490a = c5295a;
            this.f14491b = abstractC5585y0;
            this.f14492c = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.a1.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/a1/a$b.class */
    public static final class C4801b {

        /* renamed from: d */
        private C4800a f14496d;

        /* renamed from: e */
        private C4800a f14497e;

        /* renamed from: f */
        private C4800a f14498f;

        /* renamed from: h */
        private boolean f14500h;

        /* renamed from: a */
        private final ArrayList<C4800a> f14493a = new ArrayList<>();

        /* renamed from: b */
        private final HashMap<AbstractC5294v.C5295a, C4800a> f14494b = new HashMap<>();

        /* renamed from: c */
        private final AbstractC5585y0.C5587b f14495c = new AbstractC5585y0.C5587b();

        /* renamed from: g */
        private AbstractC5585y0 f14499g = AbstractC5585y0.f18173a;

        /* renamed from: p */
        private C4800a m21697p(C4800a c4800a, AbstractC5585y0 abstractC5585y0) {
            int mo18356b = abstractC5585y0.mo18356b(c4800a.f14490a.f16780a);
            if (mo18356b == -1) {
                return c4800a;
            }
            return new C4800a(c4800a.f14490a, abstractC5585y0, abstractC5585y0.m18364f(mo18356b, this.f14495c).f18176c);
        }

        /* renamed from: b */
        public C4800a m21711b() {
            return this.f14497e;
        }

        /* renamed from: c */
        public C4800a m21710c() {
            C4800a c4800a;
            if (this.f14493a.isEmpty()) {
                c4800a = null;
            } else {
                ArrayList<C4800a> arrayList = this.f14493a;
                c4800a = arrayList.get(arrayList.size() - 1);
            }
            return c4800a;
        }

        /* renamed from: d */
        public C4800a m21709d(AbstractC5294v.C5295a c5295a) {
            return this.f14494b.get(c5295a);
        }

        /* renamed from: e */
        public C4800a m21708e() {
            return (this.f14493a.isEmpty() || this.f14499g.m18358q() || this.f14500h) ? null : this.f14493a.get(0);
        }

        /* renamed from: f */
        public C4800a m21707f() {
            return this.f14498f;
        }

        /* renamed from: g */
        public boolean m21706g() {
            return this.f14500h;
        }

        /* renamed from: h */
        public void m21705h(int i, AbstractC5294v.C5295a c5295a) {
            int mo18356b = this.f14499g.mo18356b(c5295a.f16780a);
            boolean z = mo18356b != -1;
            AbstractC5585y0 abstractC5585y0 = z ? this.f14499g : AbstractC5585y0.f18173a;
            if (z) {
                i = this.f14499g.m18364f(mo18356b, this.f14495c).f18176c;
            }
            C4800a c4800a = new C4800a(c5295a, abstractC5585y0, i);
            this.f14493a.add(c4800a);
            this.f14494b.put(c5295a, c4800a);
            this.f14496d = this.f14493a.get(0);
            if (this.f14493a.size() != 1 || this.f14499g.m18358q()) {
                return;
            }
            this.f14497e = this.f14496d;
        }

        /* renamed from: i */
        public boolean m21704i(AbstractC5294v.C5295a c5295a) {
            C4800a remove = this.f14494b.remove(c5295a);
            if (remove == null) {
                return false;
            }
            this.f14493a.remove(remove);
            C4800a c4800a = this.f14498f;
            if (c4800a != null && c5295a.equals(c4800a.f14490a)) {
                this.f14498f = this.f14493a.isEmpty() ? null : this.f14493a.get(0);
            }
            if (this.f14493a.isEmpty()) {
                return true;
            }
            this.f14496d = this.f14493a.get(0);
            return true;
        }

        /* renamed from: j */
        public void m21703j(int i) {
            this.f14497e = this.f14496d;
        }

        /* renamed from: k */
        public void m21702k(AbstractC5294v.C5295a c5295a) {
            this.f14498f = this.f14494b.get(c5295a);
        }

        /* renamed from: l */
        public void m21701l() {
            this.f14500h = false;
            this.f14497e = this.f14496d;
        }

        /* renamed from: m */
        public void m21700m() {
            this.f14500h = true;
        }

        /* renamed from: n */
        public void m21699n(AbstractC5585y0 abstractC5585y0) {
            for (int i = 0; i < this.f14493a.size(); i++) {
                C4800a m21697p = m21697p(this.f14493a.get(i), abstractC5585y0);
                this.f14493a.set(i, m21697p);
                this.f14494b.put(m21697p.f14490a, m21697p);
            }
            C4800a c4800a = this.f14498f;
            if (c4800a != null) {
                this.f14498f = m21697p(c4800a, abstractC5585y0);
            }
            this.f14499g = abstractC5585y0;
            this.f14497e = this.f14496d;
        }

        /* renamed from: o */
        public C4800a m21698o(int i) {
            int i2 = 0;
            C4800a c4800a = null;
            while (true) {
                C4800a c4800a2 = c4800a;
                if (i2 < this.f14493a.size()) {
                    C4800a c4800a3 = this.f14493a.get(i2);
                    int mo18356b = this.f14499g.mo18356b(c4800a3.f14490a.f16780a);
                    C4800a c4800a4 = c4800a2;
                    if (mo18356b != -1) {
                        c4800a4 = c4800a2;
                        if (this.f14499g.m18364f(mo18356b, this.f14495c).f18176c != i) {
                            continue;
                        } else if (c4800a2 != null) {
                            return null;
                        } else {
                            c4800a4 = c4800a3;
                        }
                    }
                    i2++;
                    c4800a = c4800a4;
                } else {
                    return c4800a2;
                }
            }
        }
    }

    public C4799a(AbstractC5510f abstractC5510f) {
        this.f14486e = (AbstractC5510f) C5508e.m18911e(abstractC5510f);
    }

    /* renamed from: D */
    private AbstractC4802b.C4803a m21721D(C4800a c4800a) {
        C5508e.m18911e(this.f14489h);
        C4800a c4800a2 = c4800a;
        if (c4800a == null) {
            int mo18410u = this.f14489h.mo18410u();
            c4800a2 = this.f14488g.m21698o(mo18410u);
            if (c4800a2 == null) {
                AbstractC5585y0 mo18460L = this.f14489h.mo18460L();
                if (!(mo18410u < mo18460L.mo18351p())) {
                    mo18460L = AbstractC5585y0.f18173a;
                }
                return m21722C(mo18460L, mo18410u, null);
            }
        }
        return m21722C(c4800a2.f14491b, c4800a2.f14492c, c4800a2.f14490a);
    }

    /* renamed from: E */
    private AbstractC4802b.C4803a m21720E() {
        return m21721D(this.f14488g.m21711b());
    }

    /* renamed from: F */
    private AbstractC4802b.C4803a m21719F() {
        return m21721D(this.f14488g.m21710c());
    }

    /* renamed from: G */
    private AbstractC4802b.C4803a m21718G(int i, AbstractC5294v.C5295a c5295a) {
        C5508e.m18911e(this.f14489h);
        if (c5295a != null) {
            C4800a m21709d = this.f14488g.m21709d(c5295a);
            return m21709d != null ? m21721D(m21709d) : m21722C(AbstractC5585y0.f18173a, i, c5295a);
        }
        AbstractC5585y0 mo18460L = this.f14489h.mo18460L();
        if (!(i < mo18460L.mo18351p())) {
            mo18460L = AbstractC5585y0.f18173a;
        }
        return m21722C(mo18460L, i, null);
    }

    /* renamed from: H */
    private AbstractC4802b.C4803a m21717H() {
        return m21721D(this.f14488g.m21708e());
    }

    /* renamed from: I */
    private AbstractC4802b.C4803a m21716I() {
        return m21721D(this.f14488g.m21707f());
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5297w
    /* renamed from: A */
    public final void mo19840A(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5301c c5301c) {
        AbstractC4802b.C4803a m21718G = m21718G(i, c5295a);
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21659y(m21718G, c5301c);
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5037h
    /* renamed from: B */
    public final void mo20785B() {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21687J(m21716I);
        }
    }

    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @RequiresNonNull({"player"})
    /* renamed from: C */
    protected AbstractC4802b.C4803a m21722C(AbstractC5585y0 abstractC5585y0, int i, AbstractC5294v.C5295a c5295a) {
        if (abstractC5585y0.m18358q()) {
            c5295a = null;
        }
        long mo18896b = this.f14486e.mo18896b();
        boolean z = abstractC5585y0 == this.f14489h.mo18460L() && i == this.f14489h.mo18410u();
        char c = 0;
        if (c5295a != null && c5295a.m19842a()) {
            if (z && this.f14489h.mo18475D() == c5295a.f16781b && this.f14489h.mo18418q() == c5295a.f16782c) {
                c = this.f14489h.getCurrentPosition();
            }
        } else if (z) {
            c = this.f14489h.mo18402y();
        } else if (!abstractC5585y0.m18358q()) {
            c = abstractC5585y0.m18359n(i, this.f14487f).m18334a();
        }
        return new AbstractC4802b.C4803a(mo18896b, abstractC5585y0, i, c5295a, c, this.f14489h.getCurrentPosition(), this.f14489h.mo18439f());
    }

    /* renamed from: J */
    public final void m21715J() {
        if (!this.f14488g.m21706g()) {
            AbstractC4802b.C4803a m21717H = m21717H();
            this.f14488g.m21700m();
            Iterator<AbstractC4802b> it = this.f14485d.iterator();
            while (it.hasNext()) {
                it.next().m21690G(m21717H);
            }
        }
    }

    /* renamed from: K */
    public final void m21714K() {
        for (C4800a c4800a : new ArrayList(this.f14488g.f14493a)) {
            mo19834u(c4800a.f14492c, c4800a.f14490a);
        }
    }

    /* renamed from: L */
    public void m21713L(AbstractC5162o0 abstractC5162o0) {
        C5508e.m18910f(this.f14489h == null || this.f14488g.f14493a.isEmpty());
        this.f14489h = (AbstractC5162o0) C5508e.m18911e(abstractC5162o0);
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4830l, com.google.android.exoplayer2.audio.AbstractC4829k
    /* renamed from: a */
    public final void mo18399a(int i) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21685L(m21716I, i);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4830l
    /* renamed from: b */
    public final void mo18398b(C4857d c4857d) {
        AbstractC4802b.C4803a m21720E = m21720E();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21688I(m21720E, 1, c4857d);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4830l
    /* renamed from: c */
    public final void mo18397c(C4857d c4857d) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21667q(m21717H, 1, c4857d);
        }
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5569q
    /* renamed from: d */
    public final void mo18396d(String str, long j, long j2) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21677g(m21716I, 2, str, j2);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5297w
    /* renamed from: e */
    public final void mo19839e(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c) {
        AbstractC4802b.C4803a m21718G = m21718G(i, c5295a);
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21681c(m21718G, c5300b, c5301c);
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5037h
    /* renamed from: f */
    public final void mo20784f() {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21673k(m21716I);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4829k
    /* renamed from: g */
    public void mo21574g(float f) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21661w(m21716I, f);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5297w
    /* renamed from: h */
    public final void mo19838h(int i, AbstractC5294v.C5295a c5295a) {
        this.f14488g.m21702k(c5295a);
        AbstractC4802b.C4803a m21718G = m21718G(i, c5295a);
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21686K(m21718G);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5297w
    /* renamed from: i */
    public final void mo19837i(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c) {
        AbstractC4802b.C4803a m21718G = m21718G(i, c5295a);
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21680d(m21718G, c5300b, c5301c);
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5037h
    /* renamed from: j */
    public final void mo20783j(Exception exc) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21675i(m21716I, exc);
        }
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5569q
    /* renamed from: k */
    public final void mo18391k(Surface surface) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21689H(m21716I, surface);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.AbstractC5473f.AbstractC5474a
    /* renamed from: l */
    public final void mo19027l(int i, long j, long j2) {
        AbstractC4802b.C4803a m21719F = m21719F();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21683a(m21719F, i, j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4830l
    /* renamed from: m */
    public final void mo18390m(String str, long j, long j2) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21677g(m21716I, 1, str, j2);
        }
    }

    @Override // com.google.android.exoplayer2.metadata.AbstractC5125e
    /* renamed from: n */
    public final void mo18389n(Metadata metadata) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21666r(m21717H, metadata);
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5037h
    /* renamed from: o */
    public final void mo20782o() {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21662v(m21716I);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onIsPlayingChanged(boolean z) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21695B(m21717H, z);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onLoadingChanged(boolean z) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21670n(m21717H, z);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onPlaybackParametersChanged(C5102l0 c5102l0) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21671m(m21717H, c5102l0);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public void onPlaybackSuppressionReasonChanged(int i) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21672l(m21717H, i);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onPlayerError(ExoPlaybackException exoPlaybackException) {
        AbstractC4802b.C4803a m21720E = m21720E();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21684M(m21720E, exoPlaybackException);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onPlayerStateChanged(boolean z, int i) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21664t(m21717H, z, i);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onPositionDiscontinuity(int i) {
        this.f14488g.m21703j(i);
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21676h(m21717H, i);
        }
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5568p
    public final void onRenderedFirstFrame() {
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onRepeatModeChanged(int i) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21665s(m21717H, i);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onSeekProcessed() {
        if (this.f14488g.m21706g()) {
            this.f14488g.m21701l();
            AbstractC4802b.C4803a m21717H = m21717H();
            Iterator<AbstractC4802b> it = this.f14485d.iterator();
            while (it.hasNext()) {
                it.next().m21678f(m21717H);
            }
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onShuffleModeEnabledChanged(boolean z) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21696A(m21717H, z);
        }
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5568p
    public void onSurfaceSizeChanged(int i, int i2) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21658z(m21716I, i, i2);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onTimelineChanged(AbstractC5585y0 abstractC5585y0, int i) {
        this.f14488g.m21699n(abstractC5585y0);
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21692E(m21717H, i);
        }
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public /* synthetic */ void onTimelineChanged(AbstractC5585y0 abstractC5585y0, Object obj, int i) {
        C5160n0.m20276k(this, abstractC5585y0, obj, i);
    }

    @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
    public final void onTracksChanged(TrackGroupArray trackGroupArray, C5411g c5411g) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21660x(m21717H, trackGroupArray, c5411g);
        }
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5569q, com.google.android.exoplayer2.video.AbstractC5568p
    public final void onVideoSizeChanged(int i, int i2, int i3, float f) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21682b(m21716I, i, i2, i3, f);
        }
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5569q
    /* renamed from: p */
    public final void mo18388p(int i, long j) {
        AbstractC4802b.C4803a m21720E = m21720E();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21694C(m21720E, i, j);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5297w
    /* renamed from: q */
    public final void mo19836q(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c) {
        AbstractC4802b.C4803a m21718G = m21718G(i, c5295a);
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21691F(m21718G, c5300b, c5301c);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5297w
    /* renamed from: r */
    public final void mo19835r(int i, AbstractC5294v.C5295a c5295a, AbstractC5297w.C5300b c5300b, AbstractC5297w.C5301c c5301c, IOException iOException, boolean z) {
        AbstractC4802b.C4803a m21718G = m21718G(i, c5295a);
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21668p(m21718G, c5300b, c5301c, iOException, z);
        }
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5569q
    /* renamed from: s */
    public final void mo18387s(Format format) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21679e(m21716I, 2, format);
        }
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5569q
    /* renamed from: t */
    public final void mo18386t(C4857d c4857d) {
        AbstractC4802b.C4803a m21717H = m21717H();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21667q(m21717H, 2, c4857d);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5297w
    /* renamed from: u */
    public final void mo19834u(int i, AbstractC5294v.C5295a c5295a) {
        AbstractC4802b.C4803a m21718G = m21718G(i, c5295a);
        if (this.f14488g.m21704i(c5295a)) {
            Iterator<AbstractC4802b> it = this.f14485d.iterator();
            while (it.hasNext()) {
                it.next().m21663u(m21718G);
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4830l
    /* renamed from: v */
    public final void mo18385v(Format format) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21679e(m21716I, 1, format);
        }
    }

    @Override // com.google.android.exoplayer2.source.AbstractC5297w
    /* renamed from: w */
    public final void mo19833w(int i, AbstractC5294v.C5295a c5295a) {
        this.f14488g.m21705h(i, c5295a);
        AbstractC4802b.C4803a m21718G = m21718G(i, c5295a);
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21693D(m21718G);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AbstractC4830l
    /* renamed from: x */
    public final void mo18384x(int i, long j, long j2) {
        AbstractC4802b.C4803a m21716I = m21716I();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21669o(m21716I, i, j, j2);
        }
    }

    @Override // com.google.android.exoplayer2.video.AbstractC5569q
    /* renamed from: y */
    public final void mo18383y(C4857d c4857d) {
        AbstractC4802b.C4803a m21720E = m21720E();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21688I(m21720E, 2, c4857d);
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5037h
    /* renamed from: z */
    public final void mo20781z() {
        AbstractC4802b.C4803a m21720E = m21720E();
        Iterator<AbstractC4802b> it = this.f14485d.iterator();
        while (it.hasNext()) {
            it.next().m21674j(m21720E);
        }
    }
}
