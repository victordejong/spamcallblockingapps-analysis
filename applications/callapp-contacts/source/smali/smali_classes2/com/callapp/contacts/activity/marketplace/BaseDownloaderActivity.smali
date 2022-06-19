.class public abstract Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;
.super Lcom/callapp/contacts/activity/base/BaseTopBarActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JsonStoreItem:",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;",
        ">",
        "Lcom/callapp/contacts/activity/base/BaseTopBarActivity;"
    }
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJsonStoreItem;"
        }
    .end annotation
.end field

.field public b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field private e:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->k:J

    return-wide v0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->g:Landroid/view/View;

    return-object p0
.end method

.method private getItemStore()V
    .locals 2

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->k:J

    .line 69
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->c:Ljava/lang/String;

    .line 70
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;)V

    invoke-direct {v0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            ")TJsonStoreItem;"
        }
    .end annotation
.end method

.method protected a(I)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->b()V

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->g:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    const/16 p1, 0x1f4

    const/4 v1, 0x0

    .line 117
    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;II)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 119
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$3;-><init>(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 126
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->c:Ljava/lang/String;

    .line 1197
    iput-object v0, p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1202
    iput-boolean v0, p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->b:Z

    .line 90
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;)V

    .line 1207
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V

    return-void
.end method

.method protected b()V
    .locals 7

    const v0, 0x7f0a0344

    .line 133
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/callapp/contacts/widget/ProgressCardView;

    .line 134
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    move-result-object v5

    iget-object v6, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->d:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;-><init>(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;Lcom/callapp/contacts/widget/ProgressCardView;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->e:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    return-void
.end method

.method protected getActionBarColor()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 173
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f060088

    invoke-static {p0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method protected getCardContainer()Landroid/view/View;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method protected getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->e:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0049

    return v0
.end method

.method protected getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->getCardView()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o_()V
    .locals 3

    .line 224
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTIVITY_SOURCE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x1000c000

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 228
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->finish()V

    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->c(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onBackPressed()V

    .line 199
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->j:Z

    .line 201
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->o_()V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 139
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->finish()V

    .line 143
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f12052f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2111
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->finish()V

    .line 149
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f1200ef

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3111
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 153
    :cond_1
    new-instance p1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const v0, 0x7f120537

    .line 154
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const-string p1, ""

    .line 157
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->getActionBarColor()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const p1, 0x7f0a02a2

    .line 163
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->f:Landroid/view/View;

    .line 164
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f0a0779

    .line 166
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->g:Landroid/view/View;

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 169
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->getItemStore()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->e:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3538
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a:Lcom/callapp/contacts/manager/task/Task;

    if-eqz v2, :cond_0

    .line 3539
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a:Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    .line 3542
    :cond_0
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 3543
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/CallAppApplication;->c(Ljava/lang/Runnable;)V

    .line 180
    :cond_1
    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->e:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 185
    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    .line 190
    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->h:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    .line 193
    :cond_4
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onDestroy()V

    return-void
.end method

.method public setUserBuyProduct(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->j:Z

    return-void
.end method
