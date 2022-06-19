package com.callapp.contacts.util.ResourceRuntimeReplace;

import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper.class */
public class ResourcesMapper {

    /* renamed from: a */
    private final ThemeAttributes f27783a;

    public ResourcesMapper(ThemeAttributes themeAttributes) {
        this.f27783a = themeAttributes;
    }

    public int getColor(int i) {
        switch (i) {
            case 2131099686:
                return this.f27783a.f27814d;
            case 2131099695:
                return this.f27783a.f27823m;
            case 2131099708:
                return this.f27783a.f27824n;
            case 2131099709:
                return this.f27783a.f27825o;
            case 2131099746:
                return this.f27783a.f27793J;
            case 2131099749:
                return this.f27783a.f27792I;
            case 2131099756:
                return this.f27783a.f27791H;
            case 2131099775:
                return this.f27783a.f27815e;
            case 2131099780:
                return this.f27783a.f27822l;
            case 2131099784:
                return this.f27783a.getColorPrimary();
            case 2131099785:
                return this.f27783a.getColorPrimaryDark();
            case 2131099786:
                return this.f27783a.getColorPrimaryLight();
            case 2131099815:
                return this.f27783a.f27827q;
            case 2131099816:
                return this.f27783a.f27826p;
            case 2131099878:
                return this.f27783a.f27828r;
            case 2131099879:
                return this.f27783a.f27829s;
            case 2131099880:
                return this.f27783a.f27830t;
            case 2131099881:
                return this.f27783a.f27831u;
            case 2131099882:
                return this.f27783a.f27832v;
            case 2131099883:
                return this.f27783a.f27833w;
            case 2131099885:
                return this.f27783a.f27834x;
            case 2131099890:
                return this.f27783a.f27816f;
            case 2131099891:
                return this.f27783a.f27817g;
            case 2131099927:
                return this.f27783a.f27818h;
            case 2131099930:
                return this.f27783a.f27819i;
            case 2131099943:
                return this.f27783a.f27835y;
            case 2131099946:
                return this.f27783a.f27836z;
            case 2131099991:
                return this.f27783a.f27784A;
            case 2131099993:
                return this.f27783a.f27795L;
            case 2131099996:
                return this.f27783a.f27794K;
            case 2131100051:
                return this.f27783a.f27789F;
            case 2131100054:
                return this.f27783a.f27790G;
            case 2131100057:
                return this.f27783a.f27788E;
            case 2131100059:
                return this.f27783a.f27797N;
            case 2131100062:
                return this.f27783a.f27796M;
            case 2131100074:
                return this.f27783a.f27785B;
            case 2131100075:
                return this.f27783a.f27786C;
            case 2131100107:
                return this.f27783a.f27787D;
            case 2131100108:
                return this.f27783a.f27820j;
            case 2131100120:
                return this.f27783a.f27798O;
            case 2131100140:
                return this.f27783a.f27821k;
            default:
                return Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
    }

    public int getInnerDrawableResId(int i) {
        switch (i) {
            case 2131230989:
                return this.f27783a.f27803T;
            case 2131230994:
            case 2131230996:
                return this.f27783a.f27805V;
            case 2131230995:
                return this.f27783a.f27804U;
            case 2131231547:
                return this.f27783a.f27799P;
            case 2131231563:
                return this.f27783a.f27800Q;
            case 2131232186:
                return this.f27783a.f27801R;
            case 2131232188:
                return this.f27783a.f27802S;
            case 2131232190:
                return this.f27783a.f27809Z;
            case 2131232192:
                return this.f27783a.f27811aa;
            case 2131232194:
                return this.f27783a.f27812ab;
            case 2131232196:
                return this.f27783a.f27808Y;
            case 2131232217:
                return this.f27783a.f27807X;
            case 2131232220:
                return this.f27783a.f27806W;
            default:
                return 0;
        }
    }

    public boolean isThemeLight() {
        ThemeAttributes themeAttributes = this.f27783a;
        return themeAttributes != null && themeAttributes.isLightTheme();
    }

    public void setIsLight(boolean z) {
        this.f27783a.setLight(z);
    }
}
