package com.callapp.contacts.util.ResourceRuntimeReplace;

import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ResourceRuntimeReplace/ResourcesMapper.class */
public class ResourcesMapper {

    /* renamed from: a  reason: collision with root package name */
    private final ThemeAttributes f15938a;

    public ResourcesMapper(ThemeAttributes themeAttributes) {
        this.f15938a = themeAttributes;
    }

    public int getColor(int i) {
        switch (i) {
            case 2131099686:
                return this.f15938a.f15941d;
            case 2131099695:
                return this.f15938a.m;
            case 2131099708:
                return this.f15938a.n;
            case 2131099709:
                return this.f15938a.o;
            case 2131099746:
                return this.f15938a.J;
            case 2131099749:
                return this.f15938a.I;
            case 2131099756:
                return this.f15938a.H;
            case 2131099775:
                return this.f15938a.e;
            case 2131099780:
                return this.f15938a.l;
            case 2131099784:
                return this.f15938a.getColorPrimary();
            case 2131099785:
                return this.f15938a.getColorPrimaryDark();
            case 2131099786:
                return this.f15938a.getColorPrimaryLight();
            case 2131099815:
                return this.f15938a.q;
            case 2131099816:
                return this.f15938a.p;
            case 2131099878:
                return this.f15938a.r;
            case 2131099879:
                return this.f15938a.s;
            case 2131099880:
                return this.f15938a.t;
            case 2131099881:
                return this.f15938a.u;
            case 2131099882:
                return this.f15938a.v;
            case 2131099883:
                return this.f15938a.w;
            case 2131099885:
                return this.f15938a.x;
            case 2131099890:
                return this.f15938a.f;
            case 2131099891:
                return this.f15938a.g;
            case 2131099927:
                return this.f15938a.h;
            case 2131099930:
                return this.f15938a.i;
            case 2131099943:
                return this.f15938a.y;
            case 2131099946:
                return this.f15938a.z;
            case 2131099991:
                return this.f15938a.A;
            case 2131099993:
                return this.f15938a.L;
            case 2131099996:
                return this.f15938a.K;
            case 2131100051:
                return this.f15938a.F;
            case 2131100054:
                return this.f15938a.G;
            case 2131100057:
                return this.f15938a.E;
            case 2131100059:
                return this.f15938a.N;
            case 2131100062:
                return this.f15938a.M;
            case 2131100074:
                return this.f15938a.B;
            case 2131100075:
                return this.f15938a.C;
            case 2131100107:
                return this.f15938a.D;
            case 2131100108:
                return this.f15938a.j;
            case 2131100120:
                return this.f15938a.O;
            case 2131100140:
                return this.f15938a.k;
            default:
                return Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
    }

    public int getInnerDrawableResId(int i) {
        switch (i) {
            case 2131230989:
                return this.f15938a.T;
            case 2131230994:
            case 2131230996:
                return this.f15938a.V;
            case 2131230995:
                return this.f15938a.U;
            case 2131231547:
                return this.f15938a.P;
            case 2131231563:
                return this.f15938a.Q;
            case 2131232186:
                return this.f15938a.R;
            case 2131232188:
                return this.f15938a.S;
            case 2131232190:
                return this.f15938a.Z;
            case 2131232192:
                return this.f15938a.aa;
            case 2131232194:
                return this.f15938a.ab;
            case 2131232196:
                return this.f15938a.Y;
            case 2131232217:
                return this.f15938a.X;
            case 2131232220:
                return this.f15938a.W;
            default:
                return 0;
        }
    }

    public boolean isThemeLight() {
        ThemeAttributes themeAttributes = this.f15938a;
        return themeAttributes != null && themeAttributes.isLightTheme();
    }

    public void setIsLight(boolean z) {
        this.f15938a.setLight(z);
    }
}
