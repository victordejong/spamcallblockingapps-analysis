.class public Lcom/google/android/material/q/m$d;
.super Lcom/google/android/material/q/m$e;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/q/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/google/android/material/q/m$e;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/q/m$d;)F
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/google/android/material/q/m$d;->b:F

    return v0
.end method

.method static synthetic a(Lcom/google/android/material/q/m$d;F)F
    .locals 0

    .prologue
    .line 401
    iput p1, p0, Lcom/google/android/material/q/m$d;->a:F

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/q/m$d;)F
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/google/android/material/q/m$d;->a:F

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/q/m$d;F)F
    .locals 0

    .prologue
    .line 401
    iput p1, p0, Lcom/google/android/material/q/m$d;->b:F

    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/material/q/m$d;->g:Landroid/graphics/Matrix;

    .line 408
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 409
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 410
    iget v0, p0, Lcom/google/android/material/q/m$d;->a:F

    iget v1, p0, Lcom/google/android/material/q/m$d;->b:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 411
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 412
    return-void
.end method
