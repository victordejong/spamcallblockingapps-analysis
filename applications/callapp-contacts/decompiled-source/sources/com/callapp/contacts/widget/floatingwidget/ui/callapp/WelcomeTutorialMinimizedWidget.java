package com.callapp.contacts.widget.floatingwidget.ui.callapp;

import android.content.Context;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.widget.floatingwidget.ui.ChatHeadManager;
import com.facebook.rebound.e;
import com.facebook.rebound.k;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/WelcomeTutorialMinimizedWidget.class */
public class WelcomeTutorialMinimizedWidget extends InActivityWidget {
    public WelcomeTutorialMinimizedWidget(ChatHeadManager chatHeadManager, k kVar, Context context, boolean z) {
        super(chatHeadManager, kVar, context, z);
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead, com.facebook.rebound.i
    public final void a(e eVar) {
        super.a(eVar);
        if (this.o == null) {
            return;
        }
        if (getHorizontalSpring().f20128d.f20129a + (this.o.getWidth() / 2.0d) < this.f16696b.getMaxWidth() / 2.0d && this.o.getScaleX() == 1.0f) {
            this.o.setScaleX(-1.0f);
        } else if (getHorizontalSpring().f20128d.f20129a + (this.o.getWidth() / 2.0d) > this.f16696b.getMaxWidth() / 2.0d && this.o.getScaleX() == -1.0f) {
            this.o.setScaleX(1.0f);
        }
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected final void d(boolean z) {
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected final boolean e() {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    int getIconResId() {
        return BillingManager.isBillingAvailable() ? 2131231972 : 2131231496;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    protected int getLayoutResource() {
        return 2131558859;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    public boolean isTooltipLeftShown() {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.callapp.InActivityWidget
    public boolean isTooltipRightShown() {
        return false;
    }

    @Override // com.callapp.contacts.widget.floatingwidget.ui.ChatHead
    public void setChatHeadToDefaultPosition(boolean z) {
        getVerticalSpring().c(100.0d);
        getHorizontalSpring().c(100.0d);
        int intValue = Prefs.fW.get().intValue();
        if (intValue == 0 || intValue == this.f16696b.getMaxWidth() - this.f16696b.getConfig().getHeadWidth()) {
            getHorizontalSpring().b(intValue);
            getVerticalSpring().b(Prefs.fX.get().intValue());
            return;
        }
        getHorizontalSpring().b(this.f16696b.getMaxWidth() - this.f16696b.getConfig().getHeadWidth());
        getVerticalSpring().b(this.f16696b.getMaxHeight() / 4);
    }
}
