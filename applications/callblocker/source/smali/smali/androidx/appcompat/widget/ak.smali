.class Landroidx/appcompat/widget/ak;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final a:[I

.field static final b:[I

.field static final c:[I

.field static final d:[I

.field static final e:[I

.field static final f:[I

.field static final g:[I

.field static final h:[I

.field private static final i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ak;->i:Ljava/lang/ThreadLocal;

    .line 30
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Landroidx/appcompat/widget/ak;->a:[I

    .line 31
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    sput-object v0, Landroidx/appcompat/widget/ak;->b:[I

    .line 32
    new-array v0, v3, [I

    const v1, 0x10102fe

    aput v1, v0, v2

    sput-object v0, Landroidx/appcompat/widget/ak;->c:[I

    .line 33
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroidx/appcompat/widget/ak;->d:[I

    .line 34
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Landroidx/appcompat/widget/ak;->e:[I

    .line 35
    new-array v0, v3, [I

    const v1, 0x10100a1

    aput v1, v0, v2

    sput-object v0, Landroidx/appcompat/widget/ak;->f:[I

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/appcompat/widget/ak;->g:[I

    .line 38
    new-array v0, v2, [I

    sput-object v0, Landroidx/appcompat/widget/ak;->h:[I

    .line 40
    new-array v0, v3, [I

    sput-object v0, Landroidx/appcompat/widget/ak;->j:[I

    return-void

    .line 36
    :array_0
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    sget-object v0, Landroidx/appcompat/widget/ak;->j:[I

    aput p1, v0, v1

    .line 64
    const/4 v0, 0x0

    sget-object v1, Landroidx/appcompat/widget/ak;->j:[I

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ap;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ap;->b(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 68
    invoke-virtual {v0}, Landroidx/appcompat/widget/ap;->a()V

    .line 66
    return v1

    .line 68
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ap;->a()V

    .line 69
    throw v1
.end method

.method static a(Landroid/content/Context;IF)I
    .locals 2

    .prologue
    .line 109
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;I)I

    move-result v0

    .line 110
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 111
    int-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    return v0
.end method

.method private static a()Landroid/util/TypedValue;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Landroidx/appcompat/widget/ak;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 101
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 103
    sget-object v1, Landroidx/appcompat/widget/ak;->i:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    sget-object v0, Landroidx/appcompat/widget/ak;->j:[I

    aput p1, v0, v1

    .line 74
    const/4 v0, 0x0

    sget-object v1, Landroidx/appcompat/widget/ak;->j:[I

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ap;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ap;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Landroidx/appcompat/widget/ap;->a()V

    .line 76
    return-object v1

    .line 78
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/appcompat/widget/ap;->a()V

    .line 79
    throw v1
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 83
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ak;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Landroidx/appcompat/widget/ak;->a:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/ak;->a()Landroid/util/TypedValue;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 93
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 95
    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ak;->a(Landroid/content/Context;IF)I

    move-result v0

    goto :goto_0
.end method
