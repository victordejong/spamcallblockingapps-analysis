.class public final Lcom/google/android/material/q/b;
.super Ljava/lang/Object;
.source "AdjustedCornerSize.java"

# interfaces
.implements Lcom/google/android/material/q/c;


# instance fields
.field private final a:Lcom/google/android/material/q/c;

.field private final b:F


# direct methods
.method public constructor <init>(FLcom/google/android/material/q/c;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p2

    .line 39
    :goto_0
    instance-of v1, v0, Lcom/google/android/material/q/b;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lcom/google/android/material/q/b;

    iget-object v1, v0, Lcom/google/android/material/q/b;->a:Lcom/google/android/material/q/c;

    move-object v0, v1

    .line 41
    check-cast v0, Lcom/google/android/material/q/b;

    iget v0, v0, Lcom/google/android/material/q/b;->b:F

    add-float/2addr p1, v0

    move-object v0, v1

    goto :goto_0

    .line 44
    :cond_0
    iput-object v0, p0, Lcom/google/android/material/q/b;->a:Lcom/google/android/material/q/c;

    .line 45
    iput p1, p0, Lcom/google/android/material/q/b;->b:F

    .line 46
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;)F
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/q/b;->a:Lcom/google/android/material/q/c;

    invoke-interface {v1, p1}, Lcom/google/android/material/q/c;->a(Landroid/graphics/RectF;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/q/b;->b:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v2, p1, Lcom/google/android/material/q/b;

    if-nez v2, :cond_2

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    check-cast p1, Lcom/google/android/material/q/b;

    .line 62
    iget-object v2, p0, Lcom/google/android/material/q/b;->a:Lcom/google/android/material/q/c;

    iget-object v3, p1, Lcom/google/android/material/q/b;->a:Lcom/google/android/material/q/c;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/material/q/b;->b:F

    iget v3, p1, Lcom/google/android/material/q/b;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/material/q/b;->a:Lcom/google/android/material/q/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/material/q/b;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
