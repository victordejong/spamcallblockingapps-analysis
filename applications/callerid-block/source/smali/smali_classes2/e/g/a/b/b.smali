.class public Le/g/a/b/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/util/TypedValue;


# direct methods
.method public static a(Landroid/content/Context;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x1010435

    :goto_0
    invoke-static {p0, v0, p1}, Le/g/a/b/b;->f(Landroid/content/Context;II)I

    move-result p0

    return p0

    :cond_0
    const v0, 0x7f0400f8

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x101042a

    :goto_0
    invoke-static {p0, v0, p1}, Le/g/a/b/b;->f(Landroid/content/Context;II)I

    move-result p0

    return p0

    :cond_0
    const v0, 0x7f0400fb

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x101042c

    :goto_0
    invoke-static {p0, v0, p1}, Le/g/a/b/b;->f(Landroid/content/Context;II)I

    move-result p0

    return p0

    :cond_0
    const v0, 0x7f0400fc

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x1010429

    :goto_0
    invoke-static {p0, v0, p1}, Le/g/a/b/b;->f(Landroid/content/Context;II)I

    move-result p0

    return p0

    :cond_0
    const v0, 0x7f0400fd

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private static f(Landroid/content/Context;II)I
    .locals 3

    sget-object v0, Le/g/a/b/b;->a:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Le/g/a/b/b;->a:Landroid/util/TypedValue;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Le/g/a/b/b;->a:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Le/g/a/b/b;->a:Landroid/util/TypedValue;

    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1

    iget p0, p1, Landroid/util/TypedValue;->data:I

    return p0

    :cond_1
    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget-object p1, Le/g/a/b/b;->a:Landroid/util/TypedValue;

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    return p2
.end method

.method public static g(Landroid/content/res/TypedArray;I)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getType(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget p0, p0, Landroid/util/TypedValue;->type:I

    :goto_0
    return p0
.end method

.method public static h(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010054

    invoke-static {p0, v0, p1}, Le/g/a/b/b;->f(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method
