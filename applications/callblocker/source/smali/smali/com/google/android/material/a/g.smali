.class public Lcom/google/android/material/a/g;
.super Ljava/lang/Object;
.source "MatrixEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/material/a/g;->a:[F

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/material/a/g;->b:[F

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/a/g;->c:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public a(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/material/a/g;->a:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 35
    iget-object v0, p0, Lcom/google/android/material/a/g;->b:[F

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 36
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/google/android/material/a/g;->b:[F

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/a/g;->a:[F

    aget v2, v2, v0

    sub-float/2addr v1, v2

    .line 38
    iget-object v2, p0, Lcom/google/android/material/a/g;->b:[F

    iget-object v3, p0, Lcom/google/android/material/a/g;->a:[F

    aget v3, v3, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    aput v1, v2, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/a/g;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/material/a/g;->b:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 41
    iget-object v0, p0, Lcom/google/android/material/a/g;->c:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p2, Landroid/graphics/Matrix;

    check-cast p3, Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/a/g;->a(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method
