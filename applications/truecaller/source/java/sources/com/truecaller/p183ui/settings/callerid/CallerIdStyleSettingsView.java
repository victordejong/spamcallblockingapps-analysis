package com.truecaller.p183ui.settings.callerid;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1059m3.C18197y0;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p684b.p690j.C12940n;
import p193e.p194a.p682e.p684b.p690j.View$OnClickListenerC12939m;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\n\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bR0\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\fj\u0004\u0018\u0001`\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R#\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001e\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0019\u0010$\u001a\u00020\u001f8\u0006@\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R0\u0010(\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\fj\u0004\u0018\u0001`\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u000f\u001a\u0004\b&\u0010\u0011\"\u0004\b'\u0010\u0013¨\u0006)"}, d2 = {"Lcom/truecaller/ui/settings/callerid/CallerIdStyleSettingsView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "Ls1/s;", "onAttachedToWindow", "()V", "Landroid/widget/CompoundButton;", "buttonView", "", "isChecked", "onCheckedChanged", "(Landroid/widget/CompoundButton;Z)V", "Lkotlin/Function0;", "Lcom/truecaller/ui/settings/callerid/SelectionListener;", "v", "Ls1/z/b/a;", "getClassicSelectedListener", "()Ls1/z/b/a;", "setClassicSelectedListener", "(Ls1/z/b/a;)V", "classicSelectedListener", "", "Landroid/widget/RadioButton;", "w", "Ls1/g;", "getRadioButtonSet", "()Ljava/util/Set;", "radioButtonSet", "x", "Z", "callOptionSelectedCallbacks", "Le/a/m3/y0;", "t", "Le/a/m3/y0;", "getBinding", "()Le/a/m3/y0;", "binding", "u", "getFullScreenSelectedListener", "setFullScreenSelectedListener", "fullScreenSelectedListener", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.settings.callerid.CallerIdStyleSettingsView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/callerid/CallerIdStyleSettingsView.class */
public final class CallerIdStyleSettingsView extends ConstraintLayout implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: t */
    public final C18197y0 f15859t;

    /* renamed from: u */
    public a<Boolean> f15860u;

    /* renamed from: v */
    public a<Boolean> f15861v;

    /* renamed from: w */
    public final g f15862w;

    /* renamed from: x */
    public boolean f15863x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallerIdStyleSettingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C2752R.layout.settings_callerid_style, this);
        int i = 2131364283;
        ImageView imageView = (ImageView) findViewById(C2752R.C2754id.image_caller_id_style_classic);
        if (imageView != null) {
            i = 2131364284;
            ImageView imageView2 = (ImageView) findViewById(C2752R.C2754id.image_caller_id_style_fullscreen);
            if (imageView2 != null) {
                i = 2131365335;
                RadioButton radioButton = (RadioButton) findViewById(C2752R.C2754id.radiobutton_caller_id_style_classic);
                if (radioButton != null) {
                    i = 2131365336;
                    RadioButton radioButton2 = (RadioButton) findViewById(C2752R.C2754id.radiobutton_caller_id_style_fullscreen);
                    if (radioButton2 != null) {
                        i = 2131366358;
                        TextView textView = (TextView) findViewById(C2752R.C2754id.text_caller_id_style_title);
                        if (textView != null) {
                            C18197y0 c18197y0 = new C18197y0(this, imageView, imageView2, radioButton, radioButton2, textView);
                            l.d(c18197y0, "SettingsCalleridStyleBin…ater.from(context), this)");
                            this.f15859t = c18197y0;
                            this.f15862w = C25225a.m3978P1(new C12940n(this));
                            ImageView imageView3 = c18197y0.f51461c;
                            l.d(imageView3, "imageCallerIdStyleFullscreen");
                            RadioButton radioButton3 = c18197y0.f51463e;
                            l.d(radioButton3, "radiobuttonCallerIdStyleFullscreen");
                            imageView3.setOnClickListener(new View$OnClickListenerC12939m(radioButton3));
                            ImageView imageView4 = c18197y0.f51460b;
                            l.d(imageView4, "imageCallerIdStyleClassic");
                            RadioButton radioButton4 = c18197y0.f51462d;
                            l.d(radioButton4, "radiobuttonCallerIdStyleClassic");
                            imageView4.setOnClickListener(new View$OnClickListenerC12939m(radioButton4));
                            for (RadioButton radioButton5 : getRadioButtonSet()) {
                                radioButton5.setOnCheckedChangeListener(this);
                            }
                            return;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    private final Set<RadioButton> getRadioButtonSet() {
        return (Set) this.f15862w.getValue();
    }

    public final C18197y0 getBinding() {
        return this.f15859t;
    }

    public final a<Boolean> getClassicSelectedListener() {
        return this.f15861v;
    }

    public final a<Boolean> getFullScreenSelectedListener() {
        return this.f15860u;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f15863x = true;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        boolean z2;
        C18197y0 c18197y0 = this.f15859t;
        if (z && this.f15863x) {
            Boolean bool = null;
            if (l.a(compoundButton, c18197y0.f51463e)) {
                a<Boolean> aVar = this.f15860u;
                if (aVar != null) {
                    bool = (Boolean) aVar.invoke();
                }
                z2 = C12864a2.m22540r(bool);
            } else if (l.a(compoundButton, c18197y0.f51462d)) {
                a<Boolean> aVar2 = this.f15861v;
                Boolean bool2 = null;
                if (aVar2 != null) {
                    bool2 = (Boolean) aVar2.invoke();
                }
                z2 = C12864a2.m22540r(bool2);
            } else {
                z2 = false;
            }
            if (!z2) {
                if (compoundButton == null) {
                    return;
                }
                compoundButton.setChecked(false);
                return;
            }
        }
        if (l.a(compoundButton, c18197y0.f51463e)) {
            ImageView imageView = c18197y0.f51461c;
            l.d(imageView, "imageCallerIdStyleFullscreen");
            imageView.setSelected(z);
        } else if (l.a(compoundButton, c18197y0.f51462d)) {
            ImageView imageView2 = c18197y0.f51460b;
            l.d(imageView2, "imageCallerIdStyleClassic");
            imageView2.setSelected(z);
        }
        if (z) {
            for (CompoundButton compoundButton2 : i.c0(getRadioButtonSet(), compoundButton)) {
                if (compoundButton2 != null) {
                    compoundButton2.setChecked(false);
                }
            }
        }
    }

    public final void setClassicSelectedListener(a<Boolean> aVar) {
        this.f15861v = aVar;
    }

    public final void setFullScreenSelectedListener(a<Boolean> aVar) {
        this.f15860u = aVar;
    }
}
