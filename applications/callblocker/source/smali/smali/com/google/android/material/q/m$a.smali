.class Lcom/google/android/material/q/m$a;
.super Lcom/google/android/material/q/m$f;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/q/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/q/m$c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/q/m$c;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/material/q/m$f;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/google/android/material/q/m$a;->a:Lcom/google/android/material/q/m$c;

    .line 372
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lcom/google/android/material/p/a;ILandroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/material/q/m$a;->a:Lcom/google/android/material/q/m$c;

    invoke-static {v0}, Lcom/google/android/material/q/m$c;->a(Lcom/google/android/material/q/m$c;)F

    move-result v5

    .line 381
    iget-object v0, p0, Lcom/google/android/material/q/m$a;->a:Lcom/google/android/material/q/m$c;

    invoke-static {v0}, Lcom/google/android/material/q/m$c;->b(Lcom/google/android/material/q/m$c;)F

    move-result v6

    .line 382
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/q/m$a;->a:Lcom/google/android/material/q/m$c;

    .line 384
    invoke-static {v0}, Lcom/google/android/material/q/m$c;->c(Lcom/google/android/material/q/m$c;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/q/m$a;->a:Lcom/google/android/material/q/m$c;

    invoke-static {v1}, Lcom/google/android/material/q/m$c;->d(Lcom/google/android/material/q/m$c;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/q/m$a;->a:Lcom/google/android/material/q/m$c;

    invoke-static {v2}, Lcom/google/android/material/q/m$c;->e(Lcom/google/android/material/q/m$c;)F

    move-result v2

    iget-object v4, p0, Lcom/google/android/material/q/m$a;->a:Lcom/google/android/material/q/m$c;

    invoke-static {v4}, Lcom/google/android/material/q/m$c;->f(Lcom/google/android/material/q/m$c;)F

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, p2

    move-object v1, p4

    move-object v2, p1

    move v4, p3

    .line 385
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/p/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    .line 387
    return-void
.end method
