package com.adbert.p015b;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.media.MediaPlayer;
import android.os.Handler;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.TooltipCompatHandler;
import androidx.core.internal.view.SupportMenu;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1406h;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1383c;
import com.adbert.p009a.p012c.EnumC1384d;
import com.adbert.p009a.p012c.EnumC1385e;
import com.adbert.p009a.p013d.C1391a;
import com.adbert.p015b.C1448h;
import com.adbert.p015b.C1454i;
import java.io.File;
/* renamed from: com.adbert.b.d */
/* loaded from: classes-dex2jar.jar:com/adbert/b/d.class */
public class C1426d extends RelativeLayout {

    /* renamed from: c */
    public Context f707c;

    /* renamed from: d */
    public C1377b f708d;

    /* renamed from: e */
    public int f709e;

    /* renamed from: f */
    public C1391a f710f;

    /* renamed from: g */
    public float f711g;

    /* renamed from: h */
    public float f712h;

    /* renamed from: j */
    public TextView f714j;

    /* renamed from: k */
    public ProgressBar f715k;

    /* renamed from: l */
    public ImageView f716l;

    /* renamed from: n */
    public C1454i f718n;

    /* renamed from: o */
    public FrameLayout f719o;

    /* renamed from: s */
    public int f723s;

    /* renamed from: t */
    public Bitmap f724t;

    /* renamed from: u */
    public EnumC1438b f725u;

    /* renamed from: v */
    public C1448h f726v;

    /* renamed from: i */
    public int f713i = 0;

    /* renamed from: m */
    public String f717m = "";

    /* renamed from: p */
    public Handler f720p = new Handler();

    /* renamed from: q */
    public boolean f721q = true;

    /* renamed from: r */
    public boolean f722r = true;

    /* renamed from: a */
    public Runnable f705a = new Runnable() { // from class: com.adbert.b.d.8
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (C1426d.this.f718n != null) {
                    C1426d.this.f718n.setVisibility(8);
                }
            } catch (Exception e) {
                C1402g.m37141a(e);
            }
        }
    };

    /* renamed from: b */
    public C1448h.AbstractC1453a f706b = new C1448h.AbstractC1453a() { // from class: com.adbert.b.d.9
        @Override // com.adbert.p015b.C1448h.AbstractC1453a
        public void OnCompletion() {
            C1426d.this.f715k.setMax(100);
            C1426d.this.f715k.setProgress(100);
            C1426d.this.f714j.setText(C1426d.this.m37082a(0));
            C1426d dVar = C1426d.this;
            dVar.f713i = dVar.f726v.getDuration();
            C1426d.this.f710f.closeAdView();
        }

        @Override // com.adbert.p015b.C1448h.AbstractC1453a
        public void OnError() {
            C1426d.this.f710f.finish();
        }

        @Override // com.adbert.p015b.C1448h.AbstractC1453a
        public void onPrepared(MediaPlayer mediaPlayer) {
            C1426d.this.m37063g();
            if (C1426d.this.f713i > 0) {
                try {
                    C1426d.this.f726v.seekTo(C1426d.this.f713i);
                } catch (Exception e) {
                    C1402g.m37141a(e);
                }
                mediaPlayer.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.adbert.b.d.9.1
                    @Override // android.media.MediaPlayer.OnSeekCompleteListener
                    public void onSeekComplete(MediaPlayer mediaPlayer2) {
                        C1426d.this.f726v.start();
                    }
                });
                return;
            }
            C1426d.this.f726v.start();
        }

        @Override // com.adbert.p015b.C1448h.AbstractC1453a
        public void onSeekChange() {
            if (C1426d.this.f726v.isPlaying()) {
                C1426d.this.m37057j();
                C1426d.this.f715k.setMax(C1426d.this.f726v.getDuration());
                C1426d.this.f715k.setProgress(C1426d.this.f726v.getCurrentPosition());
                C1426d dVar = C1426d.this;
                dVar.f713i = dVar.f726v.getCurrentPosition();
                if (C1426d.this.f708d != null && C1426d.this.f726v.getCurrentPosition() >= C1426d.this.f708d.f408c) {
                    C1426d.this.f710f.callReturnEvent();
                }
                try {
                    C1426d.this.f714j.setText(C1426d.this.m37082a((int) Math.ceil((C1426d.this.f726v.getDuration() - C1426d.this.f726v.getCurrentPosition()) / 1000.0d)));
                } catch (Exception e) {
                    C1402g.m37141a(e);
                }
            }
        }
    };

    /* renamed from: com.adbert.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/b/d$a.class */
    public enum EnumC1437a {
        under_volume,
        leftAndBottom,
        leftAndTop
    }

    /* renamed from: com.adbert.b.d$b */
    /* loaded from: classes-dex2jar.jar:com/adbert/b/d$b.class */
    public enum EnumC1438b {
        CPMVideo_V,
        CPMVideo_H,
        CPV_V,
        CPV_H,
        NativeVideo
    }

    public C1426d(Context context, C1377b bVar, int i, C1391a aVar) {
        super(context);
        this.f707c = context;
        this.f708d = bVar;
        this.f709e = (int) (i * 0.8d);
        this.f723s = i;
        C1406h hVar = new C1406h(context);
        this.f712h = hVar.m37121a();
        this.f711g = hVar.m37118b();
        this.f710f = aVar;
        setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1426d.this.f710f.closeAdView();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m37082a(int i) {
        if (this.f717m.isEmpty()) {
            this.f717m = new String(Base64.decode(EnumC1383c.reciprocal.m37192a(), 0));
        }
        return this.f717m.substring(0, 2) + " " + i + " " + this.f717m.substring(2);
    }

    /* renamed from: a */
    private void m37075a(boolean z, boolean z2, boolean z3) {
        if (z && z2) {
            this.f725u = EnumC1438b.CPMVideo_V;
        } else if (z && !z2) {
            this.f725u = EnumC1438b.CPMVideo_H;
        } else if (z3) {
            this.f725u = EnumC1438b.NativeVideo;
        } else if (z || z2) {
            this.f725u = EnumC1438b.CPV_V;
        } else {
            this.f725u = EnumC1438b.CPV_H;
        }
    }

    /* renamed from: e */
    private boolean m37067e() {
        return C1402g.m37136b(this.f707c);
    }

    /* renamed from: f */
    private void m37065f() {
        LinearLayout linearLayout = new LinearLayout(this.f707c);
        linearLayout.setOrientation(1);
        addView(linearLayout, m37076a(true, false));
        RelativeLayout relativeLayout = new RelativeLayout(this.f707c);
        linearLayout.addView(relativeLayout, m37076a(true, false));
        relativeLayout.getLayoutParams().height = getVideoHeight();
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1426d.this.m37061h();
            }
        });
        if (m37059i()) {
            for (int i = 0; i < 2; i++) {
                View view = new View(this.f707c);
                addView(view);
                view.getLayoutParams().width = (int) this.f712h;
                view.getLayoutParams().height = getBgColorAreaHeight();
                view.setBackgroundColor(EnumC1384d.cpmBg.m37188a());
                if (i == 1) {
                    ((RelativeLayout.LayoutParams) view.getLayoutParams()).addRule(12);
                }
            }
        }
        setVideoView(relativeLayout);
        setLoadingBar(linearLayout);
        if (getViewType() == EnumC1438b.CPMVideo_V) {
            setCPMVideoImage(linearLayout);
        }
        if (m37059i() || getViewType() == EnumC1438b.CPV_H) {
            C1425c cVar = new C1425c(getContext(), this.f723s);
            addView(cVar);
            ((RelativeLayout.LayoutParams) cVar.getLayoutParams()).addRule(11);
            int i2 = (int) (this.f709e * 1.4d);
            cVar.getLayoutParams().width = i2;
            cVar.getLayoutParams().height = i2;
            cVar.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.d.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    C1426d.this.f710f.closeVideo();
                }
            });
        }
        if (m37059i() || getViewType() == EnumC1438b.NativeVideo) {
            ((RelativeLayout.LayoutParams) linearLayout.getLayoutParams()).addRule(13);
        } else if (!this.f721q) {
            ((RelativeLayout.LayoutParams) linearLayout.getLayoutParams()).addRule(12);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m37063g() {
        if (!this.f708d.f420o) {
            this.f716l.setImageDrawable(EnumC1385e.mute.m37186a(getContext()));
            C1448h hVar = this.f726v;
            if (hVar != null) {
                hVar.m37046c();
                return;
            }
            return;
        }
        this.f716l.setImageDrawable(EnumC1385e.sound.m37186a(getContext()));
        C1448h hVar2 = this.f726v;
        if (hVar2 != null) {
            hVar2.m37048b();
        }
    }

    private int getBgColorAreaHeight() {
        if (!m37067e()) {
            return 0;
        }
        return (int) ((this.f711g - ((int) (this.f712h * 1.5f))) / 2.0f);
    }

    private EnumC1437a getCIPostion() {
        if (getViewType() == EnumC1438b.CPMVideo_V) {
            return EnumC1437a.leftAndBottom;
        }
        if (!(getViewType() == EnumC1438b.CPMVideo_H || getViewType() == EnumC1438b.NativeVideo)) {
            return (getViewType() == EnumC1438b.CPV_H || this.f721q) ? EnumC1437a.under_volume : getViewType() == EnumC1438b.CPV_V ? EnumC1437a.leftAndTop : EnumC1437a.leftAndBottom;
        }
        return EnumC1437a.under_volume;
    }

    private int getImageHeight() {
        if (m37067e()) {
            return ((int) (this.f712h * 1.5f)) - getVideoHeight();
        }
        return 0;
    }

    private int getVideoHeight() {
        if (getViewType() != EnumC1438b.NativeVideo && !m37067e()) {
            return !this.f722r ? (((int) this.f711g) - 3) - C1402g.m37149a((Activity) this.f707c) : ((int) this.f711g) - 3;
        }
        return (int) (this.f712h * 0.5625f);
    }

    private EnumC1438b getViewType() {
        return this.f725u;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m37061h() {
        int i = 0;
        if (this.f708d.f421p || this.f718n == null) {
            boolean z = false;
            while (true) {
                boolean[] zArr = this.f708d.f414i;
                if (i < zArr.length) {
                    z = z;
                    if (!z) {
                        z = z;
                        if (zArr[i]) {
                            this.f710f.endingCardAction(i);
                            z = true;
                        }
                    }
                    i++;
                } else {
                    return;
                }
            }
        } else {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                boolean[] zArr2 = this.f708d.f414i;
                if (i2 >= zArr2.length) {
                    break;
                }
                i3 = i3;
                if (zArr2[i2]) {
                    i3++;
                }
                i2++;
            }
            if (i3 > 0) {
                this.f718n.setVisibility(0);
                this.f720p.removeCallbacks(this.f705a);
                if (this.f726v.isPlaying()) {
                    this.f720p.postDelayed(this.f705a, TooltipCompatHandler.HOVER_HIDE_TIMEOUT_SHORT_MS);
                }
            }
        }
    }

    /* renamed from: i */
    private boolean m37059i() {
        return getViewType() == EnumC1438b.CPMVideo_V || getViewType() == EnumC1438b.CPMVideo_H;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m37057j() {
        if (this.f713i > 0 && this.f719o.getVisibility() == 0) {
            this.f719o.setVisibility(8);
        }
        if (this.f714j.getVisibility() != 0) {
            this.f714j.setVisibility(0);
        }
        if (this.f715k.getVisibility() != 0) {
            this.f715k.setVisibility(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setCPMVideoImage(android.view.ViewGroup r7) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.adbert.p015b.C1426d.setCPMVideoImage(android.view.ViewGroup):void");
    }

    private void setEndingCard(ViewGroup viewGroup) {
        int i = (int) (this.f709e * 1.3d);
        if (getViewType() == EnumC1438b.CPMVideo_V) {
            this.f718n = new C1454i(this.f707c, 0);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            viewGroup.addView(this.f718n, layoutParams);
            layoutParams.addRule(12);
            this.f718n.getLayoutParams().height = i;
        } else {
            this.f718n = new C1454i(this.f707c, 1);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -1);
            viewGroup.addView(this.f718n, layoutParams2);
            layoutParams2.addRule(11);
            this.f718n.getLayoutParams().width = i;
        }
        this.f718n.setVisibility(8);
        this.f718n.m37045a(this.f708d.f414i, this.f709e, new C1454i.AbstractC1456a() { // from class: com.adbert.b.d.7
            @Override // com.adbert.p015b.C1454i.AbstractC1456a
            /* renamed from: a */
            public void mo37044a(int i2) {
                C1426d.this.f710f.endingCardAction(i2);
            }
        });
    }

    private void setLoadingBar(ViewGroup viewGroup) {
        this.f715k = new ProgressBar(this.f707c, null, 16842872);
        viewGroup.addView(this.f715k, m37076a(true, false));
        this.f715k.getLayoutParams().height = 3;
        this.f715k.getProgressDrawable().setColorFilter(SupportMenu.CATEGORY_MASK, PorterDuff.Mode.MULTIPLY);
        this.f715k.setMax(100);
        this.f715k.setProgress(0);
    }

    private void setVideoView(ViewGroup viewGroup) {
        FrameLayout frameLayout = new FrameLayout(this.f707c);
        viewGroup.addView(frameLayout);
        this.f716l = new ImageView(this.f707c);
        EnumC1437a cIPostion = getCIPostion();
        if (cIPostion == EnumC1437a.under_volume) {
            LinearLayout linearLayout = new LinearLayout(this.f707c);
            linearLayout.setOrientation(1);
            ImageView imageView = this.f716l;
            int i = this.f709e;
            linearLayout.addView(imageView, i, i);
            this.f710f.setLogo(linearLayout, false);
            viewGroup.addView(linearLayout);
        } else if (cIPostion == EnumC1437a.leftAndBottom) {
            View view = this.f716l;
            int i2 = this.f709e;
            viewGroup.addView(view, i2, i2);
            this.f710f.setLogo(this, true);
        } else if (cIPostion == EnumC1437a.leftAndTop) {
            LinearLayout linearLayout2 = new LinearLayout(this.f707c);
            linearLayout2.setOrientation(1);
            ImageView imageView2 = new ImageView(this.f707c);
            int i3 = this.f709e;
            linearLayout2.addView(imageView2, i3 / 2, i3 / 2);
            this.f710f.setLogo(linearLayout2, false);
            addView(linearLayout2);
            View view2 = this.f716l;
            int i4 = this.f709e;
            viewGroup.addView(view2, i4, i4);
        }
        this.f716l.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.d.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view3) {
                C1426d.this.f708d.f420o = !C1426d.this.f708d.f420o;
                C1426d.this.m37063g();
            }
        });
        this.f714j = new TextView(this.f707c);
        this.f714j.setShadowLayer(1.0f, 1.0f, 1.0f, -7829368);
        this.f714j.setTextColor(-1);
        viewGroup.addView(this.f714j);
        ((RelativeLayout.LayoutParams) this.f714j.getLayoutParams()).addRule(12);
        if (!this.f708d.f421p) {
            setEndingCard(viewGroup);
        }
        this.f726v = new C1448h(this.f707c, (int) this.f712h, getVideoHeight());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        frameLayout.addView(this.f726v, layoutParams);
        this.f726v.setListener(this.f706b);
        this.f719o = new FrameLayout(this.f707c);
        this.f719o.setBackgroundColor(-16777216);
        frameLayout.addView(this.f719o, m37076a(true, false));
        this.f719o.getLayoutParams().height = getVideoHeight();
        String str = this.f708d.f411f;
        String str2 = str;
        if (new File(C1402g.m37135b(this.f707c, str)).exists()) {
            str2 = C1402g.m37135b(this.f707c, str);
        }
        this.f726v.setUrl(str2);
    }

    /* renamed from: a */
    public ViewGroup.LayoutParams m37076a(boolean z, boolean z2) {
        int i = -1;
        int i2 = z ? -1 : -2;
        if (!z2) {
            i = -2;
        }
        return new ViewGroup.LayoutParams(i2, i);
    }

    /* renamed from: a */
    public void m37083a() {
        m37075a(false, C1402g.m37136b(this.f707c), true);
        this.f721q = false;
        this.f722r = false;
        m37065f();
    }

    /* renamed from: a */
    public void m37081a(int i, int i2) {
        this.f712h = i;
        this.f711g = i2;
    }

    /* renamed from: a */
    public void m37080a(int i, boolean z, boolean z2) {
        m37075a(false, C1402g.m37136b(this.f707c), false);
        this.f713i = i;
        this.f721q = z;
        this.f722r = z2;
        m37065f();
    }

    /* renamed from: a */
    public void m37077a(boolean z) {
        m37075a(true, m37067e(), false);
        m37065f();
    }

    /* renamed from: b */
    public void m37074b() {
        C1448h hVar = this.f726v;
        if (hVar != null) {
            hVar.pause();
            this.f719o.setVisibility(0);
        }
    }

    /* renamed from: c */
    public void m37071c() {
        C1448h hVar = this.f726v;
        if (hVar != null) {
            hVar.start();
        }
    }

    /* renamed from: d */
    public void m37069d() {
        C1448h hVar = this.f726v;
        if (hVar != null) {
            hVar.m37052a();
        }
        Bitmap bitmap = this.f724t;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.f724t.recycle();
            this.f724t = null;
        }
    }

    public int getSeekTo() {
        C1448h hVar = this.f726v;
        return hVar != null ? hVar.getCurrentPosition() : this.f713i;
    }
}
