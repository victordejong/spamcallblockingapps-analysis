package com.truecaller.details_view.p162ui.actionbutton;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1275v.p1276a.p1298r0.AbstractC20845h;
import s1.z.c.l;
/* renamed from: com.truecaller.details_view.ui.actionbutton.ActionButton */
/* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/actionbutton/ActionButton.class */
public final class ActionButton {

    /* renamed from: a */
    public final int f11723a;

    /* renamed from: b */
    public final int f11724b;

    /* renamed from: c */
    public final int f11725c;

    /* renamed from: d */
    public final int f11726d;

    /* renamed from: e */
    public final AbstractC20845h f11727e;

    /* renamed from: f */
    public final Type f11728f;

    /* renamed from: g */
    public final AbstractC3866a f11729g;

    /* renamed from: h */
    public final Integer f11730h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;", "", "<init>", "(Ljava/lang/String;I)V", "CALL", "MESSAGE", "UNBLOCK", "BLOCK", "NOT_SPAM", "VOIP", "FLASH", "INVITE", "details-view_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.details_view.ui.actionbutton.ActionButton$Type */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/actionbutton/ActionButton$Type.class */
    public enum Type {
        CALL,
        MESSAGE,
        UNBLOCK,
        BLOCK,
        NOT_SPAM,
        VOIP,
        FLASH,
        INVITE
    }

    /* renamed from: com.truecaller.details_view.ui.actionbutton.ActionButton$a */
    /* loaded from: classes8-dex2jar.jar:com/truecaller/details_view/ui/actionbutton/ActionButton$a.class */
    public interface AbstractC3866a {
        /* renamed from: dd */
        void mo10648dd(ActionButton actionButton);
    }

    public ActionButton(int i, int i2, int i3, int i4, AbstractC20845h abstractC20845h, Type type, AbstractC3866a abstractC3866a, Integer num) {
        l.e(abstractC20845h, "iconPainter");
        l.e(type, "type");
        l.e(abstractC3866a, "onClickListener");
        this.f11723a = i;
        this.f11724b = i2;
        this.f11725c = i3;
        this.f11726d = i4;
        this.f11727e = abstractC20845h;
        this.f11728f = type;
        this.f11729g = abstractC3866a;
        this.f11730h = num;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ActionButton)) {
                return false;
            }
            ActionButton actionButton = (ActionButton) obj;
            return this.f11723a == actionButton.f11723a && this.f11724b == actionButton.f11724b && this.f11725c == actionButton.f11725c && this.f11726d == actionButton.f11726d && l.a(this.f11727e, actionButton.f11727e) && l.a(this.f11728f, actionButton.f11728f) && l.a(this.f11729g, actionButton.f11729g) && l.a(this.f11730h, actionButton.f11730h);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f11723a;
        int i2 = this.f11724b;
        int i3 = this.f11725c;
        int i4 = this.f11726d;
        AbstractC20845h abstractC20845h = this.f11727e;
        int i5 = 0;
        int hashCode = abstractC20845h != null ? abstractC20845h.hashCode() : 0;
        Type type = this.f11728f;
        int hashCode2 = type != null ? type.hashCode() : 0;
        AbstractC3866a abstractC3866a = this.f11729g;
        int hashCode3 = abstractC3866a != null ? abstractC3866a.hashCode() : 0;
        Integer num = this.f11730h;
        if (num != null) {
            i5 = num.hashCode();
        }
        return (((((((((((((i * 31) + i2) * 31) + i3) * 31) + i4) * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i5;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ActionButton(id=");
        m8728C.append(this.f11723a);
        m8728C.append(", text=");
        m8728C.append(this.f11724b);
        m8728C.append(", icon=");
        m8728C.append(this.f11725c);
        m8728C.append(", textColor=");
        m8728C.append(this.f11726d);
        m8728C.append(", iconPainter=");
        m8728C.append(this.f11727e);
        m8728C.append(", type=");
        m8728C.append(this.f11728f);
        m8728C.append(", onClickListener=");
        m8728C.append(this.f11729g);
        m8728C.append(", tag=");
        return C22128a.m8689L2(m8728C, this.f11730h, ")");
    }
}
