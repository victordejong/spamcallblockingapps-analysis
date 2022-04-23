package com.callapp.contacts.widget.floatingwidget.ui;

import android.os.Bundle;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.widget.floatingwidget.ChatHeadUtils;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHead;
import com.facebook.rebound.d;
import com.facebook.rebound.e;
import com.facebook.rebound.f;
import com.facebook.rebound.i;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement.class */
public class MinimizedArrangement<T extends Serializable> extends ChatHeadArrangement {

    /* renamed from: a  reason: collision with root package name */
    private static int f16724a;

    /* renamed from: b  reason: collision with root package name */
    private static int f16725b;

    /* renamed from: c  reason: collision with root package name */
    private float f16726c;
    private int g;
    private int h;
    private ChatHeadManager<T> j;
    private f k;
    private f l;
    private ChatHead m;
    private Bundle p;
    private boolean u;

    /* renamed from: d  reason: collision with root package name */
    private float f16727d = BitmapDescriptorFactory.HUE_RED;
    private int e = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    private int f = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
    private boolean i = false;
    private double n = -1.0d;
    private double o = -1.0d;
    private int q = 0;
    private boolean r = true;
    private i s = new d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement.1
        @Override // com.facebook.rebound.d, com.facebook.rebound.i
        public final void a(e eVar) {
            MinimizedArrangement minimizedArrangement = MinimizedArrangement.this;
            minimizedArrangement.f16727d = (float) ((minimizedArrangement.f16726c * ((MinimizedArrangement.this.g / 2) - eVar.f20128d.f20129a)) / (MinimizedArrangement.this.g / 2));
            if (MinimizedArrangement.this.k != null) {
                MinimizedArrangement.this.k.b().a(eVar.f20128d.f20129a, true);
            }
        }

        @Override // com.facebook.rebound.d, com.facebook.rebound.i
        public final void b(e eVar) {
            super.b(eVar);
            if (MinimizedArrangement.this.u) {
                MinimizedArrangement.this.u = false;
            }
        }

        @Override // com.facebook.rebound.d, com.facebook.rebound.i
        public final void c(e eVar) {
            super.c(eVar);
        }
    };
    private i t = new d() { // from class: com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement.2
        @Override // com.facebook.rebound.d, com.facebook.rebound.i
        public final void a(e eVar) {
            if (MinimizedArrangement.this.l != null) {
                MinimizedArrangement.this.l.b().a(eVar.f20128d.f20129a, true);
            }
        }

        @Override // com.facebook.rebound.d, com.facebook.rebound.i
        public final void b(e eVar) {
            super.b(eVar);
            if (MinimizedArrangement.this.u) {
                MinimizedArrangement.this.u = false;
            }
        }
    };

    public MinimizedArrangement(ChatHeadManager chatHeadManager) {
        this.f16726c = BitmapDescriptorFactory.HUE_RED;
        this.j = chatHeadManager;
        this.f16726c = ChatHeadUtils.a(chatHeadManager.getContext(), 5);
    }

    private Integer c(ChatHead chatHead) {
        int i = 0;
        int i2 = 0;
        for (ChatHead<T> chatHead2 : this.j.getChatHeads()) {
            if (chatHead == chatHead2) {
                i = i2;
            }
            i2++;
        }
        return Integer.valueOf(i);
    }

    private Bundle getBundle(int i) {
        ChatHead chatHead = this.m;
        if (chatHead != null) {
            this.n = (chatHead.getHorizontalSpring().f20128d.f20129a * 1.0d) / this.g;
            this.o = (this.m.getVerticalSpring().f20128d.f20129a * 1.0d) / this.h;
        }
        Bundle bundle = this.p;
        Bundle bundle2 = bundle;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        bundle2.putDouble("hero_relative_x", this.n);
        bundle2.putDouble("hero_relative_y", this.o);
        return bundle2;
    }

    private Bundle getBundleWithHero() {
        return getBundle(getHeroIndex().intValue());
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    public final void a() {
        this.i = false;
        ChatHead chatHead = this.m;
        if (chatHead != null) {
            if (chatHead.getHorizontalSpring() != null) {
                this.m.getHorizontalSpring().b(this.s);
            }
            if (this.m.getVerticalSpring() != null) {
                this.m.getVerticalSpring().b(this.t);
            }
        }
        f fVar = this.k;
        if (fVar != null) {
            for (e eVar : fVar.f20133a) {
                eVar.a();
            }
        }
        f fVar2 = this.l;
        if (fVar2 != null) {
            for (e eVar2 : fVar2.f20133a) {
                eVar2.a();
            }
        }
        this.k = null;
        this.l = null;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    public final void a(ChatHead chatHead) {
        if (chatHead == this.m) {
            this.m = null;
        }
        a(this.j, null, this.g, this.h, true);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    public final void a(ChatHead chatHead, boolean z) {
        ChatHead chatHead2 = this.m;
        if (!(chatHead2 == null || chatHead2.getHorizontalSpring() == null || this.m.getVerticalSpring() == null)) {
            chatHead.getHorizontalSpring().a(this.m.getHorizontalSpring().f20128d.f20129a - this.f16727d, true);
            chatHead.getVerticalSpring().a(this.m.getVerticalSpring().f20128d.f20129a, true);
        }
        a(this.j, getRetainBundle(), this.g, this.h, z);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    public final void a(ChatHead chatHead, boolean z, int i, int i2, e eVar, e eVar2, e eVar3, int i3) {
        if (!z && Math.abs(i3) < f16725b && chatHead == this.m) {
            if (Math.abs(i3) < f16724a && chatHead.getState() == ChatHead.State.FREE && this.i) {
                setIdleStateX((int) eVar2.f20128d.f20129a);
                setIdleStateY((int) eVar3.f20128d.f20129a);
            }
            if (eVar == eVar2) {
                double d2 = eVar2.f20128d.f20129a;
                if (this.j.getConfig().getHeadWidth() + d2 + this.q > i && eVar2.f20128d.f20130b > 0.0d) {
                    int headWidth = this.j.getConfig().getHeadWidth();
                    int i4 = this.q;
                    eVar2.a(SpringConfigsHolder.f16736a);
                    eVar2.b((i - headWidth) - i4);
                } else if (d2 < 0.0d && eVar2.f20128d.f20130b < 0.0d) {
                    eVar2.a(SpringConfigsHolder.f16736a);
                    eVar2.b(0.0d);
                }
            } else if (eVar == eVar3) {
                double d3 = eVar3.f20128d.f20129a;
                if (this.j.getConfig().getHeadWidth() + d3 > i2 && eVar3.f20128d.f20130b > 0.0d) {
                    eVar3.a(SpringConfigsHolder.f16736a);
                    eVar3.b(i2 - this.j.getConfig().getHeadHeight());
                } else if (d3 < 0.0d && eVar3.f20128d.f20130b < 0.0d) {
                    eVar3.a(SpringConfigsHolder.f16736a);
                    eVar3.b(0.0d);
                }
            }
        }
        if (!z && chatHead == this.m) {
            r11 = this.j.c(chatHead);
            int[] iArr = this.j.d(chatHead);
            double a2 = this.j.a(((float) eVar2.f20128d.f20129a) + (this.j.getConfig().getHeadWidth() / 2), ((float) eVar3.f20128d.f20129a) + (this.j.getConfig().getHeadHeight() / 2));
            double b2 = this.j.b(((float) eVar2.f20128d.f20129a) + (this.j.getConfig().getHeadWidth() / 2), ((float) eVar3.f20128d.f20129a) + (this.j.getConfig().getHeadHeight() / 2));
            boolean z2 = a2 < ((double) chatHead.f16695a) && eVar2.f20125a == SpringConfigsHolder.f16738c && eVar3.f20125a == SpringConfigsHolder.f16738c;
            boolean z3 = b2 < ((double) chatHead.f16695a) && eVar2.f20125a == SpringConfigsHolder.f16738c && eVar3.f20125a == SpringConfigsHolder.f16738c;
            if (eVar2.b() && eVar3.b() && (z2 || z3)) {
                eVar2.a(SpringConfigsHolder.f16736a);
                eVar3.a(SpringConfigsHolder.f16736a);
                chatHead.setState(z2 ? ChatHead.State.CAPTURED_LEFT : ChatHead.State.CAPTURED_RIGHT);
            }
            if ((chatHead.getState() == ChatHead.State.CAPTURED_LEFT || chatHead.getState() == ChatHead.State.CAPTURED_RIGHT) && eVar2.f20125a != SpringConfigsHolder.f16737b) {
                eVar2.c();
                eVar3.c();
                eVar2.a(SpringConfigsHolder.f16737b);
                eVar3.a(SpringConfigsHolder.f16737b);
                if (z2) {
                }
                eVar2.b(iArr[0]);
                eVar3.b(iArr[1]);
            }
            if ((chatHead.getState() == ChatHead.State.CAPTURED_LEFT || chatHead.getState() == ChatHead.State.CAPTURED_RIGHT) && eVar3.b()) {
                this.j.getLeftCloseButton().a(true);
                this.j.getRightCloseButton().a(true);
                this.j.a(chatHead.getState() == ChatHead.State.CAPTURED_LEFT ? this.j.getLeftCloseButton() : this.j.getRightCloseButton());
            }
            if (eVar3.b() || this.u) {
                this.j.getLeftCloseButton().a(false);
                this.j.getRightCloseButton().a(false);
                return;
            }
            this.j.getLeftCloseButton().a();
            this.j.getRightCloseButton().a();
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    public final void a(ChatHeadManager chatHeadManager) {
        chatHeadManager.e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0083, code lost:
        if (r13 > (r0.size() - 1)) goto L_0x0086;
     */
    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager r7, android.os.Bundle r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 885
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement.a(com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager, android.os.Bundle, int, int, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0105  */
    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.callapp.contacts.widget.floatingwidget.ui.ChatHead r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.widget.floatingwidget.ui.MinimizedArrangement.a(com.callapp.contacts.widget.floatingwidget.ui.ChatHead, int, int, boolean):boolean");
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    public final void b(ChatHead chatHead) {
        Bundle bundle = getBundle(c(chatHead).intValue());
        ChatHeadManager<T> chatHeadManager = this.j;
        a(chatHeadManager, bundle, chatHeadManager.getMaxWidth(), this.j.getMaxHeight(), true);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    public final boolean b() {
        return this.r;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    public final void c() {
        for (ChatHead<T> chatHead : this.j.getChatHeads()) {
            if (!chatHead.isSticky()) {
                this.j.a((ChatHeadManager<T>) chatHead.getKey());
                return;
            }
        }
    }

    public Integer getHeroIndex() {
        return c(this.m);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHeadArrangement
    public Bundle getRetainBundle() {
        return getBundleWithHero();
    }

    public void setIdleStateX(int i) {
        this.e = i;
    }

    public void setIdleStateY(int i) {
        this.f = i;
    }
}
