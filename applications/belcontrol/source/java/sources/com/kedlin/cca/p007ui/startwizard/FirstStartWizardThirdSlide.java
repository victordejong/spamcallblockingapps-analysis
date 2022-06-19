package com.kedlin.cca.p007ui.startwizard;

import android.content.Context;
import android.os.Build;
import android.view.View;
import com.flexaspect.android.everycallcontrol.ui.activities.MainActivity;
import com.kedlin.cca.p007ui.Slide;
import com.kedlin.cca.p007ui.startwizard.FirstStartWizardThirdSlide;
/* renamed from: com.kedlin.cca.ui.startwizard.FirstStartWizardThirdSlide */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide.class */
public class FirstStartWizardThirdSlide extends Slide {

    /* renamed from: a */
    public MainActivity f4100a;

    public FirstStartWizardThirdSlide(Context context) {
        super(context);
        this.f4100a = (MainActivity) context;
    }

    /* renamed from: f */
    public /* synthetic */ void m4091g(View view) {
        this.f4100a.G.m4083h(false);
    }

    @Override // com.kedlin.cca.p007ui.Slide
    /* renamed from: e */
    public void mo4093e() {
        super.mo4093e();
        findViewById(2131363395).setOnClickListener(new View.OnClickListener() { // from class: sd1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FirstStartWizardThirdSlide.this.m4091g(view);
            }
        });
    }

    @Override // com.kedlin.cca.p007ui.Slide
    public int getLayoutId() {
        return 2131558606;
    }

    @Override // com.kedlin.cca.p007ui.Slide
    public int getStyleId() {
        return Build.VERSION.SDK_INT >= 21 ? 16974393 : -1;
    }
}
