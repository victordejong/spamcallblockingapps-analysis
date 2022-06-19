.class Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V

    return-void
.end method

.method public synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$b(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V

    return-void
.end method

.method public synthetic c()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$c(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Z

    move-result v0

    return v0
.end method

.method public final c(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method public final d(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)V
    .locals 4

    .line 208
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnUseMarketItemListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->isLightTheme()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Z)V

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    new-instance v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3$1;-><init>(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;)V

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method public getItemType()I
    .locals 1

    .line 216
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->THEME:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v0

    return v0
.end method

.method public synthetic getLeftButtonPrefixText()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$getLeftButtonPrefixText(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromotionType()Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;
    .locals 1

    .line 287
    sget-object v0, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->THEME:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    return-object v0
.end method

.method public synthetic getPurchasePref()Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$getPurchasePref(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 263
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isCurrentDefaultTheme()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->o_()V

    return-void
.end method

.method public isLightTheme()Z
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->isLightTheme()Z

    move-result v0

    return v0

    .line 258
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v0

    return v0
.end method

.method public isSkuInUse()Z
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a(Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;)Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/PreviewThemeFragment;->isLightTheme()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dh:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity$3;->a:Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/ThemeDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v2, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/common/util/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic j()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents$-CC;->$default$j(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;)V

    return-void
.end method
