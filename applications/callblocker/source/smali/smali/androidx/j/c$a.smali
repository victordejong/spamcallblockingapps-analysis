.class Landroidx/j/c$a;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object p1, p0, Landroidx/j/c$a;->e:Landroid/view/View;

    .line 473
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 494
    iget-object v0, p0, Landroidx/j/c$a;->e:Landroid/view/View;

    iget v1, p0, Landroidx/j/c$a;->a:I

    iget v2, p0, Landroidx/j/c$a;->b:I

    iget v3, p0, Landroidx/j/c$a;->c:I

    iget v4, p0, Landroidx/j/c$a;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/j/ac;->a(Landroid/view/View;IIII)V

    .line 495
    iput v5, p0, Landroidx/j/c$a;->f:I

    .line 496
    iput v5, p0, Landroidx/j/c$a;->g:I

    .line 497
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 476
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroidx/j/c$a;->a:I

    .line 477
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroidx/j/c$a;->b:I

    .line 478
    iget v0, p0, Landroidx/j/c$a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/j/c$a;->f:I

    .line 479
    iget v0, p0, Landroidx/j/c$a;->f:I

    iget v1, p0, Landroidx/j/c$a;->g:I

    if-ne v0, v1, :cond_0

    .line 480
    invoke-direct {p0}, Landroidx/j/c$a;->a()V

    .line 482
    :cond_0
    return-void
.end method

.method b(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 485
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroidx/j/c$a;->c:I

    .line 486
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroidx/j/c$a;->d:I

    .line 487
    iget v0, p0, Landroidx/j/c$a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/j/c$a;->g:I

    .line 488
    iget v0, p0, Landroidx/j/c$a;->f:I

    iget v1, p0, Landroidx/j/c$a;->g:I

    if-ne v0, v1, :cond_0

    .line 489
    invoke-direct {p0}, Landroidx/j/c$a;->a()V

    .line 491
    :cond_0
    return-void
.end method
