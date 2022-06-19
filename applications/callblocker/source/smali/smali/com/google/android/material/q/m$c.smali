.class public Lcom/google/android/material/q/m$c;
.super Lcom/google/android/material/q/m$e;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/q/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final h:Landroid/graphics/RectF;


# instance fields
.field public a:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 482
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/q/m$c;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/google/android/material/q/m$e;-><init>()V

    .line 516
    invoke-direct {p0, p1}, Lcom/google/android/material/q/m$c;->a(F)V

    .line 517
    invoke-direct {p0, p2}, Lcom/google/android/material/q/m$c;->b(F)V

    .line 518
    invoke-direct {p0, p3}, Lcom/google/android/material/q/m$c;->c(F)V

    .line 519
    invoke-direct {p0, p4}, Lcom/google/android/material/q/m$c;->d(F)V

    .line 520
    return-void
.end method

.method private a()F
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/google/android/material/q/m$c;->a:F

    return v0
.end method

.method static synthetic a(Lcom/google/android/material/q/m$c;)F
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->e()F

    move-result v0

    return v0
.end method

.method private a(F)V
    .locals 0

    .prologue
    .line 549
    iput p1, p0, Lcom/google/android/material/q/m$c;->a:F

    .line 550
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/q/m$c;F)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/google/android/material/q/m$c;->e(F)V

    return-void
.end method

.method private b()F
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/google/android/material/q/m$c;->b:F

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/q/m$c;)F
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->f()F

    move-result v0

    return v0
.end method

.method private b(F)V
    .locals 0

    .prologue
    .line 553
    iput p1, p0, Lcom/google/android/material/q/m$c;->b:F

    .line 554
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/q/m$c;F)V
    .locals 0

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/google/android/material/q/m$c;->f(F)V

    return-void
.end method

.method private c()F
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/google/android/material/q/m$c;->c:F

    return v0
.end method

.method static synthetic c(Lcom/google/android/material/q/m$c;)F
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->a()F

    move-result v0

    return v0
.end method

.method private c(F)V
    .locals 0

    .prologue
    .line 557
    iput p1, p0, Lcom/google/android/material/q/m$c;->c:F

    .line 558
    return-void
.end method

.method private d()F
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/google/android/material/q/m$c;->d:F

    return v0
.end method

.method static synthetic d(Lcom/google/android/material/q/m$c;)F
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->b()F

    move-result v0

    return v0
.end method

.method private d(F)V
    .locals 0

    .prologue
    .line 561
    iput p1, p0, Lcom/google/android/material/q/m$c;->d:F

    .line 562
    return-void
.end method

.method private e()F
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/google/android/material/q/m$c;->e:F

    return v0
.end method

.method static synthetic e(Lcom/google/android/material/q/m$c;)F
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->c()F

    move-result v0

    return v0
.end method

.method private e(F)V
    .locals 0

    .prologue
    .line 573
    iput p1, p0, Lcom/google/android/material/q/m$c;->e:F

    .line 574
    return-void
.end method

.method private f()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/google/android/material/q/m$c;->f:F

    return v0
.end method

.method static synthetic f(Lcom/google/android/material/q/m$c;)F
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->d()F

    move-result v0

    return v0
.end method

.method private f(F)V
    .locals 0

    .prologue
    .line 577
    iput p1, p0, Lcom/google/android/material/q/m$c;->f:F

    .line 578
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/material/q/m$c;->g:Landroid/graphics/Matrix;

    .line 525
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 526
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 527
    sget-object v0, Lcom/google/android/material/q/m$c;->h:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->a()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->b()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->c()F

    move-result v3

    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->d()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 528
    sget-object v0, Lcom/google/android/material/q/m$c;->h:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->e()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/q/m$c;->f()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 529
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 530
    return-void
.end method
