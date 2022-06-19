package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import android.net.Uri;
import com.freshchat.consumer.sdk.beans.fragment.ButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.CarouselCardDefaultFragment;
import com.freshchat.consumer.sdk.beans.fragment.ImageFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.SectionKey;
import com.freshchat.consumer.sdk.p057j.C1614aj;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1682cg;
/* renamed from: com.freshchat.consumer.sdk.k.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/i.class */
public class C1745i extends AbstractC1735a {

    /* renamed from: oe */
    private CarouselCardDefaultFragment f4553oe = null;

    /* renamed from: com.freshchat.consumer.sdk.k.i$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/i$a.class */
    public enum EnumC1746a {
        PRE_SELECTED_CARD,
        CARD_WITH_CALLBACK_ONLY,
        CARD_WITH_CALLBACK_AND_VIEW_OPTION;
        

        /* renamed from: oi */
        public static EnumC1746a f4557oi = CARD_WITH_CALLBACK_ONLY;
    }

    public C1745i(Context context) {
        super(context);
    }

    /* renamed from: hr */
    private ImageFragment m39724hr() {
        MessageFragment m40021b = C1682cg.m40021b(this.f4553oe, SectionKey.CAROUSEL_CARD_HERO_IMAGE);
        return m40021b instanceof ImageFragment ? (ImageFragment) m40021b : null;
    }

    /* renamed from: I */
    public int m39732I(int i) {
        ImageFragment m39724hr = m39724hr();
        int i2 = i;
        if (m39724hr != null) {
            i2 = m39724hr.getWidth() == 0 ? i : m39724hr.getWidth();
        }
        return i2;
    }

    /* renamed from: J */
    public int m39731J(int i) {
        ImageFragment m39724hr = m39724hr();
        int i2 = i;
        if (m39724hr != null) {
            i2 = m39724hr.getHeight() == 0 ? i : m39724hr.getHeight();
        }
        return i2;
    }

    /* renamed from: bl */
    public String m39730bl(String str) {
        return C1682cg.m40022a(this.f4553oe, SectionKey.CAROUSEL_CARD_CALLBACK, str);
    }

    /* renamed from: bm */
    public String m39729bm(String str) {
        return C1682cg.m40022a(this.f4553oe, SectionKey.CAROUSEL_CARD_VIEW, str);
    }

    public String getDescription() {
        return C1682cg.m40023a(this.f4553oe, SectionKey.CAROUSEL_CARD_DESCRIPTION);
    }

    public String getTitle() {
        return C1682cg.m40023a(this.f4553oe, SectionKey.CAROUSEL_CARD_TITLE);
    }

    /* renamed from: hn */
    public CarouselCardDefaultFragment m39728hn() {
        return this.f4553oe;
    }

    /* renamed from: ho */
    public String m39727ho() {
        String m40023a = C1682cg.m40023a(this.f4553oe, SectionKey.CAROUSEL_CARD_HERO_IMAGE);
        if (!C1626as.m40233a(m40023a)) {
            m40023a = null;
        }
        return m40023a;
    }

    /* renamed from: hp */
    public EnumC1746a m39726hp() {
        CarouselCardDefaultFragment carouselCardDefaultFragment = this.f4553oe;
        if (carouselCardDefaultFragment != null) {
            if (carouselCardDefaultFragment.isSelected()) {
                return EnumC1746a.PRE_SELECTED_CARD;
            }
            if (C1682cg.m40021b(this.f4553oe, SectionKey.CAROUSEL_CARD_VIEW) != null) {
                return EnumC1746a.CARD_WITH_CALLBACK_AND_VIEW_OPTION;
            }
        }
        return EnumC1746a.f4557oi;
    }

    /* renamed from: hq */
    public Uri m39725hq() {
        MessageFragment m40021b = C1682cg.m40021b(this.f4553oe, SectionKey.CAROUSEL_CARD_VIEW);
        if (!(m40021b instanceof ButtonFragment)) {
            return null;
        }
        return C1614aj.m40274b((ButtonFragment) m40021b);
    }

    /* renamed from: hs */
    public void m39723hs() {
        if (this.f4553oe != null) {
            C1649bg.m40088b(getContext(), this.f4553oe);
        }
    }

    public void setData(CarouselCardDefaultFragment carouselCardDefaultFragment) {
        this.f4553oe = carouselCardDefaultFragment;
    }

    /* renamed from: x */
    public boolean m39722x(String str, String str2) {
        boolean z = true;
        if (m39726hp() != EnumC1746a.CARD_WITH_CALLBACK_AND_VIEW_OPTION) {
            return true;
        }
        if (C1626as.m40228b(m39730bl(str)) > 7 || C1626as.m40228b(m39729bm(str2)) > 7) {
            z = false;
        }
        return z;
    }
}
