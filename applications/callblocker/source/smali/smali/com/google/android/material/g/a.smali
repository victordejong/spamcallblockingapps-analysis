.class public Lcom/google/android/material/g/a;
.super Ljava/lang/Object;
.source "MaterialColors.java"


# direct methods
.method public static a(II)I
    .locals 1

    .prologue
    .line 140
    invoke-static {p1, p0}, Landroidx/core/graphics/a;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(IIF)I
    .locals 1

    .prologue
    .line 129
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 130
    invoke-static {p1, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    .line 131
    invoke-static {p0, v0}, Lcom/google/android/material/g/a;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;II)I
    .locals 1

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/google/android/material/n/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    .line 87
    iget p2, v0, Landroid/util/TypedValue;->data:I

    .line 89
    :cond_0
    return p2
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/google/android/material/n/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;I)I
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/android/material/n/b;->a(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/android/material/g/a;->a(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;IIF)I
    .locals 2

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/google/android/material/g/a;->a(Landroid/view/View;I)I

    move-result v0

    .line 116
    invoke-static {p0, p2}, Lcom/google/android/material/g/a;->a(Landroid/view/View;I)I

    move-result v1

    .line 117
    invoke-static {v0, v1, p3}, Lcom/google/android/material/g/a;->a(IIF)I

    move-result v0

    return v0
.end method
