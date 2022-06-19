.class public Lcom/telguarder/helpers/ui/UiHelper;
.super Ljava/lang/Object;
.source "UiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;,
        Lcom/telguarder/helpers/ui/UiHelper$PageType;
    }
.end annotation


# static fields
.field private static final CIRCULAR_REVEAL_X:Ljava/lang/String; = "CIRCULAR_REVEAL_X"

.field private static final CIRCULAR_REVEAL_Y:Ljava/lang/String; = "CIRCULAR_REVEAL_Y"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;[I)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/telguarder/helpers/ui/UiHelper;->revealActivity(Landroid/view/View;[I)V

    return-void
.end method

.method public static dpToPixel(Landroid/content/Context;F)I
    .locals 2

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 287
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public static getAppUsableScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "window"

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 133
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 134
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getColorWrapper(Landroid/content/Context;I)I
    .locals 2

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getDefNavBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 108
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDeviceScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getDeviceScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 368
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 369
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 371
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getNavBarHeight(Landroid/content/Context;)I
    .locals 1

    .line 126
    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getDefNavBarHeight(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 127
    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getRealNavBarHeight(Landroid/content/Context;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getRealNavBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 115
    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getAppUsableScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 116
    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    .line 117
    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    iget p0, p0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string v0, "window"

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 142
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 143
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 144
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 151
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getVisibilityPrcnt(Landroid/view/View;)I
    .locals 9
    .param p0    # Landroid/view/View;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, -0x1

    .line 406
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 408
    invoke-virtual {p0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 409
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-long v5, v2

    mul-long v3, v3, v5

    .line 410
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-long v7, p0

    mul-long v5, v5, v7

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-gtz p0, :cond_2

    return v0

    :cond_2
    const-wide/16 v7, 0x64

    mul-long v3, v3, v7

    .line 412
    div-long/2addr v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v3

    return p0

    :catch_0
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static hasSoftKeys(Landroidx/appcompat/app/AppCompatActivity;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 91
    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x4

    .line 94
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 95
    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getDefNavBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 96
    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getRealNavBarHeight(Landroid/content/Context;)I

    move-result p0

    if-lez v1, :cond_2

    if-lez p0, :cond_2

    if-lt p0, v1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method public static hideSoftKeyboard(Landroid/view/View;)V
    .locals 2

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static initToolbar(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;I)V
    .locals 1

    .line 230
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    const p2, 0x7f110245

    .line 231
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    const p2, 0x7f050131

    .line 232
    invoke-static {p0, p2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result p2

    .line 233
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setTitleTextColor(I)V

    .line 234
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 235
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f07001b

    .line 237
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 239
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 240
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p0, 0x1

    .line 242
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 243
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    return-void
.end method

.method public static isVisibleOnCardView(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 386
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 388
    instance-of p0, p0, Landroidx/cardview/widget/CardView;

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0

    .line 394
    :cond_3
    instance-of p0, v1, Landroid/view/View;

    if-nez p0, :cond_4

    return v2

    .line 397
    :cond_4
    move-object p0, v1

    check-cast p0, Landroid/view/View;

    if-nez p0, :cond_0

    return v0
.end method

.method public static longPressHapticFeedback(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method public static openMainFeatureActivity(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Ljava/lang/Class;Lcom/telguarder/helpers/ui/UiHelper$PageType;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/telguarder/helpers/ui/UiHelper$PageType;",
            "Z)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p4, :cond_1

    const/high16 p2, 0x20000

    .line 251
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    const/4 p2, 0x0

    if-nez p1, :cond_2

    .line 253
    invoke-virtual {p3}, Lcom/telguarder/helpers/ui/UiHelper$PageType;->getValue()I

    move-result p1

    invoke-static {p0, v0, p1, p2}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/4 p4, 0x2

    new-array v1, p4, [I

    .line 257
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 258
    aget v2, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, p4

    add-int/2addr v2, v3

    const-string v3, "CIRCULAR_REVEAL_X"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 259
    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, p4

    add-int/2addr v1, v2

    const-string p4, "CIRCULAR_REVEAL_Y"

    invoke-virtual {v0, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le p4, v1, :cond_3

    const-string p2, "transition"

    .line 261
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 262
    :try_start_0
    invoke-virtual {p3}, Lcom/telguarder/helpers/ui/UiHelper$PageType;->getValue()I

    move-result p2

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p2, p1}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {p3}, Lcom/telguarder/helpers/ui/UiHelper$PageType;->getValue()I

    move-result p1

    invoke-static {p0, v0, p1, p2}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static pixelToDp(Landroid/content/Context;I)I
    .locals 2

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    int-to-float p1, p1

    .line 293
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private static revealActivity(Landroid/view/View;[I)V
    .locals 4

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double v0, v0, v2

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 221
    aget v2, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v3, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 v2, 0x12c

    .line 222
    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 223
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static setCircularActivityTransition(Landroidx/appcompat/app/AppCompatActivity;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, "CIRCULAR_REVEAL_X"

    .line 202
    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CIRCULAR_REVEAL_Y"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 203
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Lcom/telguarder/helpers/ui/UiHelper$1;

    invoke-direct {v0, p2, p0}, Lcom/telguarder/helpers/ui/UiHelper$1;-><init>(Landroid/view/View;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 215
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-static {p0, p1, p2, p3, v0}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method public static setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 164
    invoke-static/range {v0 .. v5}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;ZZZ)V

    return-void
.end method

.method public static setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 3

    .line 168
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 169
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p3, v1, :cond_1

    .line 170
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p3

    if-eqz p4, :cond_0

    .line 171
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt p4, v2, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p4

    or-int/lit16 p3, p3, 0x2000

    or-int/lit8 p3, p3, 0x10

    invoke-virtual {p4, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 174
    :cond_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p4, v1, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p4

    or-int/lit16 p3, p3, 0x2000

    invoke-virtual {p4, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    const/16 p3, 0x200

    .line 177
    invoke-virtual {v0, p3, p3}, Landroid/view/Window;->setFlags(II)V

    const/4 p3, 0x0

    if-eqz p5, :cond_2

    const p4, 0x1020002

    .line 179
    invoke-virtual {p0, p4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p5

    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p4, p5, v0, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 182
    :cond_2
    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->hasSoftKeys(Landroidx/appcompat/app/AppCompatActivity;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 183
    invoke-static {p0}, Lcom/telguarder/helpers/ui/UiHelper;->getNavBarHeight(Landroid/content/Context;)I

    move-result p0

    if-eqz p1, :cond_3

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p1, p4, p5, v0, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    if-eqz p2, :cond_5

    .line 188
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const/16 p0, 0x8

    .line 194
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static showSoftKeyboard(Landroid/view/View;)V
    .locals 2

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 361
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public static simulateLinkEffect(Landroid/view/View;IILcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;)V
    .locals 1

    .line 315
    new-instance v0, Lcom/telguarder/helpers/ui/UiHelper$2;

    invoke-direct {v0, p1, p3, p2}, Lcom/telguarder/helpers/ui/UiHelper$2;-><init>(ILcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
