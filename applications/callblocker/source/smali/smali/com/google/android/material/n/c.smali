.class public Lcom/google/android/material/n/c;
.super Ljava/lang/Object;
.source "MaterialResources.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/res/TypedArray;II)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 164
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 165
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 171
    :goto_0
    return v0

    .line 168
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget v0, v0, Landroid/util/TypedValue;->data:I

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 169
    invoke-virtual {v1, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 170
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method static a(Landroid/content/res/TypedArray;II)I
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-object v0

    .line 64
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 65
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 66
    if-eq v0, v2, :cond_1

    .line 67
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroidx/appcompat/widget/ap;I)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 81
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ap;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ap;->g(II)I

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0, v0}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-object v0

    .line 93
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 94
    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/ap;->b(II)I

    move-result v0

    .line 95
    if-eq v0, v2, :cond_1

    .line 96
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ap;->e(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, v0}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/n/d;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 134
    if-eqz v1, :cond_0

    .line 135
    new-instance v0, Lcom/google/android/material/n/d;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/n/d;-><init>(Landroid/content/Context;I)V

    .line 138
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
