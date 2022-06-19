.class public Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;,
        Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/callapp/contacts/manager/task/Task;

.field b:Ljava/lang/Runnable;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/callapp/contacts/widget/ProgressCardView;

.field private final e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

.field private g:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;Lcom/callapp/contacts/widget/ProgressCardView;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/marketplace/BaseDownloaderActivity;",
            "Lcom/callapp/contacts/widget/ProgressCardView;",
            "TT;",
            "Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    .line 154
    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->c:Ljava/lang/ref/WeakReference;

    .line 156
    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    .line 157
    invoke-interface {p4}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->isLightTheme()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p4, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Z[I)Landroid/util/SparseIntArray;

    move-result-object p4

    const v0, 0x7f060088

    .line 158
    invoke-virtual {p4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->h:I

    const v0, 0x7f060026

    .line 159
    invoke-virtual {p4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    iput p4, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->i:I

    .line 160
    iput-object p5, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->j:Ljava/lang/String;

    .line 161
    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProgressCardView;->setVisibility(I)V

    .line 162
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProgressCardView;->setCardBackgroundColor(I)V

    .line 1167
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance p4, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;

    invoke-direct {p4, p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$1;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)V

    invoke-virtual {p1, p4}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    .line 1191
    invoke-virtual {p3}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProgressCardView;->setTitle(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p3}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProgressCardView;->setDescription(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a()V

    .line 1196
    new-instance p1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$2;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)V

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/ProgressCardView;->setListener(Lcom/callapp/contacts/widget/ProgressCardView$SimpleCardViewEvents;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060088
        0x7f060026
    .end array-data
.end method

.method private a(I)Landroid/text/SpannableString;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 398
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    .line 400
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    :cond_0
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getPrice()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    int-to-float v5, v1

    sub-float/2addr v3, v5

    div-float/2addr v2, v3

    .line 406
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v3

    const/4 v5, 0x2

    .line 407
    invoke-virtual {v3, v5}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 408
    invoke-virtual {v3, v5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    float-to-double v6, v2

    .line 409
    invoke-virtual {v3, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const v9, 0x7f0601bd

    const-string v10, "sans-serif-medium"

    const-string v12, "sans-serif-light"

    const-string v13, "/"

    const v14, 0x7f120555

    const-string v15, " "

    const-string v8, "%"

    const-string v11, " / "

    const/16 v5, 0x21

    if-eqz v4, :cond_2

    .line 417
    invoke-static {v14}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 424
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 425
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v8, v2, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 426
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8, v2, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 427
    new-instance v2, Landroid/text/style/TypefaceSpan;

    invoke-direct {v2, v10}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 428
    new-instance v2, Landroid/text/style/TypefaceSpan;

    invoke-direct {v2, v12}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    add-int/2addr v1, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v2, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 429
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f0601cc

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v2, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 430
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v8, v2, v1, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 433
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {v14}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 440
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 441
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v8, v2, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 442
    new-instance v2, Landroid/text/style/TypefaceSpan;

    invoke-direct {v2, v12}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 443
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f0601cc

    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v8, v2, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 444
    new-instance v2, Landroid/text/style/TypefaceSpan;

    invoke-direct {v2, v10}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    add-int/2addr v1, v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v2, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 445
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v8, v2, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 446
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v8, v2, v1, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_4

    .line 451
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-virtual {v1, v8}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftText(Landroid/text/SpannableString;)V

    .line 453
    :cond_4
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-virtual {v1, v7}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftTextVisibility(I)V

    return-object v8
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->g:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;Lcom/callapp/contacts/manager/task/Task;)Lcom/callapp/contacts/manager/task/Task;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a:Lcom/callapp/contacts/manager/task/Task;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;)Z
    .locals 0

    .line 2321
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isPurchased()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/widget/ProgressCardView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->j:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 6

    .line 325
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->getItemType()I

    move-result v0

    sget-object v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->getItemType()I

    move-result v0

    sget-object v1, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->PERSONAL_COVER:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    const v1, 0x7f060026

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    const v2, 0x7f060233

    .line 327
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    new-instance v4, Landroid/text/SpannableString;

    const v5, 0x7f12057f

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 326
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/callapp/contacts/widget/ProgressCardView;->setRightButtonStyle(IIILandroid/text/SpannableString;)V

    goto :goto_1

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->isSkuInUse()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1203b3

    goto :goto_0

    :cond_2
    const v0, 0x7f1207fc

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->h:I

    const/4 v3, -0x1

    new-instance v4, Landroid/text/SpannableString;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2, v2, v3, v4}, Lcom/callapp/contacts/widget/ProgressCardView;->setRightButtonStyle(IIILandroid/text/SpannableString;)V

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->i:I

    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->h:I

    const v3, 0x7f1200d1

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftButtonStyle(IIILjava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftButtonVisibility(I)V

    goto :goto_1

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftButtonVisibility(I)V

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftTextVisibility(I)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->getLeftButtonPrefixText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->setRightButtonStyle(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->getItemType()I

    move-result v0

    sget-object v2, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 352
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftButtonVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getPromotionPercent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(I)Landroid/text/SpannableString;

    return-void

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftTextVisibility(I)V

    return-void

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftButtonVisibility(I)V

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getPromotionPercent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a(I)Landroid/text/SpannableString;

    return-void

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftButtonVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setLeftTextVisibility(I)V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->g:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)Lcom/callapp/contacts/manager/task/Task;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a:Lcom/callapp/contacts/manager/task/Task;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)V
    .locals 0

    .line 2529
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->a()V

    .line 2532
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    if-eqz p0, :cond_0

    .line 2533
    invoke-interface {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->f()V

    :cond_0
    return-void
.end method

.method private setRightButtonStyle(Ljava/lang/String;)V
    .locals 4

    .line 388
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getPriceWithCurrency()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->getPriceWithCurrency()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 389
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    invoke-interface {p1, v1}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 390
    new-instance p1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 392
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    iget v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->h:I

    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->i:I

    invoke-virtual {p1, v1, v1, v2, v0}, Lcom/callapp/contacts/widget/ProgressCardView;->setRightButtonStyle(IIILandroid/text/SpannableString;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setButtonsContainerVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setProgressContainerVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    .line 1321
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->c()V

    goto :goto_0

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d()V

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    if-eqz v0, :cond_1

    .line 383
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->e:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;Lcom/callapp/contacts/widget/ProgressCardView;)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 5

    .line 459
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->f:Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;

    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$DownloaderCardEvents;->e()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProgressCardView;->setButtonsContainerVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    .line 2254
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    invoke-static {v1}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    .line 2256
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    const v2, 0x7f0a0346

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->l:Landroid/widget/TextView;

    .line 2257
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    const v2, 0x7f0a00d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->h:Landroid/widget/TextView;

    .line 2258
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    const v2, 0x7f0a06a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->i:Landroid/widget/TextView;

    .line 2259
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    const v2, 0x7f0a089e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->j:Landroid/widget/ImageView;

    .line 2260
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->j:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, 0x7f0601ec

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2261
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->f:Landroid/view/View;

    const v2, 0x7f0a06f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->k:Landroid/widget/ProgressBar;

    .line 2262
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    const v2, 0x7f060088

    .line 2264
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2266
    :cond_1
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->l:Landroid/widget/TextView;

    const v2, 0x7f1202c4

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2267
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->l:Landroid/widget/TextView;

    sget v2, Lcom/callapp/contacts/widget/ProgressCardView;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2268
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->h:Landroid/widget/TextView;

    sget v2, Lcom/callapp/contacts/widget/ProgressCardView;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2269
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->i:Landroid/widget/TextView;

    sget v2, Lcom/callapp/contacts/widget/ProgressCardView;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2271
    iget-object v1, v0, Lcom/callapp/contacts/widget/ProgressCardView;->j:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/callapp/contacts/widget/ProgressCardView;->n:Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$3;-><init>(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b:Ljava/lang/Runnable;

    .line 525
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getProgressCardView()Lcom/callapp/contacts/widget/ProgressCardView;
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler;->d:Lcom/callapp/contacts/widget/ProgressCardView;

    return-object v0
.end method
