.class public Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;
.super Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity<",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
        ">;"
    }
.end annotation


# instance fields
.field e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

.field private h:Landroid/net/Uri;

.field private j:Landroid/view/View;

.field private k:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "EXTRA_ITEM_ID"

    .line 72
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 61
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVITY_SOURCE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v0, "RETURN_TO_PREVIOUS_CLASS"

    .line 64
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    const-string p2, "source"

    .line 66
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;)V
    .locals 7

    .line 4104
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v6, v1

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    const-string v1, "User corrected info"

    const-string v2, "Click on add image"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 4105
    new-instance v0, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;

    sget-object v1, Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;->IMAGE:Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;-><init>(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$ImageSourceType;)V

    .line 4106
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->k:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-nez v1, :cond_0

    .line 4107
    new-instance v1, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getFileUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "Store"

    invoke-direct {v1, p0, v2, v3}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->k:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    .line 4109
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->k:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/ChooseImageSourceDialog;->setListener(Lcom/callapp/contacts/popup/ChooseImageSourceDialog$OnChooseImageSourceClickListener;)V

    .line 4110
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->f:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->isCustomizable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 199
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dP:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->b(Z)V

    .line 202
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dP:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dS:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 203
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v1

    if-eqz v0, :cond_0

    const v2, 0x7f1203b3

    goto :goto_0

    :cond_0
    const v2, 0x7f1200af

    :goto_0
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProgressCardView;->setRightButtonText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/ProgressCardView;->a(Z)V

    return-void

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->a(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->b(Z)V

    return-void

    .line 211
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dS:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    const v2, 0x7f1207fc

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/ProgressCardView;->setRightButtonText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->a(Z)V

    :cond_3
    return-void
.end method

.method private getFileUri()Landroid/net/Uri;
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->h:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/io/File;

    const-string v1, "CallAppMedia"

    invoke-static {v1}, Lcom/callapp/contacts/util/IoUtils;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "callAppCustomKeypad"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->h:Landroid/net/Uri;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->h:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .locals 0

    .line 4083
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getKeypad()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    move-result-object p1

    return-object p1
.end method

.method protected final a(I)V
    .locals 6

    .line 173
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->a(I)V

    .line 175
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    if-eqz p1, :cond_5

    .line 176
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    if-eqz p1, :cond_4

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->isCustomizable()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0a00c5

    .line 178
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->j:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x7f0a00bc

    .line 3222
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08058d

    const v1, 0x7f060088

    .line 3223
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 3224
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->j:Landroid/view/View;

    const v1, 0x7f0a00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3225
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->j:Landroid/view/View;

    const v3, 0x7f0a06c6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3226
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const v4, 0x7f060244

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3227
    iget-boolean v3, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->e:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0802b9

    .line 3228
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3229
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f12007f

    .line 3230
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f080479

    .line 3233
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x8

    .line 3234
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3236
    :goto_0
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->getCustomUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->getCustomUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->f:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->dQ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;->setKeypadImageUrl(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1201a3

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 188
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;->setKeypadImageUrl(Ljava/lang/String;)V

    .line 191
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->d()V

    :cond_5
    return-void
.end method

.method getDownloaderListenerEvents()Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
    .locals 1

    .line 247
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;)V

    return-object v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0034

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, -0x64

    if-ne p2, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->k:Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->a()V

    :cond_0
    const/16 v0, 0x3a98

    const/4 v1, -0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e20

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x61a8

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    if-ne p2, v1, :cond_5

    .line 158
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 160
    new-instance p2, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    invoke-direct {p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;-><init>()V

    .line 162
    invoke-virtual {p2, v2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setIsFromGallery(Z)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p2

    .line 163
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setImagePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 164
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setSavePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 160
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x3e8

    if-ne p2, p1, :cond_3

    .line 140
    invoke-static {p3}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->f:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 144
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dP:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 145
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dQ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 146
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;->getKeypadImageView()Landroid/widget/ImageView;

    move-result-object p2

    iget-object p3, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->f:Ljava/lang/String;

    invoke-direct {p1, p2, p3, p0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->dQ:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    .line 147
    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1381
    iput-object p2, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->r:Ljava/lang/String;

    .line 2376
    iput-boolean v2, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 149
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 153
    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->d()V

    return-void

    :cond_4
    if-ne p2, v1, :cond_5

    .line 131
    new-instance p1, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    invoke-direct {p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;-><init>()V

    .line 133
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setImagePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 134
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->setSavePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    move-result-object p1

    .line 131
    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity;->a(Landroid/app/Activity;Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "source"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->d:Ljava/lang/String;

    .line 92
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dP:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNull()Z

    move-result p1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->e:Z

    .line 93
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f0a0548

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->c(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->g:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    .line 94
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Store Key Pad screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 7

    .line 99
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source"

    aput-object v2, v6, v1

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Store Key Pad screen"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 100
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;->onDestroy()V

    return-void
.end method
