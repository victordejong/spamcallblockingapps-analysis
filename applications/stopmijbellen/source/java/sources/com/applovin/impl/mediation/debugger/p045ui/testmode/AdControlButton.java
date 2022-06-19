package com.applovin.impl.mediation.debugger.p045ui.testmode;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.C0897a;
import com.applovin.impl.sdk.utils.C1491f;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.C1583R;
/* renamed from: com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/testmode/AdControlButton.class */
public class AdControlButton extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a */
    private final Button f4276a;

    /* renamed from: b */
    private final C0897a f4277b;

    /* renamed from: c */
    private EnumC1182b f4278c;

    /* renamed from: d */
    private MaxAdFormat f4279d;

    /* renamed from: e */
    private AbstractC1181a f4280e;

    /* renamed from: com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a.class */
    public interface AbstractC1181a {
        void onClick(AdControlButton adControlButton);
    }

    /* renamed from: com.applovin.impl.mediation.debugger.ui.testmode.AdControlButton$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b.class */
    public enum EnumC1182b {
        LOAD,
        LOADING,
        SHOW
    }

    public AdControlButton(Context context) {
        this(context, null, 0);
    }

    public AdControlButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdControlButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Button button = new Button(getContext());
        this.f4276a = button;
        C0897a c0897a = new C0897a(getContext(), 20, 16842873);
        this.f4277b = c0897a;
        EnumC1182b enumC1182b = EnumC1182b.LOAD;
        this.f4278c = enumC1182b;
        setBackgroundColor(0);
        FrameLayout frameLayout = new FrameLayout(context);
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1, 17));
        button.setTextColor(-1);
        button.setOnClickListener(this);
        frameLayout.addView(button, new FrameLayout.LayoutParams(-1, -1, 17));
        c0897a.setColor(-1);
        addView(c0897a, new FrameLayout.LayoutParams(-1, -1, 17));
        m6210a(enumC1182b);
    }

    /* renamed from: a */
    private void m6210a(EnumC1182b enumC1182b) {
        if (EnumC1182b.LOADING == enumC1182b) {
            setEnabled(false);
            this.f4277b.m7084a();
        } else {
            setEnabled(true);
            this.f4277b.m7083b();
        }
        this.f4276a.setText(m6209b(enumC1182b));
        this.f4276a.setBackgroundColor(m6208c(enumC1182b));
    }

    /* renamed from: b */
    private String m6209b(EnumC1182b enumC1182b) {
        return EnumC1182b.LOAD == enumC1182b ? "Load" : EnumC1182b.LOADING == enumC1182b ? "" : "Show";
    }

    /* renamed from: c */
    private int m6208c(EnumC1182b enumC1182b) {
        return C1491f.m5077a((EnumC1182b.LOAD == enumC1182b || EnumC1182b.LOADING == enumC1182b) ? C1583R.C1584color.applovin_sdk_brand_color : C1583R.C1584color.applovin_sdk_adControlbutton_brightBlueColor, getContext());
    }

    public EnumC1182b getControlState() {
        return this.f4278c;
    }

    public MaxAdFormat getFormat() {
        return this.f4279d;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AbstractC1181a abstractC1181a = this.f4280e;
        if (abstractC1181a != null) {
            abstractC1181a.onClick(this);
        }
    }

    public void setControlState(EnumC1182b enumC1182b) {
        if (this.f4278c != enumC1182b) {
            m6210a(enumC1182b);
        }
        this.f4278c = enumC1182b;
    }

    public void setFormat(MaxAdFormat maxAdFormat) {
        this.f4279d = maxAdFormat;
    }

    public void setOnClickListener(AbstractC1181a abstractC1181a) {
        this.f4280e = abstractC1181a;
    }
}
