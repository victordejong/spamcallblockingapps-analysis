package com.privacystar.core.p011ui.intro.af_welcome;

import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_welcome/AFWelcome;", "", "()V", "AFWelcomeDialogView", "AFWelcomeView", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_welcome.AFWelcome */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_welcome/AFWelcome.class */
public final class AFWelcome {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_welcome/AFWelcome$AFWelcomeDialogView;", "", "attemptPurchase", "", "finishView", "hideCloseButton", "setFreeText", "setPremiumText", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.af_welcome.AFWelcome$AFWelcomeDialogView */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_welcome/AFWelcome$AFWelcomeDialogView.class */
    public interface AFWelcomeDialogView {
        void attemptPurchase();

        void finishView();

        void hideCloseButton();

        void setFreeText();

        void setPremiumText();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_welcome/AFWelcome$AFWelcomeView;", "", "showWelcomeDialog", "", "isPremium", "", "transition", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.intro.af_welcome.AFWelcome$AFWelcomeView */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_welcome/AFWelcome$AFWelcomeView.class */
    public interface AFWelcomeView {
        void showWelcomeDialog(boolean z);

        void transition();
    }
}
