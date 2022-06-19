package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p040c.C1107c;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.C1494i;
import com.applovin.impl.sdk.utils.C1530k;
import com.applovin.impl.sdk.utils.C1533n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.C1583R;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* renamed from: com.applovin.impl.sdk.m */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/m.class */
public class C1414m implements AppLovinCommunicatorSubscriber, C1494i.AbstractC1495a {

    /* renamed from: a */
    private final C1408l f5342a;

    /* renamed from: b */
    private Object f5343b;

    /* renamed from: c */
    private WeakReference<View> f5344c = new WeakReference<>(null);

    /* renamed from: d */
    private final Map<String, Bundle> f5345d = new HashMap();

    /* renamed from: e */
    private final Object f5346e = new Object();

    /* renamed from: f */
    private C1494i f5347f;

    /* renamed from: g */
    private C1533n f5348g;

    /* renamed from: h */
    private int f5349h;

    public C1414m(C1408l c1408l) {
        this.f5342a = c1408l;
        AppLovinCommunicator.getInstance(c1408l.m5532K()).subscribe(this, "safedk_ad_info");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    private View m5441a(final Activity activity) {
        Button button;
        int dpToPx = AppLovinSdkUtils.dpToPx(activity, 40);
        int i = dpToPx / 10;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dpToPx, dpToPx, 8388629);
        layoutParams.setMargins(i, i, i, i);
        try {
            ImageButton imageButton = new ImageButton(activity);
            imageButton.setImageDrawable(activity.getResources().getDrawable(C1583R.C1585drawable.applovin_ic_white_small));
            imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageButton.setPadding(i, i, i, i * 2);
            button = imageButton;
        } catch (Throwable th) {
            Button button2 = new Button(activity);
            button2.setText("ⓘ");
            button2.setTextColor(-1);
            button2.setAllCaps(false);
            button2.setTextSize(2, 20.0f);
            button2.setPadding(0, 0, 0, 0);
            button = button2;
        }
        button.setLayoutParams(layoutParams);
        button.setBackground(m5430g());
        button.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.sdk.m.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C1414m.this.m5440a((Context) activity);
            }
        });
        if (C1492g.m5071d()) {
            button.setElevation(AppLovinSdkUtils.dpToPx(activity, 5));
        }
        return button;
    }

    /* renamed from: a */
    public void m5440a(Context context) {
        final String m5429h = m5429h();
        final WeakReference weakReference = new WeakReference(context);
        new AlertDialog.Builder(context).setTitle("Ad Info").setMessage(m5429h).setNegativeButton("Close", (DialogInterface.OnClickListener) null).setPositiveButton("Report", new DialogInterface.OnClickListener() { // from class: com.applovin.impl.sdk.m.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (weakReference.get() != null) {
                    C1414m.this.m5439a((Context) weakReference.get(), m5429h);
                }
            }
        }).show();
    }

    /* renamed from: a */
    public void m5439a(Context context, String str) {
        C1530k c1530k = new C1530k();
        c1530k.m4980b("Describe your issue below:\n\n\n").m4984a("Ad Info:").m4984a(str).m4984a("\nDebug Info:\n").m4983a("Platform", "fireos".equals(this.f5342a.m5522U().m5397f()) ? "Fire OS" : "Android").m4983a("AppLovin SDK Version", AppLovinSdk.VERSION).m4983a("Plugin Version", this.f5342a.m5511a(C1314b.f4926dy)).m4983a("Ad Review Version", Utils.getSafedkVersion()).m4983a("App Package Name", context.getPackageName()).m4983a("Device", Build.DEVICE).m4983a("OS Version", Build.VERSION.RELEASE).m4983a("AppLovin Random Token", this.f5342a.m5455o()).m4989a(m5432e());
        Intent intent = new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.SUBJECT", "MAX Ad Report").setPackage("com.google.android.gm");
        if (this.f5343b instanceof AbstractC1286e) {
            intent.putExtra("android.intent.extra.SUBJECT", "AppLovin Ad Report");
            JSONObject originalFullResponse = ((AbstractC1286e) this.f5343b).getOriginalFullResponse();
            Uri cacheTextWithFileName = AppLovinContentProviderUtils.cacheTextWithFileName(originalFullResponse.toString(), "ad_response.json");
            if (cacheTextWithFileName != null) {
                intent.putExtra("android.intent.extra.STREAM", cacheTextWithFileName);
            } else {
                c1530k.m4984a("\nAd Response:\n");
                c1530k.m4984a(originalFullResponse.toString());
            }
        }
        intent.putExtra("android.intent.extra.TEXT", c1530k.toString());
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            intent.setPackage(null);
            context.startActivity(intent);
        }
    }

    /* renamed from: d */
    private String m5433d() {
        Object obj = this.f5343b;
        if (obj instanceof AbstractC1044a) {
            return ((AbstractC1044a) obj).m6711f();
        }
        if (!C1107c.m6455a(obj)) {
            return null;
        }
        return ((AbstractC1286e) this.f5343b).m5984I();
    }

    /* renamed from: e */
    private Bundle m5432e() {
        Bundle bundle;
        String m5433d = m5433d();
        if (StringUtils.isValidString(m5433d)) {
            synchronized (this.f5346e) {
                bundle = this.f5345d.get(m5433d);
            }
            return bundle;
        }
        return null;
    }

    /* renamed from: f */
    public void m5431f() {
        if (!this.f5342a.m5492ac().m5136b() || this.f5344c.get() != null) {
            return;
        }
        Activity m6068a = this.f5342a.m5491ad().m6068a();
        View findViewById = m6068a.findViewById(16908290);
        if (!(findViewById instanceof FrameLayout)) {
            return;
        }
        C1479t m5542A = this.f5342a.m5542A();
        StringBuilder m8752j = C0082b.m8752j("Displaying creative debugger button for ad: ");
        m8752j.append(this.f5343b);
        m5542A.m5116b("AppLovinSdk", m8752j.toString());
        final FrameLayout frameLayout = (FrameLayout) findViewById;
        final View m5441a = m5441a(m6068a);
        frameLayout.addView(m5441a);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(150L);
        m5441a.startAnimation(alphaAnimation);
        findViewById.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.applovin.impl.sdk.m.3
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (m5441a.getParent() == null) {
                    frameLayout.addView(m5441a);
                }
            }
        });
        this.f5344c = new WeakReference<>(m5441a);
    }

    /* renamed from: g */
    private Drawable m5430g() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.rgb(5, 131, 170));
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        gradientDrawable2.setShape(1);
        gradientDrawable2.setColor(Color.rgb(2, 98, 127));
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, gradientDrawable2);
        stateListDrawable.addState(new int[0], gradientDrawable);
        return stateListDrawable;
    }

    /* renamed from: h */
    private String m5429h() {
        C1530k c1530k = new C1530k();
        Object obj = this.f5343b;
        if (obj instanceof AbstractC1286e) {
            AbstractC1286e abstractC1286e = (AbstractC1286e) obj;
            c1530k.m4983a("Network", "APPLOVIN").m4986a(abstractC1286e).m4981b(abstractC1286e);
        } else if (obj instanceof AbstractC1044a) {
            c1530k.m4987a((AbstractC1044a) obj);
        }
        c1530k.m4985a(this.f5342a);
        c1530k.m4989a(m5432e());
        return c1530k.toString();
    }

    /* renamed from: a */
    public void m5442a() {
        String m5433d = m5433d();
        if (StringUtils.isValidString(m5433d)) {
            synchronized (this.f5346e) {
                this.f5345d.remove(m5433d);
            }
        }
        C1494i c1494i = this.f5347f;
        if (c1494i != null) {
            c1494i.m5040b();
        }
        this.f5343b = null;
        this.f5344c = new WeakReference<>(null);
    }

    /* renamed from: a */
    public void m5434a(Object obj) {
        if (C1107c.m6452b(obj)) {
            return;
        }
        this.f5343b = obj;
        if (!((Boolean) this.f5342a.m5511a(C1314b.f4779bH)).booleanValue() || !this.f5342a.m5454p().isCreativeDebuggerEnabled()) {
            return;
        }
        if (this.f5347f == null) {
            this.f5347f = new C1494i(this.f5342a, this);
        }
        this.f5347f.m5041a();
    }

    @Override // com.applovin.impl.sdk.utils.C1494i.AbstractC1495a
    /* renamed from: b */
    public void mo5039b() {
        if (this.f5349h == 0) {
            this.f5348g = C1533n.m4965a(TimeUnit.SECONDS.toMillis(3L), this.f5342a, new Runnable() { // from class: com.applovin.impl.sdk.m.1
                @Override // java.lang.Runnable
                public void run() {
                    C1414m.this.f5349h = 0;
                }
            });
        }
        int i = this.f5349h;
        if (i % 2 == 0) {
            this.f5349h = i + 1;
        }
    }

    @Override // com.applovin.impl.sdk.utils.C1494i.AbstractC1495a
    /* renamed from: c */
    public void mo5038c() {
        int i = this.f5349h;
        if (i % 2 == 1) {
            this.f5349h = i + 1;
        }
        if (this.f5349h / 2 == 2) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.m.2
                @Override // java.lang.Runnable
                public void run() {
                    C1414m.this.m5431f();
                }
            });
            this.f5349h = 0;
            this.f5348g.m4958d();
            this.f5347f.m5040b();
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "m";
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("safedk_ad_info".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle bundle = appLovinCommunicatorMessage.getMessageData().getBundle("public");
            Bundle bundle2 = appLovinCommunicatorMessage.getMessageData().getBundle("private");
            String string = BundleUtils.getString(FacebookAdapter.KEY_ID, bundle2);
            MaxAdFormat formatFromString = MaxAdFormat.formatFromString(BundleUtils.getString("ad_format", bundle2));
            if (!StringUtils.isValidString(string) || formatFromString == null || !formatFromString.isFullscreenAd() || bundle == null) {
                return;
            }
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                bundle.remove(str);
                BundleUtils.put(StringUtils.toHumanReadableString(str), obj, bundle);
            }
            synchronized (this.f5346e) {
                this.f5345d.put(string, bundle);
            }
        }
    }
}
