package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.widget.RelativeLayout;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import com.flurry.sdk.C3088fj;
import com.flurry.sdk.C3096fl;
import com.flurry.sdk.C3112fs;
import com.flurry.sdk.C3115fu;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
@SuppressLint({"ViewConstructor"})
/* renamed from: com.flurry.sdk.fc */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fc.class */
public abstract class AbstractC3066fc extends AbstractDialogInterface$OnKeyListenerC3134fw implements C3088fj.AbstractC3092a {

    /* renamed from: e */
    public static final String f4871e = AbstractC3066fc.class.getSimpleName();

    /* renamed from: c */
    public C3088fj f4874c;

    /* renamed from: a */
    public boolean f4872a = false;

    /* renamed from: b */
    public int f4873b = 0;

    /* renamed from: d */
    public boolean f4875d = false;

    /* renamed from: f */
    public boolean f4876f = true;

    /* renamed from: g */
    public boolean f4877g = false;

    /* renamed from: h */
    public boolean f4878h = false;

    /* renamed from: i */
    public final AbstractC3107fp f4879i = new AbstractC3107fp() { // from class: com.flurry.sdk.fc.2
        @Override // com.flurry.sdk.AbstractC3107fp
        /* renamed from: a */
        public final void mo32301a() {
            int p = AbstractC3066fc.this.f4874c.m33126p();
            C3356jq.m32615a(3, AbstractC3066fc.f4871e, "Pause full screen video: has no window focus");
            AbstractC3066fc.this.f4874c.m33136b(p);
        }
    };

    /* renamed from: j */
    public final AbstractC3107fp f4880j = new AbstractC3107fp() { // from class: com.flurry.sdk.fc.3
        @Override // com.flurry.sdk.AbstractC3107fp
        /* renamed from: a */
        public final void mo32301a() {
            C3356jq.m32615a(3, AbstractC3066fc.f4871e, "Play full screen video: get window focus");
            AbstractC3066fc.this.f4874c.m33127j();
        }
    };

    /* renamed from: com.flurry.sdk.fc$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fc$a.class */
    public abstract class AbstractC3070a implements AbstractC3108fq {
        public AbstractC3070a() {
        }

        public /* synthetic */ AbstractC3070a(AbstractC3066fc fcVar, byte b) {
            this();
        }

        @Override // com.flurry.sdk.AbstractC3108fq
        /* renamed from: b */
        public final boolean mo33056b() {
            C3088fj fjVar = AbstractC3066fc.this.f4874c;
            if (fjVar == null) {
                C3356jq.m32615a(3, AbstractC3066fc.f4871e, "Controller has been removed, cancel video tracking");
                return false;
            }
            C3096fl flVar = fjVar.f4970b;
            if (flVar != null && flVar.isShown() && !flVar.m33077d()) {
                return true;
            }
            C3356jq.m32615a(3, AbstractC3066fc.f4871e, "Remove video tracking for full screen ads");
            return false;
        }
    }

    /* renamed from: com.flurry.sdk.fc$b */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fc$b.class */
    public final class C3071b extends AbstractC3070a {
        public C3071b() {
            super(AbstractC3066fc.this, (byte) 0);
        }

        public /* synthetic */ C3071b(AbstractC3066fc fcVar, byte b) {
            this();
        }

        @Override // com.flurry.sdk.AbstractC3108fq
        /* renamed from: a */
        public final boolean mo33057a() {
            C3088fj fjVar = AbstractC3066fc.this.f4874c;
            if (fjVar == null) {
                C3356jq.m32615a(3, AbstractC3066fc.f4871e, "Controller has been removed");
                return false;
            }
            C3096fl flVar = fjVar.f4970b;
            AbstractC3093fk fkVar = fjVar.f4971c;
            boolean z = false;
            if (flVar != null) {
                z = false;
                if (fkVar != null) {
                    if (!flVar.isShown()) {
                        z = false;
                    } else {
                        z = false;
                        if (!flVar.hasWindowFocus()) {
                            z = false;
                            if (!fkVar.hasWindowFocus()) {
                                z = false;
                                if (flVar.isPlaying()) {
                                    z = false;
                                    if (!AbstractC3066fc.this.f4878h) {
                                        z = true;
                                        AbstractC3066fc.this.f4878h = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: com.flurry.sdk.fc$c */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fc$c.class */
    public final class C3072c extends AbstractC3070a {
        public C3072c() {
            super(AbstractC3066fc.this, (byte) 0);
        }

        public /* synthetic */ C3072c(AbstractC3066fc fcVar, byte b) {
            this();
        }

        @Override // com.flurry.sdk.AbstractC3108fq
        /* renamed from: a */
        public final boolean mo33057a() {
            C3088fj fjVar = AbstractC3066fc.this.f4874c;
            if (fjVar == null) {
                C3356jq.m32615a(3, AbstractC3066fc.f4871e, "Controller has been removed");
                return false;
            }
            C3096fl flVar = fjVar.f4970b;
            AbstractC3093fk fkVar = fjVar.f4971c;
            if (flVar == null || fkVar == null || !flVar.isShown()) {
                return false;
            }
            if ((!flVar.hasWindowFocus() && !fkVar.hasWindowFocus()) || flVar.isPlaying() || !AbstractC3066fc.this.f4878h) {
                return false;
            }
            AbstractC3066fc.this.f4878h = false;
            return true;
        }
    }

    public AbstractC3066fc(Context context, AbstractC3518x xVar, AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a aVar) {
        super(context, xVar, aVar);
        setOrientation(4);
    }

    /* renamed from: D */
    public static void m33169D() {
        if (C3109fr.m33055a().m33050d()) {
            C3109fr.m33055a().m33052b();
        }
    }

    /* renamed from: x */
    public static void m33155x() {
        C3115fu fuVar = new C3115fu();
        fuVar.f5049d = C3115fu.EnumC3116a.f5051b;
        C3345jm.m32636a().m32635a(fuVar);
    }

    /* renamed from: A */
    public final void m33172A() {
        if (this.f4874c != null) {
            C3356jq.m32615a(3, f4871e, "Video pause: ");
            C3076ff e = getAdController().m33525e();
            int p = this.f4874c.m33126p();
            if (p > 0) {
                e.f4893a = p;
                getAdController().m33536a(e);
            }
            getAdController().m33525e().f4902j = getViewParams();
            this.f4874c.m33128i();
            this.f4877g = true;
        }
    }

    /* renamed from: B */
    public final void m33171B() {
        if ((getAdController() == null || getAdController().m33525e() == null) ? false : getAdController().m33525e().f4895c) {
            C3356jq.m32613a(f4871e, "VideoClose: Firing video close.");
            m33165a(EnumC2874bi.EV_VIDEO_CLOSED, Collections.emptyMap());
        }
    }

    /* renamed from: C */
    public final void m33170C() {
        C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.fc.1
            @Override // com.flurry.sdk.AbstractRunnableC3447lc
            /* renamed from: a */
            public final void mo32300a() {
                C3356jq.m32615a(3, AbstractC3066fc.f4871e, "Set full screen video tracking");
                C3109fr.m33055a().m33054a(new C3071b(AbstractC3066fc.this, (byte) 0), AbstractC3066fc.this.f4879i);
                C3109fr.m33055a().m33054a(new C3072c(AbstractC3066fc.this, (byte) 0), AbstractC3066fc.this.f4880j);
            }
        });
    }

    /* renamed from: a */
    public void mo33123a() {
        C3356jq.m32615a(3, f4871e, "Video Close clicked: ");
        m33165a(EnumC2874bi.EV_AD_WILL_CLOSE, Collections.emptyMap());
        onViewClose();
    }

    /* renamed from: a */
    public void mo33167a(float f) {
        C3088fj fjVar = this.f4874c;
        if (fjVar != null) {
            this.f4873b = 100;
            this.f4875d = !fjVar.m33133e() && this.f4874c.m33131f() > 0;
            C3112fs fsVar = getAdController().f4111b.f4156k.f5045b;
            fsVar.m33047a(this.f4875d, this.f4873b, f);
            for (C3112fs.C3113a aVar : fsVar.f5036b) {
                if (aVar.m33046a(true, this.f4875d, this.f4873b, f)) {
                    int i = aVar.f5038a.f4552a;
                    m33165a(i == 0 ? EnumC2874bi.EV_VIDEO_VIEWED : EnumC2874bi.EV_VIDEO_VIEWED_3P, mo33162b(i));
                    String str = f4871e;
                    C3356jq.m32615a(3, str, "BeaconTest: Video view event fired, adObj (type=" + i + "): " + getAdObject());
                }
            }
        }
    }

    /* renamed from: a */
    public void mo33166a(int i) {
        C3088fj fjVar = this.f4874c;
        if (fjVar != null) {
            C3096fl flVar = fjVar.f4970b;
            if (flVar != null && (flVar.f4987e.equals(C3096fl.EnumC3103b.STATE_PREPARED) || flVar.f4987e.equals(C3096fl.EnumC3103b.STATE_PAUSED))) {
                dismissProgressDialog();
                this.f4874c.m33132e(i);
            } else {
                showProgressDialog();
            }
            this.f4874c.m33139a(getViewParams());
            this.f4877g = false;
        }
    }

    /* renamed from: a */
    public final void m33165a(EnumC2874bi biVar, Map<String, String> map) {
        C3007du.m33321a(biVar, map, getContext(), getAdObject(), getAdController(), 0);
    }

    /* renamed from: a */
    public void mo33122a(String str) {
        String str2 = f4871e;
        C3356jq.m32615a(3, str2, "Video Prepared: " + str);
        C3088fj fjVar = this.f4874c;
        if (fjVar != null) {
            fjVar.m33139a(getViewParams());
        }
        if (this.f4877g) {
            dismissProgressDialog();
            return;
        }
        int i = getAdController().m33525e().f4893a;
        if (this.f4874c != null && (this.f4876f || i > 3)) {
            mo33166a(i);
        }
        if (getAdController().m33535a(EnumC2874bi.EV_RENDERED.f4289an)) {
            m33165a(EnumC2874bi.EV_RENDERED, Collections.emptyMap());
            getAdController().m33530b(EnumC2874bi.EV_RENDERED.f4289an);
        }
        dismissProgressDialog();
    }

    /* renamed from: a */
    public void mo33121a(String str, float f, float f2) {
        mo33167a(f2);
        if (this.f4874c != null) {
            C3076ff e = getAdController().m33525e();
            if (f2 >= 0.0f && !e.f4895c) {
                e.f4895c = true;
                mo33157p();
            }
            float f3 = f2 / f;
            if (f3 >= 0.25f && !e.f4896d) {
                e.f4896d = true;
                m33165a(EnumC2874bi.EV_VIDEO_FIRST_QUARTILE, mo33162b(-1));
                String str2 = f4871e;
                C3356jq.m32615a(3, str2, "BeaconTest: Video 1st quartile event fired, adObj: " + getAdObject());
            }
            if (f3 >= 0.5f && !e.f4897e) {
                e.f4897e = true;
                m33165a(EnumC2874bi.EV_VIDEO_MIDPOINT, mo33162b(-1));
                String str3 = f4871e;
                C3356jq.m32615a(3, str3, "BeaconTest: Video 2nd quartile event fired, adObj: " + getAdObject());
            }
            if (f3 >= 0.75f && !e.f4898f) {
                e.f4898f = true;
                m33165a(EnumC2874bi.EV_VIDEO_THIRD_QUARTILE, mo33162b(-1));
                String str4 = f4871e;
                C3356jq.m32615a(3, str4, "BeaconTest: Video 3rd quartile event fired, adObj: " + getAdObject());
            }
        }
        C3088fj fjVar = this.f4874c;
        if (fjVar != null) {
            fjVar.m33139a(getViewParams());
        }
    }

    /* renamed from: a */
    public void mo33120a(String str, int i, int i2) {
        String str2 = f4871e;
        C3356jq.m32615a(3, str2, "Video Error: " + str);
        C3088fj fjVar = this.f4874c;
        if (fjVar != null) {
            fjVar.m33135c();
        }
        onViewError();
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", Integer.toString(EnumC2873bh.kVideoPlaybackError.f4222z));
        hashMap.put("frameworkError", Integer.toString(i));
        hashMap.put("implError", Integer.toString(i2));
        m33165a(EnumC2874bi.EV_RENDER_FAILED, hashMap);
        dismissProgressDialog();
        setOrientation(4);
    }

    /* renamed from: b */
    public Map<String, String> mo33162b(int i) {
        HashMap hashMap = new HashMap();
        String str = "0";
        hashMap.put("vsa", "0");
        String str2 = "1";
        if (this.f4876f) {
            str = "1";
        }
        hashMap.put("va", str);
        hashMap.put("vph", String.valueOf(this.f4874c.m33140a()));
        hashMap.put("vpw", String.valueOf(this.f4874c.m33137b()));
        hashMap.put("ve", "1");
        hashMap.put("vpi", "1");
        boolean e = this.f4874c.m33133e();
        hashMap.put("vm", String.valueOf(e));
        if (e || this.f4874c.m33131f() <= 0) {
            str2 = "2";
        }
        hashMap.put("api", str2);
        hashMap.put("atv", String.valueOf(getAdController().f4111b.f4156k.f5045b.f5035a));
        if (i > 0) {
            hashMap.put("vt", String.valueOf(i));
        }
        return hashMap;
    }

    /* renamed from: b */
    public void mo33119b() {
        C3356jq.m32615a(3, f4871e, "Video Play clicked: ");
        mo33166a(0);
    }

    /* renamed from: b */
    public void mo33118b(String str) {
        String str2 = f4871e;
        C3356jq.m32615a(3, str2, "Video Completed: " + str);
        boolean z = true;
        if (getAdFrameIndex() != getAdUnit().f4440f.size() - 1) {
            z = false;
        }
        m33165a(EnumC2874bi.EV_VIDEO_COMPLETED, mo33162b(-1));
        String str3 = f4871e;
        C3356jq.m32615a(3, str3, "BeaconTest: Video completed event fired, adObj: " + getAdObject());
        setOrientation(4);
        if (z) {
            m33155x();
        }
    }

    /* renamed from: c */
    public final Uri m33158c(String str) {
        Uri uri;
        File c;
        try {
            C3356jq.m32615a(3, f4871e, "Precaching: Getting video from cache: " + str);
            C2806af afVar = C3484p.m32358a().f6006h;
            uri = null;
            if (C2806af.m33637c(getAdObject(), str) != null) {
                uri = Uri.parse("file://" + c.getAbsolutePath());
            }
        } catch (Exception e) {
            C3356jq.m32614a(3, f4871e, "Precaching: Error accessing cached file.", e);
            uri = null;
        }
        Uri uri2 = uri;
        if (uri == null) {
            C3356jq.m32615a(3, f4871e, "Precaching: Error using cached file. Loading with url: " + str);
            uri2 = Uri.parse(str);
        }
        return uri2;
    }

    /* renamed from: c */
    public void mo33160c() {
        if (this.f4874c != null) {
            C3356jq.m32615a(3, f4871e, "Video suspend: ");
            m33172A();
            this.f4874c.m33135c();
        }
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void cleanupLayout() {
        mo33160c();
        dismissProgressDialog();
        C3088fj fjVar = this.f4874c;
        if (fjVar != null) {
            AbstractC3093fk fkVar = fjVar.f4971c;
            if (fkVar != null) {
                fkVar.mo33100i();
                fjVar.f4971c = null;
            }
            if (fjVar.f4970b != null) {
                fjVar.f4970b = null;
            }
            this.f4874c = null;
        }
    }

    @Override // com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: d */
    public final void mo33117d(int i) {
        C3076ff e = getAdController().m33525e();
        if (i != Integer.MIN_VALUE) {
            String str = f4871e;
            C3356jq.m32615a(3, str, "PlayPause: pauseVideo() Video paused position: " + i + " adObject: " + getAdObject().mo32283d());
            e.f4893a = i;
            getAdController().m33536a(e);
        }
    }

    @Override // com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: e */
    public final void mo33116e(int i) {
        if (i > 0) {
            getAdController().m33525e().f4893a = i;
        }
    }

    public boolean getVideoCompletedFromStateOrVideo() {
        C3076ff e = getAdController().m33525e();
        C3088fj fjVar = this.f4874c;
        if (fjVar != null) {
            return e.f4899g || fjVar.f4970b.m33077d();
        }
        return false;
    }

    public C3088fj getVideoController() {
        return this.f4874c;
    }

    public int getVideoPosition() {
        return getAdController().m33525e().f4893a;
    }

    public abstract int getViewParams();

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void initLayout() {
        setBackgroundColor(-16777216);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        addView(this.f4874c.f4972d, layoutParams);
        showProgressDialog();
    }

    /* renamed from: n */
    public void mo33115n() {
    }

    /* renamed from: o */
    public void mo33114o() {
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void onActivityDestroy() {
        super.onActivityDestroy();
        mo33156q();
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void onActivityPause() {
        super.onActivityPause();
        m33172A();
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void onActivityResume() {
        super.onActivityResume();
        if (this.f4877g) {
            int i = getAdController().m33525e().f4893a;
            if (this.f4874c == null) {
                return;
            }
            if (this.f4876f || i > 3) {
                mo33166a(i);
            }
        }
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void onActivityStop() {
        super.onActivityStop();
        mo33160c();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        setOrientation(4);
    }

    @Override // com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw
    public void onViewLoadTimeout() {
        m33165a(EnumC2874bi.EV_AD_WILL_CLOSE, Collections.emptyMap());
    }

    /* renamed from: p */
    public void mo33157p() {
        getAdController().m33525e().f4895c = true;
        m33165a(EnumC2874bi.EV_VIDEO_START, mo33162b(-1));
        String str = f4871e;
        C3356jq.m32615a(3, str, "BeaconTest: Video start event fired, adObj: " + getAdObject());
    }

    /* renamed from: q */
    public void mo33156q() {
        C2806af afVar = C3484p.m32358a().f6006h;
        C2806af.m33650a(getAdObject());
        C3484p.m32358a().f6006h.m33632e();
    }

    public void setAutoPlay(boolean z) {
        String str = f4871e;
        C3356jq.m32615a(3, str, "Video setAutoPlay: " + z);
        this.f4876f = z;
    }

    public void setVideoUri(Uri uri) {
        C3096fl flVar;
        String str = f4871e;
        C3356jq.m32615a(3, str, "Video set video uri: " + uri);
        if (this.f4874c != null) {
            C3076ff e = getAdController().m33525e();
            int h = e.f4893a > this.f4874c.m33129h() ? e.f4893a : this.f4874c.m33129h();
            C3088fj fjVar = this.f4874c;
            if (uri != null && (flVar = fjVar.f4970b) != null) {
                if (uri == null) {
                    C3356jq.m32615a(3, C3096fl.f4982a, "Video setVideoURI cannot have null value.");
                    return;
                }
                flVar.f4986d = h;
                flVar.f4985c = uri;
            }
        }
    }

    @Override // com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: y */
    public final void mo33113y() {
        C3356jq.m32615a(3, f4871e, "Video More Info clicked: ");
        m33165a(EnumC2874bi.EV_CLICKED, Collections.emptyMap());
    }

    @Override // com.flurry.sdk.C3088fj.AbstractC3092a
    /* renamed from: z */
    public final void mo33112z() {
        int i = getAdController().m33525e().f4893a;
        C3088fj fjVar = this.f4874c;
        if (fjVar != null && !fjVar.f4970b.isPlaying()) {
            String str = f4871e;
            C3356jq.m32615a(3, str, "PlayPause: onResumeVideoWithState() Play video position: " + i + " adObject: " + getAdObject().mo32283d());
            this.f4874c.m33132e(i);
            this.f4874c.m33139a(getViewParams());
            this.f4877g = false;
        }
    }
}
