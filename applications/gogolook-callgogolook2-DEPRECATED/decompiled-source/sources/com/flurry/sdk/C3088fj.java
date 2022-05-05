package com.flurry.sdk;

import android.content.Context;
import android.widget.RelativeLayout;
import com.flurry.sdk.AbstractC3055ez;
import com.flurry.sdk.AbstractC3093fk;
import com.flurry.sdk.C3096fl;
import java.util.List;
/* renamed from: com.flurry.sdk.fj */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fj.class */
public class C3088fj implements AbstractC3093fk.AbstractC3094a, AbstractC3093fk.AbstractC3095b, C3096fl.AbstractC3102a {

    /* renamed from: h */
    public static final String f4968h = "fj";

    /* renamed from: a */
    public AbstractC3092a f4969a;

    /* renamed from: b */
    public C3096fl f4970b;

    /* renamed from: c */
    public AbstractC3093fk f4971c;

    /* renamed from: d */
    public RelativeLayout f4972d;

    /* renamed from: e */
    public int f4973e = -1;

    /* renamed from: f */
    public boolean f4974f = false;

    /* renamed from: g */
    public boolean f4975g = false;

    /* renamed from: com.flurry.sdk.fj$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fj$a.class */
    public interface AbstractC3092a {
        /* renamed from: a */
        void mo33123a();

        /* renamed from: a */
        void mo33122a(String str);

        /* renamed from: a */
        void mo33121a(String str, float f, float f2);

        /* renamed from: a */
        void mo33120a(String str, int i, int i2);

        /* renamed from: b */
        void mo33119b();

        /* renamed from: b */
        void mo33118b(String str);

        /* renamed from: d */
        void mo33117d(int i);

        /* renamed from: e */
        void mo33116e(int i);

        /* renamed from: n */
        void mo33115n();

        /* renamed from: o */
        void mo33114o();

        /* renamed from: y */
        void mo33113y();

        /* renamed from: z */
        void mo33112z();
    }

    public C3088fj(Context context) {
        if (context != null) {
            this.f4972d = new RelativeLayout(context);
            this.f4970b = new C3096fl(context, this);
            this.f4971c = new C3077fg(context, this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.f4972d.addView(this.f4970b, layoutParams);
            this.f4971c.setAnchorView(this.f4970b);
            this.f4970b.setMediaController(this.f4971c);
        }
    }

    public C3088fj(Context context, AbstractC3055ez.EnumC3056a aVar, List<C2921cr> list, int i, boolean z) {
        if (context != null && aVar != null) {
            this.f4972d = new RelativeLayout(context);
            this.f4970b = new C3096fl(context, this);
            if (aVar != null) {
                if (aVar.equals(AbstractC3055ez.EnumC3056a.INSTREAM)) {
                    this.f4971c = new C3087fi(context, this, list);
                } else if (aVar.equals(AbstractC3055ez.EnumC3056a.FULLSCREEN)) {
                    this.f4971c = new C3082fh(context, this, list, i, z);
                    this.f4970b.setMediaController(this.f4971c);
                }
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.f4972d.addView(this.f4970b, layoutParams);
        }
    }

    /* renamed from: a */
    public final int m33140a() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            return flVar.getHeight();
        }
        return 0;
    }

    /* renamed from: a */
    public final void m33139a(final int i) {
        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.fj.1
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                if (C3088fj.this.f4971c != null) {
                    C3088fj.this.f4971c.mo33109a(i);
                }
            }
        });
    }

    @Override // com.flurry.sdk.C3096fl.AbstractC3102a
    /* renamed from: a */
    public final void mo33066a(int i, int i2) {
        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc(i, i2) { // from class: com.flurry.sdk.fj.3
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                if (C3088fj.this.f4971c != null) {
                    C3088fj.this.f4971c.mo33099j();
                }
            }
        });
    }

    @Override // com.flurry.sdk.C3096fl.AbstractC3102a
    /* renamed from: a */
    public final void mo33065a(String str) {
        C3096fl flVar;
        if (this.f4974f) {
            this.f4971c.show();
        } else {
            this.f4971c.hide();
        }
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33122a(str);
        }
        AbstractC3093fk fkVar = this.f4971c;
        if (!(fkVar == null || (flVar = this.f4970b) == null)) {
            fkVar.setMediaPlayer(flVar);
        }
        AbstractC3093fk fkVar2 = this.f4971c;
        if (fkVar2 != null && (fkVar2 instanceof C3077fg)) {
            fkVar2.show();
        }
    }

    @Override // com.flurry.sdk.C3096fl.AbstractC3102a
    /* renamed from: a */
    public final void mo33064a(String str, final float f, final float f2) {
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33121a(str, f, f2);
        }
        C3331jb.m32681a().m32678a(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.fj.2
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                if (C3088fj.this.f4971c != null) {
                    C3088fj.this.f4971c.mo33110a(f, f2);
                }
            }
        });
    }

    @Override // com.flurry.sdk.C3096fl.AbstractC3102a
    /* renamed from: a */
    public final void mo33063a(String str, int i, int i2) {
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33120a(str, i, i2);
        }
    }

    /* renamed from: b */
    public final int m33137b() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            return flVar.getWidth();
        }
        return 0;
    }

    /* renamed from: b */
    public final void m33136b(int i) {
        if (this.f4969a != null) {
            m33128i();
            this.f4969a.mo33117d(i);
        }
    }

    @Override // com.flurry.sdk.C3096fl.AbstractC3102a
    /* renamed from: b */
    public final void mo33062b(String str) {
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33118b(str);
        }
        if (this.f4975g) {
            this.f4969a.mo33117d(0);
            C3096fl flVar = this.f4970b;
            if (flVar != null) {
                try {
                    flVar.f4989g = this.f4975g;
                    flVar.m33073f();
                    flVar.f4987e = C3096fl.EnumC3103b.STATE_PREPARED;
                    flVar.f4984b = 0.0f;
                    flVar.m33089a(0);
                } catch (Exception e) {
                    String str2 = C3096fl.f4982a;
                    C3356jq.m32613a(str2, "Unable to replay video, error: " + e.getMessage());
                }
            }
        }
        AbstractC3093fk fkVar = this.f4971c;
        if (fkVar != null) {
            fkVar.mo33100i();
        }
    }

    /* renamed from: c */
    public final void m33135c() {
        AbstractC3093fk fkVar = this.f4971c;
        if (fkVar != null) {
            fkVar.mo33100i();
        }
        C3096fl flVar = this.f4970b;
        if (flVar != null && flVar.isPlaying()) {
            this.f4970b.m33071g();
        }
    }

    @Override // com.flurry.sdk.C3096fl.AbstractC3102a
    /* renamed from: c */
    public final void mo33061c(int i) {
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33117d(i);
        }
    }

    /* renamed from: d */
    public final void m33134d() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            flVar.f4988f = true;
        }
    }

    @Override // com.flurry.sdk.C3096fl.AbstractC3102a
    /* renamed from: d */
    public final void mo33060d(int i) {
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33116e(i);
        }
    }

    /* renamed from: e */
    public final void m33132e(int i) {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            flVar.seekTo(i);
            this.f4970b.start();
        }
        AbstractC3093fk fkVar = this.f4971c;
        if (fkVar != null && (fkVar instanceof C3077fg)) {
            fkVar.show();
        }
    }

    /* renamed from: e */
    public final boolean m33133e() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            return flVar.f4988f;
        }
        return false;
    }

    /* renamed from: f */
    public final int m33131f() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            return flVar.getVolume();
        }
        return 0;
    }

    /* renamed from: g */
    public final void m33130g() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            try {
                flVar.m33069h();
                this.f4970b.finalize();
            } catch (Throwable th) {
                String str = f4968h;
                C3356jq.m32609b(str, "Error during videoview reset" + th.getMessage());
            }
        }
    }

    /* renamed from: h */
    public final int m33129h() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            return flVar.getOffsetStartTime();
        }
        return 0;
    }

    /* renamed from: i */
    public final void m33128i() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            flVar.pause();
        }
    }

    /* renamed from: j */
    public final void m33127j() {
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33112z();
        }
    }

    @Override // com.flurry.sdk.C3096fl.AbstractC3102a
    /* renamed from: k */
    public final void mo33059k() {
        this.f4973e = 8;
    }

    @Override // com.flurry.sdk.AbstractC3093fk.AbstractC3095b
    /* renamed from: l */
    public final void mo33093l() {
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33123a();
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk.AbstractC3095b
    /* renamed from: m */
    public final void mo33092m() {
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33113y();
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk.AbstractC3095b
    /* renamed from: n */
    public final void mo33091n() {
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33119b();
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk.AbstractC3094a
    /* renamed from: o */
    public final void mo33097o() {
        this.f4971c.hide();
        this.f4971c.mo33106c();
        this.f4971c.mo33108b();
        this.f4971c.requestLayout();
        this.f4971c.show();
        if (!this.f4970b.isPlaying()) {
            m33132e(m33126p());
        }
    }

    /* renamed from: p */
    public final int m33126p() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            return flVar.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.flurry.sdk.AbstractC3093fk.AbstractC3094a
    /* renamed from: q */
    public final void mo33096q() {
        if (this.f4970b.isPlaying()) {
            m33128i();
        }
        this.f4971c.hide();
        this.f4971c.mo33105d();
        this.f4971c.mo33111a();
        this.f4971c.requestLayout();
        this.f4971c.show();
    }

    @Override // com.flurry.sdk.AbstractC3093fk.AbstractC3094a
    /* renamed from: r */
    public final void mo33095r() {
        m33125s();
        this.f4971c.hide();
        this.f4971c.mo33104e();
        this.f4971c.mo33101h();
        this.f4971c.requestLayout();
        this.f4971c.show();
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33115n();
        }
    }

    /* renamed from: s */
    public final void m33125s() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            flVar.m33082b();
        }
    }

    @Override // com.flurry.sdk.AbstractC3093fk.AbstractC3094a
    /* renamed from: t */
    public final void mo33094t() {
        m33124u();
        this.f4971c.hide();
        this.f4971c.mo33102g();
        this.f4971c.mo33103f();
        this.f4971c.requestLayout();
        this.f4971c.show();
        AbstractC3092a aVar = this.f4969a;
        if (aVar != null) {
            aVar.mo33114o();
        }
    }

    /* renamed from: u */
    public final void m33124u() {
        C3096fl flVar = this.f4970b;
        if (flVar != null) {
            flVar.m33079c();
        }
    }
}
