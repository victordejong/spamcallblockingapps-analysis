package p131c.p161d.p162a.p163b.p166h;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import com.google.ads.mediation.inmobi.InMobiAdapter;
import com.google.ads.mediation.inmobi.MandatoryParamException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.inmobi.ads.InMobiNative;
import com.mopub.mobileads.dfp.adapters.DownloadDrawablesAsync;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p162a.p163b.p166h.AsyncTaskC2466a;
/* renamed from: c.d.a.b.h.c */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/c.class */
public class C2470c extends NativeAppInstallAdMapper {

    /* renamed from: u */
    public static final String f9423u = "c";

    /* renamed from: p */
    public final InMobiNative f9424p;

    /* renamed from: q */
    public final Boolean f9425q;

    /* renamed from: r */
    public final MediationNativeListener f9426r;

    /* renamed from: s */
    public final InMobiAdapter f9427s;

    /* renamed from: t */
    public final HashMap<String, String> f9428t = new HashMap<>();

    /* renamed from: c.d.a.b.h.c$a */
    /* loaded from: classes-dex2jar.jar:c/d/a/b/h/c$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC2471a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ RelativeLayout f9429a;

        /* renamed from: b */
        public final /* synthetic */ Context f9430b;

        public ViewTreeObserver$OnGlobalLayoutListenerC2471a(RelativeLayout relativeLayout, Context context) {
            this.f9429a = relativeLayout;
            this.f9430b = context;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT >= 16) {
                this.f9429a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            } else {
                this.f9429a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
            int width = ((View) this.f9429a.getParent()).getWidth();
            String str = C2470c.f9423u;
            Log.d(str, "parent layout width is " + width);
            View primaryViewOfWidth = C2470c.this.f9424p.getPrimaryViewOfWidth(this.f9430b, null, this.f9429a, width);
            if (primaryViewOfWidth != null) {
                this.f9429a.addView(primaryViewOfWidth);
            }
        }
    }

    /* renamed from: c.d.a.b.h.c$b */
    /* loaded from: classes-dex2jar.jar:c/d/a/b/h/c$b.class */
    public class C2472b implements AsyncTaskC2466a.AbstractC2468b {

        /* renamed from: a */
        public final /* synthetic */ Uri f9432a;

        /* renamed from: b */
        public final /* synthetic */ Double f9433b;

        public C2472b(Uri uri, Double d) {
            this.f9432a = uri;
            this.f9433b = d;
        }

        @Override // p131c.p161d.p162a.p163b.p166h.AsyncTaskC2466a.AbstractC2468b
        public void onDownloadFailure() {
            C2470c.this.f9426r.mo16618a(C2470c.this.f9427s, 3);
        }

        @Override // p131c.p161d.p162a.p163b.p166h.AsyncTaskC2466a.AbstractC2468b
        public void onDownloadSuccess(HashMap<String, Drawable> hashMap) {
            Drawable drawable = hashMap.get(DownloadDrawablesAsync.KEY_ICON);
            C2470c.this.setIcon(new C2475f(drawable, this.f9432a, this.f9433b.doubleValue()));
            ArrayList arrayList = new ArrayList();
            arrayList.add(new C2475f(new ColorDrawable(0), null, 1.0d));
            C2470c.this.setImages(arrayList);
            if (drawable != null) {
                C2470c.this.f9426r.mo16614a(C2470c.this.f9427s, C2470c.this);
            } else {
                C2470c.this.f9426r.mo16618a(C2470c.this.f9427s, 2);
            }
        }
    }

    public C2470c(InMobiAdapter inMobiAdapter, InMobiNative inMobiNative, Boolean bool, MediationNativeListener mediationNativeListener) {
        this.f9427s = inMobiAdapter;
        this.f9424p = inMobiNative;
        this.f9425q = bool;
        this.f9426r = mediationNativeListener;
    }

    /* renamed from: a */
    public void m29705a(Context context) {
        try {
            if (this.f9424p.getCustomAdContent() != null) {
                JSONObject customAdContent = this.f9424p.getCustomAdContent();
                String adTitle = this.f9424p.getAdTitle();
                C2469b.m29711a(adTitle, "title");
                setHeadline(adTitle);
                String adDescription = this.f9424p.getAdDescription();
                C2469b.m29711a(adDescription, "description");
                setBody(adDescription);
                String adCtaText = this.f9424p.getAdCtaText();
                C2469b.m29711a(adCtaText, "cta");
                setCallToAction(adCtaText);
                String adLandingPageUrl = this.f9424p.getAdLandingPageUrl();
                C2469b.m29711a(adLandingPageUrl, "landingURL");
                String str = adLandingPageUrl;
                Bundle bundle = new Bundle();
                bundle.putString("landingURL", str);
                setExtras(bundle);
                this.f9428t.put("landingURL", str);
                HashMap hashMap = new HashMap();
                URL url = new URL(this.f9424p.getAdIconUrl());
                Uri parse = Uri.parse(url.toURI().toString());
                Double valueOf = Double.valueOf(1.0d);
                if (!this.f9425q.booleanValue()) {
                    hashMap.put(DownloadDrawablesAsync.KEY_ICON, url);
                } else {
                    setIcon(new C2475f(null, parse, valueOf.doubleValue()));
                    List<NativeAd.Image> arrayList = new ArrayList<>();
                    arrayList.add(new C2475f(new ColorDrawable(0), null, 1.0d));
                    setImages(arrayList);
                }
                try {
                    if (customAdContent.has("rating")) {
                        setStarRating(Double.parseDouble(customAdContent.getString("rating")));
                    }
                    if (customAdContent.has("package_name")) {
                        setStore("Google Play");
                    } else {
                        setStore("Others");
                    }
                    if (customAdContent.has("price")) {
                        setPrice(customAdContent.getString("price"));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                RelativeLayout relativeLayout = new RelativeLayout(context);
                relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                ViewTreeObserver viewTreeObserver = relativeLayout.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC2471a(relativeLayout, context));
                }
                setMediaView(relativeLayout);
                setHasVideoContent(this.f9424p.isVideo() == null ? false : this.f9424p.isVideo().booleanValue());
                setOverrideClickHandling(false);
                if (!this.f9425q.booleanValue()) {
                    new AsyncTaskC2466a(new C2472b(parse, valueOf)).execute(hashMap);
                } else {
                    this.f9426r.mo16614a(this.f9427s, this);
                }
            } else {
                this.f9426r.mo16618a(this.f9427s, 3);
            }
        } catch (MandatoryParamException | MalformedURLException | URISyntaxException e2) {
            e2.printStackTrace();
            this.f9426r.mo16618a(this.f9427s, 3);
        }
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void handleClick(View view) {
        this.f9424p.reportAdClickAndOpenLandingPage();
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void recordImpression() {
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void trackView(View view) {
    }

    @Override // com.google.android.gms.ads.mediation.NativeAdMapper
    public void untrackView(View view) {
        this.f9424p.destroy();
    }
}
