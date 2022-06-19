.class public Lcom/verizon/ads/support/utils/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static volatile b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/verizon/ads/support/utils/ViewUtils;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const/high16 v0, -0x40800000    # -1.0f

    .line 36
    sput v0, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachView(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {p0, p1, v0}, Lcom/verizon/ads/support/utils/ViewUtils;->attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static attachView(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p1}, Lcom/verizon/ads/support/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    instance-of v1, v0, Landroid/content/MutableContextWrapper;

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 73
    sget-object v2, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Changing view context to match parent context"

    invoke-virtual {v2, v3}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 75
    check-cast v0, Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, v1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 80
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 82
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static convertDipsToPixels(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 194
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static convertPixelsToDips(Landroid/content/Context;I)I
    .locals 2

    .line 176
    sget v0, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo;

    invoke-direct {v0, p0}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/verizon/ads/EnvironmentInfo;->getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getScreenInfo()Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->getDensity()F

    move-result p0

    sput p0, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    :cond_0
    int-to-float p0, p1

    .line 180
    sget p1, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static convertPixelsToDips(Landroid/content/Context;Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    .line 202
    sget-object p0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to convert for null dimensions"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 207
    :cond_0
    sget v0, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Lcom/verizon/ads/EnvironmentInfo;

    invoke-direct {v0, p0}, Lcom/verizon/ads/EnvironmentInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/verizon/ads/EnvironmentInfo;->getDeviceInfo()Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/verizon/ads/EnvironmentInfo$DeviceInfo;->getScreenInfo()Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->getDensity()F

    move-result p0

    sput p0, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    .line 212
    :cond_1
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    sget v0, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 213
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 215
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sget v2, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 216
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sget v2, Lcom/verizon/ads/support/utils/ViewUtils;->b:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 217
    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 218
    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    const/4 p0, 0x3

    .line 220
    invoke-static {p0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 221
    sget-object p0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Converted dimensions from pixels to dips: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getActivityForView(Landroid/view/View;)Landroid/app/Activity;
    .locals 4

    if-eqz p0, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 150
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 154
    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    .line 158
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    sget-object v1, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const-string p0, "Found activity <%s> for view <%s>"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static getActivityHashForView(Landroid/view/View;)I
    .locals 6

    .line 117
    invoke-static {p0}, Lcom/verizon/ads/support/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Unable to get activity hash"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    .line 124
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    sget-object v1, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    const-string p0, "Found activity hash code <%d> for view <%s>"

    .line 125
    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static getContentDimensions(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 325
    sget-object p0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to calculate content dimensions for null view"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v0

    .line 330
    :cond_0
    invoke-static {p0}, Lcom/verizon/ads/support/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 332
    sget-object p0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to calculate content for null root view"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    .line 338
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 341
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const/4 v0, 0x3

    .line 343
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    sget-object v0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p0

    const-string p0, "Content dimensions for View <%s>: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public static getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .line 290
    invoke-static {p0}, Lcom/verizon/ads/support/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 305
    :goto_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 306
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_3
    const/4 v0, 0x3

    .line 309
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    sget-object v0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const-string p0, "Found decor view <%s> for view <%s>"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method public static getViewDimensionsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    if-nez p0, :cond_0

    .line 257
    sget-object p0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to calculate view dimensions for null view"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 263
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 270
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 271
    aget v3, v1, v2

    iput v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    .line 272
    aget v1, v1, v3

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 273
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 274
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v1, 0x3

    .line 276
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    sget-object v1, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "On screen dimensions for View <%s>: %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public static getViewDimensionsRelativeToContent(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 228
    invoke-static {p0, p1}, Lcom/verizon/ads/support/utils/ViewUtils;->getViewDimensionsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 230
    invoke-static {p0}, Lcom/verizon/ads/support/utils/ViewUtils;->getDecorView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 232
    sget-object p0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to calculate dimensions for null root view"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 241
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 242
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    const/4 v0, 0x3

    .line 245
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    sget-object v0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "null"

    :goto_0
    aput-object v2, v1, p0

    const-string p0, "Dimensions relative to content for View <%s>: %s"

    .line 246
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public static removeFromParent(Landroid/view/View;)V
    .locals 2

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 96
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 98
    sget-object p0, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to remove view from parent, no valid parent view found"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public static setRequestedOrientationSafe(Landroid/app/Activity;I)V
    .locals 1

    .line 355
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 357
    sget-object p1, Lcom/verizon/ads/support/utils/ViewUtils;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Orientation not changed due to android issue: https://issuetracker.google.com/issues/68454482"

    invoke-virtual {p1, v0, p0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
