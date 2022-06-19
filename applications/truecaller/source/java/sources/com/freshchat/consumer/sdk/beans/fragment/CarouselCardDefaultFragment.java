package com.freshchat.consumer.sdk.beans.fragment;

import com.freshchat.consumer.sdk.p057j.C1597ab;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment.class */
public class CarouselCardDefaultFragment extends TemplateFragment {
    @C1597ab.AbstractC1600c
    private boolean selected = false;

    public CarouselCardDefaultFragment() {
        super(TemplateType.CAROUSEL_CARD_DEFAULT.asString());
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setSelected(boolean z) {
        this.selected = z;
    }

    @Override // com.freshchat.consumer.sdk.beans.fragment.TemplateFragment, com.freshchat.consumer.sdk.beans.fragment.MessageFragment
    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CarouselCardDefaultFragment{messageFragment='");
        C22128a.m8678P0(m8728C, super.toString(), '\'', ", selected=");
        return C22128a.m8598m(m8728C, this.selected, '}');
    }
}
