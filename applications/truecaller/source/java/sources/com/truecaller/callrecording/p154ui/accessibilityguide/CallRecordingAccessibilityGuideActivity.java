package com.truecaller.callrecording.p154ui.accessibilityguide;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.google.android.material.button.MaterialButton;
import com.truecaller.callrecording.C3624R;
import kotlin.Metadata;
import n3.b.a.h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p916i5.C15314a;
import p193e.p194a.p982k0.p985j.C16323a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\bJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\bR\u0016\u0010\u000f\u001a\u00020\f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "onPause", "onBackPressed", "pa", "Le/a/k0/j/a;", "a", "Le/a/k0/j/a;", "binding", "<init>", "callrecorder_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.callrecording.ui.accessibilityguide.CallRecordingAccessibilityGuideActivity */
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity.class */
public final class CallRecordingAccessibilityGuideActivity extends h {

    /* renamed from: b */
    public static final /* synthetic */ int f10777b = 0;

    /* renamed from: a */
    public C16323a f10778a;

    /* renamed from: com.truecaller.callrecording.ui.accessibilityguide.CallRecordingAccessibilityGuideActivity$a */
    /* loaded from: classes3-dex2jar.jar:com/truecaller/callrecording/ui/accessibilityguide/CallRecordingAccessibilityGuideActivity$a.class */
    public static final class View$OnClickListenerC3630a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f10779a;

        /* renamed from: b */
        public final /* synthetic */ Object f10780b;

        public View$OnClickListenerC3630a(int i, Object obj) {
            this.f10779a = i;
            this.f10780b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f10779a;
            if (i == 0) {
                CallRecordingAccessibilityGuideActivity callRecordingAccessibilityGuideActivity = (CallRecordingAccessibilityGuideActivity) this.f10780b;
                int i2 = CallRecordingAccessibilityGuideActivity.f10777b;
                callRecordingAccessibilityGuideActivity.m35736pa();
            } else if (i != 1) {
                throw null;
            } else {
                CallRecordingAccessibilityGuideActivity callRecordingAccessibilityGuideActivity2 = (CallRecordingAccessibilityGuideActivity) this.f10780b;
                int i3 = CallRecordingAccessibilityGuideActivity.f10777b;
                callRecordingAccessibilityGuideActivity2.m35736pa();
            }
        }
    }

    public void onBackPressed() {
        CallRecordingAccessibilityGuideActivity.super.onBackPressed();
        m35736pa();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        CallRecordingAccessibilityGuideActivity.super.onCreate(bundle);
        LayoutInflater from = LayoutInflater.from(this);
        l.d(from, "LayoutInflater.from(this)");
        View inflate = C17422k.m16050u0(from, true).inflate(C3624R.layout.layout_tcx_callrecording_accessibility_guide, (ViewGroup) null, false);
        int i = C3624R.C3626id.buttonPrimary;
        MaterialButton findViewById = inflate.findViewById(i);
        if (findViewById != null) {
            i = C3624R.C3626id.image;
            ImageView imageView = (ImageView) inflate.findViewById(i);
            if (imageView != null) {
                i = C3624R.C3626id.subtitle;
                TextView textView = (TextView) inflate.findViewById(i);
                if (textView != null) {
                    i = C3624R.C3626id.title;
                    TextView textView2 = (TextView) inflate.findViewById(i);
                    if (textView2 != null) {
                        i = C3624R.C3626id.view_content;
                        CardView cardView = (CardView) inflate.findViewById(i);
                        if (cardView != null) {
                            C16323a c16323a = new C16323a((FrameLayout) inflate, findViewById, imageView, textView, textView2, cardView);
                            l.d(c16323a, "LayoutTcxCallrecordingAc…s).toThemeInflater(true))");
                            this.f10778a = c16323a;
                            setContentView(c16323a.f45939a);
                            C16323a c16323a2 = this.f10778a;
                            if (c16323a2 == null) {
                                l.l("binding");
                                throw null;
                            }
                            ImageView imageView2 = c16323a2.f45941c;
                            C15314a c15314a = C15314a.f43582g;
                            imageView2.setImageResource(!C15314a.m18933f() ? C3624R.C3625drawable.call_rec_onboarding_access_guide : C3624R.C3625drawable.call_rec_onboarding_access_guide_dark);
                            C16323a c16323a3 = this.f10778a;
                            if (c16323a3 == null) {
                                l.l("binding");
                                throw null;
                            }
                            c16323a3.f45939a.setOnClickListener(new View$OnClickListenerC3630a(0, this));
                            C16323a c16323a4 = this.f10778a;
                            if (c16323a4 != null) {
                                c16323a4.f45940b.setOnClickListener(new View$OnClickListenerC3630a(1, this));
                                return;
                            } else {
                                l.l("binding");
                                throw null;
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    public void onPause() {
        CallRecordingAccessibilityGuideActivity.super.onPause();
        m35736pa();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onStart() {
        CallRecordingAccessibilityGuideActivity.super.onStart();
        overridePendingTransition(C3624R.anim.slide_in_up, C3624R.anim.slide_out_down);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: pa */
    public final void m35736pa() {
        finish();
        overridePendingTransition(C3624R.anim.slide_in_up, C3624R.anim.slide_out_down);
    }
}
