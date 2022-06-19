.class public abstract Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;
.super Lcom/callapp/contacts/api/helper/common/ActivityWithContact;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;,
        Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;
    }
.end annotation


# static fields
.field protected static final EXTRA_FORCE_PRE_CALL_STATE:Ljava/lang/String; = "forceIdleState"

.field public static final EXTRA_INCOGNITO_CALL:Ljava/lang/String; = "EXTRA_INCOGNITO_CALL"

.field public static final EXTRA_OPEN_CONTACT_DETAILS:Ljava/lang/String; = "EXTRA_OPEN_CONTACT_DETAILS"

.field protected static final EXTRA_REPORT_TRACK_VIEW:Ljava/lang/String; = "EXTRA_REPORT_TRACK_VIEW"

.field public static final EXTRA_SHOW_KEYPAD:Ljava/lang/String; = "EXTRA_SHOW_KEYPAD"


# instance fields
.field private appBar:Lcom/google/android/material/appbar/AppBarLayout;

.field protected assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

.field protected cardsAdapter:Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

.field protected cardsContainer:Landroid/view/View;

.field public contact:Lcom/callapp/contacts/model/contact/ContactData;

.field public contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

.field protected contactFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation
.end field

.field protected final contactFieldsLock:Ljava/lang/Object;

.field protected coverBackground:Landroid/widget/ImageView;

.field protected coverImageView:Landroid/widget/ImageView;

.field protected final eventBus:Lcom/callapp/contacts/event/bus/EventBus;

.field private flingListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

.field private gestureDetector:Landroidx/core/view/d;

.field protected hasPersonalCover:Z

.field protected hasPersonalStoreItemTypeCover:Z

.field protected isIncognitoCall:Z

.field protected isOneTimeIncognitoCall:Z

.field private lastHoldContactState:Z

.field private parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

.field private parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

.field public final presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

.field public final presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

.field private recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

.field protected shouldPlayVideoBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 73
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;-><init>()V

    .line 84
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->flingListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    .line 88
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contactFieldsLock:Ljava/lang/Object;

    .line 95
    new-instance v0, Lcom/callapp/contacts/event/bus/EventBus;

    invoke-direct {v0}, Lcom/callapp/contacts/event/bus/EventBus;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->lastHoldContactState:Z

    .line 104
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$1;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    .line 173
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->appBar:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p0
.end method


# virtual methods
.method public changeContactDetailsThemeColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    .line 289
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Lcom/callapp/contacts/activity/contact/header/ThemeState;Z)V

    .line 291
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getRecyclerViewContainer()Landroid/view/View;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getCardsBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p2, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 293
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 294
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setParallaxAndStatusBarColors(ZZ)V

    return-void
.end method

.method public changeStatusBarTextColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V
    .locals 2

    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasCover()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    sget-object v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;->WHITE:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    if-ne p1, v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->gestureDetector:Landroidx/core/view/d;

    .line 5543
    iget-object v0, v0, Landroidx/core/view/d;->a:Landroidx/core/view/d$a;

    invoke-interface {v0, p1}, Landroidx/core/view/d$a;->a(Landroid/view/MotionEvent;)Z

    .line 542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 543
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->isAppBarFullyClosed()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->isSnapOnUpRulesOk()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 544
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->flingListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->isFling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->flingListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->isFlingUpwards()Z

    move-result p1

    const v0, 0x3ea8f5c3    # 0.33f

    if-eqz p1, :cond_1

    .line 546
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->isPositionAboveSemiOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 547
    sget p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->e:F

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->flingListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->getGetVelocityY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    goto :goto_1

    .line 553
    :cond_1
    sget p1, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->e:F

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->flingListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;->getGetVelocityY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 554
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->isPositionAboveSemiOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {v0, v2, p1, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;FZ)V

    goto :goto_1

    .line 557
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    sget-object v2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    invoke-virtual {v0, v2, p1, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;FZ)V

    :goto_1
    return v1

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    .line 6491
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getClosestPosition()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    .line 568
    :cond_4
    :try_start_0
    invoke-super {p0, p1}, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contact:Lcom/callapp/contacts/model/contact/ContactData;

    return-object v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d002c

    return v0
.end method

.method protected getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->flingListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallaxImpl(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    return-object v0
.end method

.method protected abstract getParallaxImpl(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;)Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
.end method

.method protected abstract getPositionChangedListener()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;
.end method

.method protected abstract getPresenterContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;
.end method

.method protected getRecyclerView()Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    return-object v0
.end method

.method protected getRecyclerViewContainer()Landroid/view/View;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->cardsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    return-object v0
.end method

.method protected getStoreItemAssetManager(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;
    .locals 1

    .line 308
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$5;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V

    .line 2133
    iput-object v0, p1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->b:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;

    return-object p1
.end method

.method public getThemeResId()I
    .locals 1

    .line 576
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getNoTitleTheme()I

    move-result v0

    return v0
.end method

.method public hasCover()Z
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz v0, :cond_0

    .line 4083
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 355
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalCover:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalStoreItemTypeCover:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract isSnapOnUpRulesOk()Z
.end method

.method public synthetic lambda$setParallaxAndStatusBarColors$0$BaseContactDetailsActivity(ZZ)V
    .locals 5

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 409
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->spammer:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    if-eq p2, v3, :cond_b

    .line 410
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setParallaxAsSpammer(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasCover()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Z)V

    .line 412
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const p2, 0x7f06001b

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    .line 413
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-static {p2, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 414
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 415
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 416
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->shouldPlayVideoBackground:Z

    if-eqz v1, :cond_0

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 417
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getThemeChangeViewController()Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->setThirdButtonVisibility(Z)V

    .line 418
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->changeStatusBarTextColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 419
    sget-object p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->spammer:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    goto/16 :goto_4

    .line 421
    :cond_1
    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->shouldPlayVideoBackground:Z

    if-eqz v3, :cond_2

    .line 422
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    sget-object p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->videoRingtone:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    if-eq p1, p2, :cond_b

    .line 423
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 424
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 425
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    const p2, 0x3e2e147b    # 0.17f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 426
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 427
    sget-object p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->COVER:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->changeStatusBarTextColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 428
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->videoRingtone:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    goto/16 :goto_3

    .line 7083
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;->b()Z

    move-result v3

    const v4, 0x7f06010e

    if-nez v3, :cond_7

    .line 430
    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalCover:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalStoreItemTypeCover:Z

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 447
    :cond_3
    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->isIncognitoCall:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->isOneTimeIncognitoCall:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 457
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    sget-object p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->incomingCall:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    if-eq p1, p2, :cond_b

    .line 458
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 459
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 460
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Z)V

    .line 461
    sget-object p1, Lcom/callapp/contacts/activity/contact/header/ThemeState;->PRIMARY:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->changeStatusBarTextColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 462
    sget-object p1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->incomingCall:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    goto/16 :goto_3

    .line 465
    :cond_5
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->other:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    if-eq p2, v3, :cond_b

    .line 466
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setHasCover(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getThemeChangeViewController()Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->setThirdButtonVisibility(Z)V

    .line 468
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setParallaxAsSpammer(Z)V

    .line 469
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Z)V

    .line 470
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 471
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 472
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getParallaxBackgroundColor()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    .line 473
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->changeStatusBarTextColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 474
    sget-object p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->other:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    goto :goto_4

    .line 448
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    sget-object p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->incognito:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    if-eq p1, p2, :cond_b

    .line 449
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v4}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p1

    .line 450
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-static {p2, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 451
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 452
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 453
    sget-object p2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->changeStatusBarTextColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 454
    sget-object p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->incognito:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    goto :goto_4

    .line 432
    :cond_7
    :goto_2
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->cover:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    if-eq p2, v3, :cond_b

    .line 433
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setParallaxAsSpammer(Z)V

    .line 434
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-static {p1, v4}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result p1

    .line 8083
    invoke-static {}, Lcom/callapp/contacts/manager/asset/managers/CoverAssetManager;->b()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 436
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    .line 438
    :cond_8
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalCover:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalStoreItemTypeCover:Z

    if-eqz p2, :cond_a

    .line 439
    :cond_9
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setHasCover(Z)V

    .line 440
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Z)V

    .line 442
    :cond_a
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    invoke-static {p2, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 443
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    invoke-static {p2, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 444
    sget-object p2, Lcom/callapp/contacts/activity/contact/header/ThemeState;->DARK:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->changeStatusBarTextColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V

    .line 445
    sget-object p2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;->cover:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxState:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$ParallaxState;

    goto :goto_4

    :cond_b
    :goto_3
    const/high16 p1, -0x80000000

    :goto_4
    if-eq p1, v0, :cond_d

    .line 478
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_c

    .line 479
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setStatusBarColor(I)V

    return-void

    :cond_c
    const p1, 0x7f06002c

    .line 481
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->setStatusBarColor(I)V

    :cond_d
    return-void
.end method

.method protected abstract onButtonBarIconClicked(Landroid/view/View;)V
.end method

.method protected onButtonBarIconLongClicked(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onContactDetailedThemeChanged(Lcom/callapp/contacts/activity/contact/header/ThemeState;)V
    .locals 3

    .line 281
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->changeContactDetailsThemeColor(Lcom/callapp/contacts/activity/contact/header/ThemeState;Z)V

    .line 283
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 284
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    .line 2091
    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 181
    invoke-super {p0, p1}, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0483

    .line 182
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a02c1

    .line 183
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a02bf

    .line 184
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->coverBackground:Landroid/widget/ImageView;

    const p1, 0x7f0a01f6

    .line 187
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->cardsContainer:Landroid/view/View;

    const v0, 0x7f0a01f5

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    .line 194
    :goto_0
    new-instance p1, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    invoke-direct {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;-><init>()V

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dU:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    new-instance v1, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$2;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V

    invoke-direct {v1, v2}, Lcom/callapp/contacts/manager/asset/mappers/AssetListenerMapper;-><init>(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)V

    .line 195
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a(Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getStoreItemAssetManager(Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;)Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder;->a()Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    .line 220
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->getAssets()V

    .line 223
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 224
    new-instance v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$3;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 257
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->recyclerView:Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/recyclerviewext/CardRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    .line 262
    new-instance p1, Landroidx/core/view/d;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->flingListener:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;

    invoke-direct {p1, p0, v1}, Landroidx/core/view/d;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->gestureDetector:Landroidx/core/view/d;

    const p1, 0x7f0a00e3

    .line 263
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->appBar:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$4;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 274
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->get()Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    move-result-object p1

    const/16 v1, 0x17

    .line 1036
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_7

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1037
    iget-object v1, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1038
    :try_start_0
    iget-object v2, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->c:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    iget-object v0, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    .line 1039
    :cond_3
    iget-object v2, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->c:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_4

    if-eq v0, p0, :cond_6

    :cond_4
    if-eqz v0, :cond_5

    .line 1041
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v2, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 1043
    :cond_5
    iget-object v0, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->setActivityName(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v2, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/o;)V

    .line 1045
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->c:Ljava/lang/ref/WeakReference;

    .line 1047
    :cond_6
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 276
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->getRecyclerViewContainer()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->contactDetailsParallaxThemeState:Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->getCardsBackgroundColor()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 330
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/DestroyListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    invoke-virtual {v0}, Lcom/callapp/contacts/event/bus/EventBus;->a()V

    .line 333
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->assetManager:Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager;->b()V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->presenterManager:Lcom/callapp/contacts/activity/contact/details/PresenterManager;

    if-eqz v0, :cond_2

    .line 342
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresenterManager;->a()V

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->presenterContainer:Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;

    if-eqz v0, :cond_3

    .line 346
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;->onDestroy()V

    .line 349
    :cond_3
    invoke-static {}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->get()Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;

    move-result-object v0

    .line 4052
    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4053
    :try_start_0
    iget-object v3, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->c:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    .line 4054
    iget-object v3, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/base/BaseActivity;

    if-ne v3, p0, :cond_4

    .line 4056
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/base/BaseActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v3

    iget-object v4, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/j;->removeObserver(Landroidx/lifecycle/o;)V

    .line 4057
    iget-object v3, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserver;->setActivityName(Ljava/lang/String;)V

    .line 4058
    iput-object v2, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager;->c:Ljava/lang/ref/WeakReference;

    .line 4061
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    .line 4061
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 325
    invoke-super {p0, p1}, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/PauseListener;->a:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 361
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 366
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/ActivityWithContact;->onResume()V

    .line 367
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->eventBus:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/event/listener/ResumeListener;->d:Lcom/callapp/contacts/event/bus/EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5091
    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;Z)V

    .line 369
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;->NONE:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->setCallActionSource(Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallActionSource;)V

    return-void
.end method

.method protected abstract onTopBarIconClicked(Landroid/view/View;)V
.end method

.method protected varargs setButtonBarClickedListeners([I)V
    .locals 4

    .line 593
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 594
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$7;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$7;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected varargs setButtonBarLongClickedListeners([I)V
    .locals 4

    .line 606
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 607
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$8;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$8;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setHasCover(Z)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->setHasCover(Z)V

    return-void
.end method

.method public setHasPersonalCover(Z)V
    .locals 0

    .line 645
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalCover:Z

    return-void
.end method

.method public setHasPersonalStoreItemTypeCover(Z)V
    .locals 0

    .line 649
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->hasPersonalStoreItemTypeCover:Z

    return-void
.end method

.method protected setHoldContactData(Z)V
    .locals 1

    .line 653
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->lastHoldContactState:Z

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_1

    .line 654
    :cond_0
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->lastHoldContactState:Z

    .line 655
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$9;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected setParallaxAndStatusBarColors(ZZ)V
    .locals 2

    .line 406
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks;

    invoke-direct {v1, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/-$$Lambda$BaseContactDetailsActivity$d18qYyTRaugFVPi5ugdqNu6P6Ks;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;ZZ)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setParallaxAsSpammer(Z)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->setSpammer(Z)V

    return-void
.end method

.method protected setShouldHideSocialProfileAction(Z)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->setShouldHideSocialProfileAction(Z)V

    return-void
.end method

.method protected varargs setTopBarClickedListeners([I)V
    .locals 4

    .line 580
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 581
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$6;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$6;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected shouldColorHeaderBackground()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected snapToPositionByOrientation()V
    .locals 3

    .line 386
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->CLOSED:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    goto :goto_0

    .line 389
    :cond_0
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;->SEMI_OPEN:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity;->parallaxImpl:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$Position;Z)V

    return-void
.end method
