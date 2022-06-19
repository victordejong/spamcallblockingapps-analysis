package com.callapp.contacts.widget.floatingwidget.p240ui;

import android.os.Bundle;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.widget.floatingwidget.ChatHeadUtils;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead;
import com.facebook.rebound.AbstractC10420i;
import com.facebook.rebound.C10413d;
import com.facebook.rebound.C10414e;
import com.facebook.rebound.C10417f;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement.class */
public class MinimizedArrangement<T extends Serializable> extends ChatHeadArrangement {

    /* renamed from: a */
    private static int f29110a;

    /* renamed from: b */
    private static int f29111b;

    /* renamed from: c */
    private float f29112c;

    /* renamed from: g */
    private int f29116g;

    /* renamed from: h */
    private int f29117h;

    /* renamed from: j */
    private ChatHeadManager<T> f29119j;

    /* renamed from: k */
    private C10417f f29120k;

    /* renamed from: l */
    private C10417f f29121l;

    /* renamed from: m */
    private ChatHead f29122m;

    /* renamed from: p */
    private Bundle f29125p;

    /* renamed from: u */
    private boolean f29130u;

    /* renamed from: d */
    private float f29113d = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: e */
    private int f29114e = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: f */
    private int f29115f = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* renamed from: i */
    private boolean f29118i = false;

    /* renamed from: n */
    private double f29123n = -1.0d;

    /* renamed from: o */
    private double f29124o = -1.0d;

    /* renamed from: q */
    private int f29126q = 0;

    /* renamed from: r */
    private boolean f29127r = true;

    /* renamed from: s */
    private AbstractC10420i f29128s = new C10413d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement.1
        @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
        /* renamed from: a */
        public final void mo22809a(C10414e c10414e) {
            MinimizedArrangement minimizedArrangement = MinimizedArrangement.this;
            minimizedArrangement.f29113d = (float) ((minimizedArrangement.f29112c * ((MinimizedArrangement.this.f29116g / 2) - c10414e.f34074d.f34085a)) / (MinimizedArrangement.this.f29116g / 2));
            if (MinimizedArrangement.this.f29120k != null) {
                MinimizedArrangement.this.f29120k.m22832b().m22845a(c10414e.f34074d.f34085a, true);
            }
        }

        @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
        /* renamed from: b */
        public final void mo22808b(C10414e c10414e) {
            super.mo22808b(c10414e);
            if (MinimizedArrangement.this.f29130u) {
                MinimizedArrangement.this.f29130u = false;
            }
        }

        @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
        /* renamed from: c */
        public final void mo22807c(C10414e c10414e) {
            super.mo22807c(c10414e);
        }
    };

    /* renamed from: t */
    private AbstractC10420i f29129t = new C10413d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement.2
        @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
        /* renamed from: a */
        public final void mo22809a(C10414e c10414e) {
            if (MinimizedArrangement.this.f29121l != null) {
                MinimizedArrangement.this.f29121l.m22832b().m22845a(c10414e.f34074d.f34085a, true);
            }
        }

        @Override // com.facebook.rebound.C10413d, com.facebook.rebound.AbstractC10420i
        /* renamed from: b */
        public final void mo22808b(C10414e c10414e) {
            super.mo22808b(c10414e);
            if (MinimizedArrangement.this.f29130u) {
                MinimizedArrangement.this.f29130u = false;
            }
        }
    };

    public MinimizedArrangement(ChatHeadManager chatHeadManager) {
        this.f29112c = BitmapDescriptorFactory.HUE_RED;
        this.f29119j = chatHeadManager;
        this.f29112c = ChatHeadUtils.m26543a(chatHeadManager.getContext(), 5);
    }

    /* renamed from: c */
    private Integer m26501c(ChatHead chatHead) {
        int i = 0;
        int i2 = 0;
        for (ChatHead<T> chatHead2 : this.f29119j.getChatHeads()) {
            if (chatHead == chatHead2) {
                i = i2;
            }
            i2++;
        }
        return Integer.valueOf(i);
    }

    private Bundle getBundle(int i) {
        ChatHead chatHead = this.f29122m;
        if (chatHead != null) {
            this.f29123n = (chatHead.getHorizontalSpring().f34074d.f34085a * 1.0d) / this.f29116g;
            this.f29124o = (this.f29122m.getVerticalSpring().f34074d.f34085a * 1.0d) / this.f29117h;
        }
        Bundle bundle = this.f29125p;
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putDouble("hero_relative_x", this.f29123n);
        bundle2.putDouble("hero_relative_y", this.f29124o);
        return bundle2;
    }

    private Bundle getBundleWithHero() {
        return getBundle(getHeroIndex().intValue());
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: a */
    public final void mo26514a() {
        this.f29118i = false;
        ChatHead chatHead = this.f29122m;
        if (chatHead != null) {
            if (chatHead.getHorizontalSpring() != null) {
                this.f29122m.getHorizontalSpring().m22839b(this.f29128s);
            }
            if (this.f29122m.getVerticalSpring() != null) {
                this.f29122m.getVerticalSpring().m22839b(this.f29129t);
            }
        }
        C10417f c10417f = this.f29120k;
        if (c10417f != null) {
            for (C10414e c10414e : c10417f.f34089a) {
                c10414e.m22847a();
            }
        }
        C10417f c10417f2 = this.f29121l;
        if (c10417f2 != null) {
            for (C10414e c10414e2 : c10417f2.f34089a) {
                c10414e2.m22847a();
            }
        }
        this.f29120k = null;
        this.f29121l = null;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: a */
    public final void mo26513a(ChatHead chatHead) {
        if (chatHead == this.f29122m) {
            this.f29122m = null;
        }
        mo26508a(this.f29119j, null, this.f29116g, this.f29117h, true);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: a */
    public final void mo26511a(ChatHead chatHead, boolean z) {
        ChatHead chatHead2 = this.f29122m;
        if (chatHead2 != null && chatHead2.getHorizontalSpring() != null && this.f29122m.getVerticalSpring() != null) {
            chatHead.getHorizontalSpring().m22845a(this.f29122m.getHorizontalSpring().f34074d.f34085a - this.f29113d, true);
            chatHead.getVerticalSpring().m22845a(this.f29122m.getVerticalSpring().f34074d.f34085a, true);
        }
        mo26508a(this.f29119j, getRetainBundle(), this.f29116g, this.f29117h, z);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: a */
    public final void mo26510a(ChatHead chatHead, boolean z, int i, int i2, C10414e c10414e, C10414e c10414e2, C10414e c10414e3, int i3) {
        if (!z && Math.abs(i3) < f29111b && chatHead == this.f29122m) {
            if (Math.abs(i3) < f29110a && chatHead.getState() == ChatHead.State.FREE && this.f29118i) {
                setIdleStateX((int) c10414e2.f34074d.f34085a);
                setIdleStateY((int) c10414e3.f34074d.f34085a);
            }
            if (c10414e == c10414e2) {
                double d = c10414e2.f34074d.f34085a;
                if (this.f29119j.getConfig().getHeadWidth() + d + this.f29126q > i && c10414e2.f34074d.f34086b > 0.0d) {
                    int headWidth = this.f29119j.getConfig().getHeadWidth();
                    int i4 = this.f29126q;
                    c10414e2.m22843a(SpringConfigsHolder.f29139a);
                    c10414e2.m22840b((i - headWidth) - i4);
                } else if (d < 0.0d && c10414e2.f34074d.f34086b < 0.0d) {
                    c10414e2.m22843a(SpringConfigsHolder.f29139a);
                    c10414e2.m22840b(0.0d);
                }
            } else if (c10414e == c10414e3) {
                double d2 = c10414e3.f34074d.f34085a;
                if (this.f29119j.getConfig().getHeadWidth() + d2 > i2 && c10414e3.f34074d.f34086b > 0.0d) {
                    c10414e3.m22843a(SpringConfigsHolder.f29139a);
                    c10414e3.m22840b(i2 - this.f29119j.getConfig().getHeadHeight());
                } else if (d2 < 0.0d && c10414e3.f34074d.f34086b < 0.0d) {
                    c10414e3.m22843a(SpringConfigsHolder.f29139a);
                    c10414e3.m22840b(0.0d);
                }
            }
        }
        if (z || chatHead != this.f29122m) {
            return;
        }
        int[] mo26410c = this.f29119j.mo26410c(chatHead);
        int[] mo26408d = this.f29119j.mo26408d(chatHead);
        double mo26426a = this.f29119j.mo26426a(((float) c10414e2.f34074d.f34085a) + (this.f29119j.getConfig().getHeadWidth() / 2), ((float) c10414e3.f34074d.f34085a) + (this.f29119j.getConfig().getHeadHeight() / 2));
        double mo26415b = this.f29119j.mo26415b(((float) c10414e2.f34074d.f34085a) + (this.f29119j.getConfig().getHeadWidth() / 2), ((float) c10414e3.f34074d.f34085a) + (this.f29119j.getConfig().getHeadHeight() / 2));
        boolean z2 = mo26426a < ((double) chatHead.f29046a) && c10414e2.f34071a == SpringConfigsHolder.f29141c && c10414e3.f34071a == SpringConfigsHolder.f29141c;
        boolean z3 = mo26415b < ((double) chatHead.f29046a) && c10414e2.f34071a == SpringConfigsHolder.f29141c && c10414e3.f34071a == SpringConfigsHolder.f29141c;
        if (c10414e2.m22841b() && c10414e3.m22841b() && (z2 || z3)) {
            c10414e2.m22843a(SpringConfigsHolder.f29139a);
            c10414e3.m22843a(SpringConfigsHolder.f29139a);
            chatHead.setState(z2 ? ChatHead.State.CAPTURED_LEFT : ChatHead.State.CAPTURED_RIGHT);
        }
        if ((chatHead.getState() == ChatHead.State.CAPTURED_LEFT || chatHead.getState() == ChatHead.State.CAPTURED_RIGHT) && c10414e2.f34071a != SpringConfigsHolder.f29140b) {
            c10414e2.m22838c();
            c10414e3.m22838c();
            c10414e2.m22843a(SpringConfigsHolder.f29140b);
            c10414e3.m22843a(SpringConfigsHolder.f29140b);
            int[] iArr = z2 ? mo26410c : mo26408d;
            c10414e2.m22840b(iArr[0]);
            c10414e3.m22840b(iArr[1]);
        }
        if ((chatHead.getState() == ChatHead.State.CAPTURED_LEFT || chatHead.getState() == ChatHead.State.CAPTURED_RIGHT) && c10414e3.m22841b()) {
            this.f29119j.getLeftCloseButton().m26524a(true);
            this.f29119j.getRightCloseButton().m26524a(true);
            this.f29119j.mo26422a(chatHead.getState() == ChatHead.State.CAPTURED_LEFT ? this.f29119j.getLeftCloseButton() : this.f29119j.getRightCloseButton());
        }
        if (c10414e3.m22841b() || this.f29130u) {
            this.f29119j.getLeftCloseButton().m26524a(false);
            this.f29119j.getRightCloseButton().m26524a(false);
            return;
        }
        this.f29119j.getLeftCloseButton().m26528a();
        this.f29119j.getRightCloseButton().m26528a();
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: a */
    public final void mo26509a(ChatHeadManager chatHeadManager) {
        chatHeadManager.mo26407e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0083, code lost:
        if (r13 > (r0.size() - 1)) goto L15;
     */
    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo26508a(com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager r7, android.os.Bundle r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 885
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.widget.floatingwidget.p240ui.MinimizedArrangement.mo26508a(com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager, android.os.Bundle, int, int, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0105  */
    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo26512a(com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.widget.floatingwidget.p240ui.MinimizedArrangement.mo26512a(com.callapp.contacts.widget.floatingwidget.ui.ChatHead, int, int, boolean):boolean");
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: b */
    public final void mo26504b(ChatHead chatHead) {
        Bundle bundle = getBundle(m26501c(chatHead).intValue());
        ChatHeadManager<T> chatHeadManager = this.f29119j;
        mo26508a(chatHeadManager, bundle, chatHeadManager.getMaxWidth(), this.f29119j.getMaxHeight(), true);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: b */
    public final boolean mo26505b() {
        return this.f29127r;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    /* renamed from: c */
    public final void mo26502c() {
        for (ChatHead<T> chatHead : this.f29119j.getChatHeads()) {
            if (!chatHead.isSticky()) {
                this.f29119j.mo26419a((ChatHeadManager<T>) chatHead.getKey());
                return;
            }
        }
    }

    public Integer getHeroIndex() {
        return m26501c(this.f29122m);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadArrangement
    public Bundle getRetainBundle() {
        return getBundleWithHero();
    }

    public void setIdleStateX(int i) {
        this.f29114e = i;
    }

    public void setIdleStateY(int i) {
        this.f29115f = i;
    }
}
