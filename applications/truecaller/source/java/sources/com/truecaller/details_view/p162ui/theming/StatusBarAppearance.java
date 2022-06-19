package com.truecaller.details_view.p162ui.theming;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: com.truecaller.details_view.ui.theming.StatusBarAppearance */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/theming/StatusBarAppearance.class */
public final class StatusBarAppearance {

    /* renamed from: a */
    public final Appearance f11791a;

    /* renamed from: b */
    public final Appearance f11792b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance;", "", "<init>", "(Ljava/lang/String;I)V", "LIGHT", "DARK", "details-view_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.details_view.ui.theming.StatusBarAppearance$Appearance */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/theming/StatusBarAppearance$Appearance.class */
    public enum Appearance {
        LIGHT,
        DARK
    }

    public StatusBarAppearance(Appearance appearance, Appearance appearance2) {
        l.e(appearance, "onHeaderBackground");
        l.e(appearance2, "offHeaderBackground");
        this.f11791a = appearance;
        this.f11792b = appearance2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof StatusBarAppearance)) {
                return false;
            }
            StatusBarAppearance statusBarAppearance = (StatusBarAppearance) obj;
            return l.a(this.f11791a, statusBarAppearance.f11791a) && l.a(this.f11792b, statusBarAppearance.f11792b);
        }
        return true;
    }

    public int hashCode() {
        Appearance appearance = this.f11791a;
        int i = 0;
        int hashCode = appearance != null ? appearance.hashCode() : 0;
        Appearance appearance2 = this.f11792b;
        if (appearance2 != null) {
            i = appearance2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("StatusBarAppearance(onHeaderBackground=");
        m8728C.append(this.f11791a);
        m8728C.append(", offHeaderBackground=");
        m8728C.append(this.f11792b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
