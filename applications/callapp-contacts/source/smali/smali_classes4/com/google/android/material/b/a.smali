.class public final Lcom/google/android/material/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 1

    .line 153
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int v0, v0, p1

    div-int/lit16 v0, v0, 0xff

    .line 154
    invoke-static {p0, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result p0

    return p0
.end method

.method public static a(IIF)I
    .locals 1

    .line 128
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 129
    invoke-static {p1, p2}, Landroidx/core/graphics/a;->b(II)I

    move-result p1

    .line 1139
    invoke-static {p1, p0}, Landroidx/core/graphics/a;->a(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;II)I
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lcom/google/android/material/h/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 86
    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method
