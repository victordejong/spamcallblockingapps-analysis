.class public Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;
.super Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;
.implements Lcom/callapp/contacts/event/listener/DestroyListener;
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# instance fields
.field private affiliationClickListener:Landroid/view/View$OnClickListener;

.field private affiliationLongClickListener:Landroid/view/View$OnLongClickListener;

.field private lastCallData:Lcom/callapp/contacts/model/call/CallData;

.field private presenterLayout:Landroid/view/View;

.field private final ratingStars:[Landroid/widget/ImageView;

.field private ratingStarsLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presenterLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStarsLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;Lcom/callapp/contacts/model/contact/ContactData;D)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->handleRating(Lcom/callapp/contacts/model/contact/ContactData;D)V

    return-void
.end method

.method static synthetic access$1400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->affiliationClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->affiliationLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->updateEditTextSize()V

    return-void
.end method

.method static synthetic access$1900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/model/call/CallData;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->lastCallData:Lcom/callapp/contacts/model/call/CallData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Landroid/view/View;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->getRootView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->isClickEnabled(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Z

    move-result p0

    return p0
.end method

.method private getAffiliationInfo(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;
    .locals 1

    .line 242
    invoke-static {p1}, Lcom/callapp/contacts/manager/contacts/AffiliationUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/util/Collection;

    move-result-object v0

    .line 243
    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/contacts/AffiliationUtils;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 245
    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    nop

    :array_0
    .array-data 2
        0x20s
        0x2cs
        0x40s
    .end array-data
.end method

.method private static getCategoriesText(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;
    .locals 4

    .line 303
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getCategories()Ljava/util/Collection;

    move-result-object p0

    .line 304
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONCategory;

    .line 307
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONCategory;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s"

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, ", "

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 315
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRootView()Landroid/view/View;
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presenterLayout:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    const v1, 0x7f0a01fa

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presenterLayout:Landroid/view/View;

    .line 323
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->initViews()V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presenterLayout:Landroid/view/View;

    return-object v0
.end method

.method private handleRating(Lcom/callapp/contacts/model/contact/ContactData;D)V
    .locals 8

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStarsLayout:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v3, p2, v1

    if-nez v3, :cond_1

    const/16 p1, 0x8

    .line 256
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 258
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 259
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->isContainsContactHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f060244

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 265
    :cond_2
    invoke-static {p1}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 266
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f06001b

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 268
    :cond_3
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f060088

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    :goto_0
    const/4 v2, -0x1

    int-to-double v3, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpl-double v7, v3, p2

    if-eqz v7, :cond_4

    .line 274
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int v2, p2

    .line 275
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    aget-object p2, p2, v2

    const p3, 0x7f0804a5

    invoke-static {p2, p3, v5}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 276
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    aget-object p2, p2, v2

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_4

    .line 279
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    aget-object p2, p2, v2

    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p1, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    const/4 p2, 0x0

    .line 282
    :goto_1
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    array-length v3, p3

    if-ge p2, v3, :cond_7

    if-eq p2, v2, :cond_6

    if-ge p2, v1, :cond_5

    .line 288
    aget-object p3, p3, p2

    const v3, 0x7f0804a4

    invoke-static {p3, v3, v5}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    goto :goto_2

    .line 290
    :cond_5
    aget-object p3, p3, p2

    const v3, 0x7f0804a3

    invoke-static {p3, v3, v5}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    :goto_2
    if-eqz v0, :cond_6

    .line 295
    iget-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    aget-object p3, p3, p2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 298
    :cond_7
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStarsLayout:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method private isClickEnabled(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)Z
    .locals 1

    .line 117
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateEditTextSize()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_0

    .line 355
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$4;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getInitialTextColor()I
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->isContainsContactHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060244

    return v0

    :cond_0
    const v0, 0x7f0601cc

    return v0
.end method

.method protected getTextViewId()I
    .locals 1

    const v0, 0x7f0a01fb

    return v0
.end method

.method protected initViews()V
    .locals 4

    .line 76
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0721

    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStarsLayout:Landroid/view/View;

    .line 79
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    const v2, 0x7f0a071c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 80
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    const v2, 0x7f0a071d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 81
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    const v2, 0x7f0a071e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 82
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    const v2, 0x7f0a071f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 83
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->ratingStars:[Landroid/widget/ImageView;

    const v2, 0x7f0a0720

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-eq v0, v1, :cond_0

    .line 87
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->affiliationClickListener:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->affiliationLongClickListener:Landroid/view/View$OnLongClickListener;

    :cond_0
    return-void
.end method

.method public synthetic lambda$onCallStateChanged$4$CategoriesPresenter()V
    .locals 1

    const/16 v0, 0x8

    .line 345
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onContactChanged$0$CategoriesPresenter()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presenterLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onContactChanged$1$CategoriesPresenter()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presenterLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onContactChanged$2$CategoriesPresenter()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presenterLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onIncognitoCallStarted$3$CategoriesPresenter()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presenterLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->getPresentersContainer()Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$m2kp3_jq0bf0H2tFpQ8ZekbOphw;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$m2kp3_jq0bf0H2tFpQ8ZekbOphw;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    .line 348
    :cond_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->lastCallData:Lcom/callapp/contacts/model/call/CallData;

    .line 350
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->updateEditTextSize()V

    return-void
.end method

.method public onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$YfUvFJ4P2AsCwSf1kIu1i2RBK48;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$YfUvFJ4P2AsCwSf1kIu1i2RBK48;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 129
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 130
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance p2, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$pgh50cIVuGPUJybaSk4zUVEo5us;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$pgh50cIVuGPUJybaSk4zUVEo5us;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V

    invoke-interface {p1, p2}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 133
    :cond_1
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$fnsaLRiT_afLkcx_cUm_3G7ogJ8;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$fnsaLRiT_afLkcx_cUm_3G7ogJ8;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V

    invoke-interface {p2, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    const/4 p2, 0x6

    new-array p2, p2, [Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getCallReason()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 139
    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getUserDefinition()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 141
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getUserDefinition()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->getCategoriesText(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p2, v1

    .line 143
    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->getAffiliationInfo(Lcom/callapp/contacts/model/contact/ContactData;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p2, v1

    .line 146
    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p2, v1

    .line 148
    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->CONTACT_DETAILS_SCREEN:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-eq v1, v2, :cond_3

    .line 151
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isRecognized()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isUnknownNumber()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x5

    aput-object v0, p2, v1

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$3;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;[Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->onCreate(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V

    .line 61
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->categories:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->rating:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->organizations:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->genomeData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->isIncognito:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->callReason:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->userDefinition:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addContactChangedListener(Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Ljava/util/Set;)V

    .line 63
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addCallStateListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 64
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->addDestroyListener(Lcom/callapp/contacts/event/listener/DestroyListener;)V

    .line 65
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f0a01fa

    .line 68
    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presenterLayout:Landroid/view/View;

    .line 70
    invoke-static {p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->initViews()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/OnIncognitoCallStartedListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onIncognitoCallStarted(Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->presentersContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$qKjNQweCCS_PxJHTwHj-GcOHfFU;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/-$$Lambda$CategoriesPresenter$qKjNQweCCS_PxJHTwHj-GcOHfFU;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
