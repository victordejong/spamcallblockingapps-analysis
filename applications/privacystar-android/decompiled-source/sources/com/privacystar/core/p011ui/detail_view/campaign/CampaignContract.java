package com.privacystar.core.p011ui.detail_view.campaign;

import android.content.Intent;
import android.os.Parcelable;
import android.support.annotation.DrawableRes;
import com.apptentive.android.sdk.module.engagement.interaction.model.NavigateToLinkInteraction;
import com.privacystar.core.util.BlockingManager;
import io.realm.Realm;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/campaign/CampaignContract;", "", "()V", "CampaignActivityManager", "CampaignView", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.campaign.CampaignContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/campaign/CampaignContract.class */
public final class CampaignContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/campaign/CampaignContract$CampaignActivityManager;", "", "getDefaultImage", "", "shouldShowOverflowMenu", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.campaign.CampaignContract$CampaignActivityManager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/campaign/CampaignContract$CampaignActivityManager.class */
    public interface CampaignActivityManager {
        int getDefaultImage();

        boolean shouldShowOverflowMenu();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u000f\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\u0003H&J\b\u0010\n\u001a\u00020\u0003H&J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH&J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J(\u0010\u0011\u001a\u00020\u00032\n\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H&J\b\u0010\u001a\u001a\u00020\u0003H&J\b\u0010\u001b\u001a\u00020\u0003H&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0005H&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u0005H&J\u0012\u0010\u001f\u001a\u00020\u00032\b\b\u0001\u0010\f\u001a\u00020\u000eH&J\u0010\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0005H&J\u0012\u0010\"\u001a\u00020\u00032\b\b\u0001\u0010\u0010\u001a\u00020\u000eH&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0005H&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0019H&J\b\u0010'\u001a\u00020\u0003H&¨\u0006("}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/campaign/CampaignContract$CampaignView;", "", "addButtonOneAction", "", BlockingManager.ACTION_CONSTANT, "", "addButtonTwoAction", "getRealmTemp", "Lio/realm/Realm;", "hideButtonOne", "hideButtonTwo", "loadLogo", "logo", "defaultImage", "", "loadSecondaryImage", "secondaryImage", NavigateToLinkInteraction.EVENT_NAME_NAVIGATE, "intent", "Landroid/content/Intent;", "className", "Ljava/lang/Class;", "parcelable", "Landroid/os/Parcelable;", "addToBackstack", "", "navigateBack", "navigateHome", "setButtonOneText", "text", "setButtonTwoText", "setLogo", "setMessage", "message", "setSecondaryImage", "setTitle", "title", "setupToolbar", "showMenu", "showPaywall", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.campaign.CampaignContract$CampaignView */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/campaign/CampaignContract$CampaignView.class */
    public interface CampaignView {

        @Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
        /* renamed from: com.privacystar.core.ui.detail_view.campaign.CampaignContract$CampaignView$DefaultImpls */
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/campaign/CampaignContract$CampaignView$DefaultImpls.class */
        public static final class DefaultImpls {
            public static /* synthetic */ void navigate$default(CampaignView campaignView, Class cls, Parcelable parcelable, boolean z, int i, Object obj) {
                if (obj != null) {
                    throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigate");
                }
                if ((i & 2) != 0) {
                    parcelable = null;
                }
                campaignView.navigate(cls, parcelable, z);
            }
        }

        void addButtonOneAction(@NotNull String str);

        void addButtonTwoAction(@NotNull String str);

        @NotNull
        Realm getRealmTemp();

        void hideButtonOne();

        void hideButtonTwo();

        void loadLogo(@NotNull String str, int i);

        void loadSecondaryImage(@NotNull String str, int i);

        void navigate(@NotNull Intent intent);

        void navigate(@NotNull Class<?> cls, @Nullable Parcelable parcelable, boolean z);

        void navigateBack();

        void navigateHome();

        void setButtonOneText(@NotNull String str);

        void setButtonTwoText(@NotNull String str);

        void setLogo(@DrawableRes int i);

        void setMessage(@NotNull String str);

        void setSecondaryImage(@DrawableRes int i);

        void setTitle(@NotNull String str);

        void setupToolbar(boolean z);

        void showPaywall();
    }
}
