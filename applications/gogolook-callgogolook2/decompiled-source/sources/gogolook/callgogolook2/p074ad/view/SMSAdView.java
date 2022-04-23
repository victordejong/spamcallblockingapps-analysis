package gogolook.callgogolook2.p074ad.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import com.mopub.nativeads.BaseNativeAdRenderer;
import gogolook.callgogolook2.messaging.p078ui.dialog.SmsDialogActivity;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.p074ad.AdUtils;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p170p.C6272d;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14247d;
import p459j.p460a.p582w0.p590x4.C14261f;
/* renamed from: gogolook.callgogolook2.ad.view.SMSAdView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/view/SMSAdView.class */
public class SMSAdView extends LinearLayout {
    public static final String TAG = SMSAdView.class.getSimpleName();
    public static final AdUnit AD_UNIT = AdUnit.SMS;

    /* renamed from: gogolook.callgogolook2.ad.view.SMSAdView$OnAdClosedListener */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/view/SMSAdView$OnAdClosedListener.class */
    public interface OnAdClosedListener {
        /* renamed from: a */
        void mo27042a();
    }

    public SMSAdView(Context context) {
        this(context, null);
    }

    public SMSAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final void m28692a() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(0, C14217x3.m2201a(C6272d.m23414h()), 0, 0);
        setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public void m28691a(@NonNull AbstractC6207d dVar, @NonNull final OnAdClosedListener onAdClosedListener) {
        C14247d.m2064a(AD_UNIT, dVar);
        dVar.mo23569a(new AbstractC6207d.AbstractC6208a() { // from class: gogolook.callgogolook2.ad.view.SMSAdView.1
            @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
            /* renamed from: a */
            public void mo5002a() {
                C14247d.m2059c(SMSAdView.AD_UNIT);
                AdUtils.m28813a(SMSAdView.this.getContext(), SMSAdView.AD_UNIT, "clicked");
                SmsDialogActivity.m27054P();
            }

            @Override // p081h.p160h.p161a.p162h.AbstractC6207d.AbstractC6208a
            public void onAdImpression() {
                C14247d.m2058d(SMSAdView.AD_UNIT);
                AdUtils.m28813a(SMSAdView.this.getContext(), SMSAdView.AD_UNIT, "impression");
            }
        });
        dVar.mo23570a(new BaseNativeAdRenderer.AdCustomActionListener() { // from class: gogolook.callgogolook2.ad.view.SMSAdView.2
            @Override // com.mopub.nativeads.BaseNativeAdRenderer.AdCustomActionListener
            public void onAdClosed() {
                C14261f.m1976a(SMSAdView.AD_UNIT.toString());
                C14247d.m2065a(SMSAdView.AD_UNIT, 1);
                SMSAdView.this.setVisibility(8);
                onAdClosedListener.mo27042a();
            }
        });
        m28692a();
        dVar.mo23572a(getContext(), this);
    }
}
