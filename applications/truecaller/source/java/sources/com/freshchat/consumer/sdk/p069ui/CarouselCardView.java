package com.freshchat.consumer.sdk.p069ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.FreshchatImageLoader;
import com.freshchat.consumer.sdk.FreshchatImageLoaderRequest;
import com.freshchat.consumer.sdk.beans.fragment.CarouselCardDefaultFragment;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1623aq;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p061k.C1745i;
/* renamed from: com.freshchat.consumer.sdk.ui.CarouselCardView */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ui/CarouselCardView.class */
public class CarouselCardView extends CardView {

    /* renamed from: lR */
    private AbstractC1926a f4781lR;

    /* renamed from: nF */
    private ImageView f4782nF;

    /* renamed from: nH */
    private ImageView f4783nH;

    /* renamed from: nI */
    private TextView f4784nI;

    /* renamed from: nJ */
    private TextView f4785nJ;

    /* renamed from: nK */
    private LinearLayout f4786nK;

    /* renamed from: nL */
    private Button f4787nL;

    /* renamed from: nM */
    private Button f4788nM;

    /* renamed from: nN */
    private View f4789nN;

    /* renamed from: nO */
    private C1745i f4790nO;

    /* renamed from: com.freshchat.consumer.sdk.ui.CarouselCardView$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ui/CarouselCardView$a.class */
    public interface AbstractC1926a {
        /* renamed from: a */
        void mo39300a(CarouselCardDefaultFragment carouselCardDefaultFragment);
    }

    public CarouselCardView(Context context) {
        super(context);
        m39302hl();
    }

    public CarouselCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m39302hl();
    }

    public CarouselCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m39302hl();
    }

    /* renamed from: hm */
    public void m39301hm() {
        String m39727ho = this.f4790nO.m39727ho();
        int m40238j = C1623aq.m40238j(getContext(), C1298R.attr.freshchatCarouselCardPlaceholderImage);
        int m40238j2 = C1623aq.m40238j(getContext(), C1298R.attr.freshchatCarouselCardErrorImage);
        if (C1626as.m40233a(m39727ho)) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(C1298R.dimen.freshchat_carousel_card_default_dimension);
            FreshchatImageLoaderRequest m41530dM = new FreshchatImageLoaderRequest.C1297a(m39727ho).m41533a(this.f4790nO.m39732I(dimensionPixelSize), this.f4790nO.m39731J(dimensionPixelSize)).m41535G(m40238j).m41534H(m40238j2).m41530dM();
            FreshchatImageLoader m40305eK = C1610af.m40305eK();
            if (m40305eK != null) {
                m40305eK.load(m41530dM, this.f4783nH);
            }
        } else {
            this.f4783nH.setImageResource(m40238j2);
        }
        if (C1626as.isEmpty(this.f4790nO.getTitle())) {
            C1471i.m40840c(this.f4784nI);
        } else {
            C1471i.m40842b(this.f4784nI);
            this.f4784nI.setText(this.f4790nO.getTitle());
        }
        if (C1626as.isEmpty(this.f4790nO.getDescription())) {
            C1471i.m40840c(this.f4785nJ);
        } else {
            C1471i.m40842b(this.f4785nJ);
            this.f4785nJ.setText(this.f4790nO.getDescription());
        }
        C1745i.EnumC1746a m39726hp = this.f4790nO.m39726hp();
        if (m39726hp == C1745i.EnumC1746a.PRE_SELECTED_CARD) {
            C1471i.m40842b(this.f4789nN);
            C1471i.m40840c(this.f4786nK);
            return;
        }
        C1471i.m40842b(this.f4786nK);
        C1471i.m40840c(this.f4789nN);
        String string = getContext().getString(C1298R.string.freshchat_carousel_card_default_callback_btn_text);
        String string2 = getContext().getString(C1298R.string.freshchat_carousel_card_default_view_btn_text);
        if (m39726hp == C1745i.EnumC1746a.CARD_WITH_CALLBACK_AND_VIEW_OPTION) {
            C1471i.m40842b(this.f4788nM);
            this.f4788nM.setText(this.f4790nO.m39729bm(string2));
            this.f4786nK.setOrientation(!this.f4790nO.m39722x(string, string2));
            this.f4788nM.setOnClickListener(new View$OnClickListenerC1931b(this));
        } else {
            C1471i.m40840c(this.f4788nM);
        }
        this.f4787nL.setText(this.f4790nO.m39730bl(string));
        this.f4787nL.setOnClickListener(new View$OnClickListenerC1932c(this));
    }

    /* renamed from: hl */
    public void m39302hl() {
        this.f4790nO = new C1745i(getContext());
        addView(LayoutInflater.from(getContext()).inflate(C1298R.layout.freshchat_carousel_card_default_view, (ViewGroup) this, false));
        this.f4783nH = (ImageView) findViewById(C1298R.C1300id.freshchat_carousel_card_hero_image);
        this.f4784nI = (TextView) findViewById(C1298R.C1300id.freshchat_carousel_card_title);
        this.f4785nJ = (TextView) findViewById(C1298R.C1300id.freshchat_carousel_card_description);
        this.f4786nK = (LinearLayout) findViewById(C1298R.C1300id.freshchat_carousel_card_button_container);
        this.f4787nL = (Button) findViewById(C1298R.C1300id.freshchat_carousel_card_callback_btn);
        this.f4788nM = (Button) findViewById(C1298R.C1300id.freshchat_carousel_card_view_btn);
        this.f4789nN = findViewById(C1298R.C1300id.freshchat_carousel_card_selection_indication_container);
        this.f4782nF = (ImageView) findViewById(C1298R.C1300id.freshchat_carousel_card_message_upload_status);
    }

    public void setData(CarouselCardDefaultFragment carouselCardDefaultFragment) {
        this.f4790nO.setData(carouselCardDefaultFragment);
        post(new RunnableC1930a(this));
    }

    public void setListener(AbstractC1926a abstractC1926a) {
        this.f4781lR = abstractC1926a;
    }

    public void setUploadedStateDrawable(Drawable drawable) {
        ImageView imageView;
        if (drawable == null || (imageView = this.f4782nF) == null) {
            return;
        }
        imageView.setImageDrawable(drawable);
    }
}
