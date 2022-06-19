.class public final Lcom/google/android/material/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/k/c;


# instance fields
.field private final a:Lcom/google/android/material/k/c;

.field private final b:F


# direct methods
.method public constructor <init>(FLcom/google/android/material/k/c;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    :goto_0
    instance-of v0, p2, Lcom/google/android/material/k/b;

    if-eqz v0, :cond_0

    .line 40
    check-cast p2, Lcom/google/android/material/k/b;

    iget-object p2, p2, Lcom/google/android/material/k/b;->a:Lcom/google/android/material/k/c;

    .line 41
    move-object v0, p2

    check-cast v0, Lcom/google/android/material/k/b;

    iget v0, v0, Lcom/google/android/material/k/b;->b:F

    add-float/2addr p1, v0

    goto :goto_0

    .line 44
    :cond_0
    iput-object p2, p0, Lcom/google/android/material/k/b;->a:Lcom/google/android/material/k/c;

    .line 45
    iput p1, p0, Lcom/google/android/material/k/b;->b:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)F
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/material/k/b;->a:Lcom/google/android/material/k/c;

    invoke-interface {v0, p1}, Lcom/google/android/material/k/c;->a(Landroid/graphics/RectF;)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/k/b;->b:F

    add-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/k/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 61
    :cond_1
    check-cast p1, Lcom/google/android/material/k/b;

    .line 62
    iget-object v1, p0, Lcom/google/android/material/k/b;->a:Lcom/google/android/material/k/c;

    iget-object v3, p1, Lcom/google/android/material/k/b;->a:Lcom/google/android/material/k/c;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/material/k/b;->b:F

    iget p1, p1, Lcom/google/android/material/k/b;->b:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    iget-object v1, p0, Lcom/google/android/material/k/b;->a:Lcom/google/android/material/k/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/material/k/b;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 68
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
