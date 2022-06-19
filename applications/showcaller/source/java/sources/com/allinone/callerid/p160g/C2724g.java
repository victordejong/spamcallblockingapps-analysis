package com.allinone.callerid.p160g;

import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3810q;
/* renamed from: com.allinone.callerid.g.g */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/g.class */
public class C2724g extends Fragment {

    /* renamed from: e0 */
    private final String f9344e0 = "GuideThreeFragment";

    /* renamed from: f0 */
    private Typeface f9345f0;

    /* renamed from: g0 */
    private View f9346g0;

    /* renamed from: a2 */
    private void m26767a2(View view) {
        ((TextView) view.findViewById(R$id.guide_tips_content)).setTypeface(this.f9345f0);
        ((TextView) view.findViewById(R$id.guide_tips)).setTypeface(this.f9345f0);
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.f9346g0 == null) {
            C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
            this.f9346g0 = layoutInflater.inflate(R$layout.fragment_guide_three, viewGroup, false);
            if (C3767h1.m24250f0(m32996B()).booleanValue() && Build.VERSION.SDK_INT >= 17 && m32896u() != null) {
                m32896u().getWindow().getDecorView().setLayoutDirection(1);
            }
            this.f9345f0 = C3739f1.m24359b();
            m26767a2(this.f9346g0);
        }
        return this.f9346g0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        super.mo17304H0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: K0 */
    public void mo25114K0() {
        ViewGroup viewGroup;
        super.mo25114K0();
        try {
            View view = this.f9346g0;
            if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
                return;
            }
            viewGroup.removeView(this.f9346g0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: T0 */
    public void mo25021T0() {
        super.mo25021T0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: V1 */
    public void mo26766V1(boolean z) {
        super.mo26766V1(z);
        if (z) {
            C3810q.m24071b().m24070c("guide_two_show");
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Y0 */
    public void mo17303Y0() {
        super.mo17303Y0();
    }
}
