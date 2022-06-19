package com.callapp.contacts.widget.floatingwidget.p240ui.callapp;

import android.content.Context;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.widget.floatingwidget.p240ui.ChatHeadManager;
import com.facebook.rebound.C10414e;
import com.facebook.rebound.C10422k;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.WelcomeTutorialMinimizedWidget */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget.class */
public class WelcomeTutorialMinimizedWidget extends InActivityWidget {
    public WelcomeTutorialMinimizedWidget(ChatHeadManager chatHeadManager, C10422k c10422k, Context context, boolean z) {
        super(chatHeadManager, c10422k, context, z);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead, com.facebook.rebound.AbstractC10420i
    /* renamed from: a */
    public final void mo22809a(C10414e c10414e) {
        super.mo22809a(c10414e);
        if (this.f29180o != null) {
            if (getHorizontalSpring().f34074d.f34085a + (this.f29180o.getWidth() / 2.0d) < this.f29047b.getMaxWidth() / 2.0d && this.f29180o.getScaleX() == 1.0f) {
                this.f29180o.setScaleX(-1.0f);
            } else if (getHorizontalSpring().f34074d.f34085a + (this.f29180o.getWidth() / 2.0d) <= this.f29047b.getMaxWidth() / 2.0d || this.f29180o.getScaleX() != -1.0f) {
            } else {
                this.f29180o.setScaleX(1.0f);
            }
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    /* renamed from: d */
    protected final void mo26452d(boolean z) {
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    /* renamed from: e */
    protected final boolean mo26451e() {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    int getIconResId() {
        return BillingManager.isBillingAvailable() ? 2131231972 : 2131231496;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    protected int getLayoutResource() {
        return 2131558859;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    public boolean isTooltipLeftShown() {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.callapp.InActivityWidget
    public boolean isTooltipRightShown() {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.p240ui.ChatHead
    public void setChatHeadToDefaultPosition(boolean z) {
        getVerticalSpring().m22837c(100.0d);
        getHorizontalSpring().m22837c(100.0d);
        int intValue = Prefs.f26511fW.get().intValue();
        if (intValue == 0 || intValue == this.f29047b.getMaxWidth() - this.f29047b.getConfig().getHeadWidth()) {
            getHorizontalSpring().m22840b(intValue);
            getVerticalSpring().m22840b(Prefs.f26512fX.get().intValue());
            return;
        }
        getHorizontalSpring().m22840b(this.f29047b.getMaxWidth() - this.f29047b.getConfig().getHeadWidth());
        getVerticalSpring().m22840b(this.f29047b.getMaxHeight() / 4);
    }
}
