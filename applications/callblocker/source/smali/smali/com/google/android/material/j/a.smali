.class public Lcom/google/android/material/j/a;
.super Ljava/lang/Object;
.source "ElevationOverlayProvider.java"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I

.field private final d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget v0, Lcom/google/android/material/a$b;->elevationOverlayEnabled:I

    .line 44
    invoke-static {p1, v0, v1}, Lcom/google/android/material/n/b;->a(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/j/a;->a:Z

    .line 45
    sget v0, Lcom/google/android/material/a$b;->elevationOverlayColor:I

    .line 46
    invoke-static {p1, v0, v1}, Lcom/google/android/material/g/a;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/j/a;->b:I

    .line 47
    sget v0, Lcom/google/android/material/a$b;->colorSurface:I

    invoke-static {p1, v0, v1}, Lcom/google/android/material/g/a;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/j/a;->c:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/material/j/a;->d:F

    .line 49
    return-void
.end method

.method private a(I)Z
    .locals 2

    .prologue
    .line 173
    const/16 v0, 0xff

    invoke-static {p1, v0}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/j/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(F)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 138
    iget v1, p0, Lcom/google/android/material/j/a;->d:F

    cmpg-float v1, v1, v0

    if-lez v1, :cond_0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget v0, p0, Lcom/google/android/material/j/a;->d:F

    div-float v0, p1, v0

    .line 142
    const/high16 v1, 0x40900000    # 4.5f

    float-to-double v2, v0

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 144
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method public a(IF)I
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/material/j/a;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/j/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/j/a;->b(IF)I

    move-result p1

    .line 97
    :cond_0
    return p1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/android/material/j/a;->a:Z

    return v0
.end method

.method public b(IF)I
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lcom/google/android/material/j/a;->a(F)F

    move-result v0

    .line 118
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 119
    const/16 v2, 0xff

    invoke-static {p1, v2}, Landroidx/core/graphics/a;->b(II)I

    move-result v2

    .line 120
    iget v3, p0, Lcom/google/android/material/j/a;->b:I

    .line 121
    invoke-static {v2, v3, v0}, Lcom/google/android/material/g/a;->a(IIF)I

    move-result v0

    .line 122
    invoke-static {v0, v1}, Landroidx/core/graphics/a;->b(II)I

    move-result v0

    return v0
.end method
