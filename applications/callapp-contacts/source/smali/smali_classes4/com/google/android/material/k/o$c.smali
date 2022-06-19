.class public final Lcom/google/android/material/k/o$c;
.super Lcom/google/android/material/k/o$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/k/o;
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

    .line 527
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/k/o$c;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 560
    invoke-direct {p0}, Lcom/google/android/material/k/o$e;-><init>()V

    .line 1594
    iput p1, p0, Lcom/google/android/material/k/o$c;->a:F

    .line 1598
    iput p2, p0, Lcom/google/android/material/k/o$c;->b:F

    .line 1602
    iput p3, p0, Lcom/google/android/material/k/o$c;->c:F

    .line 1606
    iput p4, p0, Lcom/google/android/material/k/o$c;->d:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/k/o$c;)F
    .locals 0

    .line 3610
    iget p0, p0, Lcom/google/android/material/k/o$c;->e:F

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/k/o$c;F)V
    .locals 0

    .line 2618
    iput p1, p0, Lcom/google/android/material/k/o$c;->e:F

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/k/o$c;)F
    .locals 0

    .line 3614
    iget p0, p0, Lcom/google/android/material/k/o$c;->f:F

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/k/o$c;F)V
    .locals 0

    .line 2622
    iput p1, p0, Lcom/google/android/material/k/o$c;->f:F

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/k/o$c;)F
    .locals 0

    .line 4578
    iget p0, p0, Lcom/google/android/material/k/o$c;->a:F

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/k/o$c;)F
    .locals 0

    .line 4582
    iget p0, p0, Lcom/google/android/material/k/o$c;->b:F

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/k/o$c;)F
    .locals 0

    .line 4586
    iget p0, p0, Lcom/google/android/material/k/o$c;->c:F

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/k/o$c;)F
    .locals 0

    .line 4590
    iget p0, p0, Lcom/google/android/material/k/o$c;->d:F

    return p0
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    .line 569
    iget-object v0, p0, Lcom/google/android/material/k/o$c;->g:Landroid/graphics/Matrix;

    .line 570
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 571
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 572
    sget-object v0, Lcom/google/android/material/k/o$c;->h:Landroid/graphics/RectF;

    .line 2578
    iget v1, p0, Lcom/google/android/material/k/o$c;->a:F

    .line 2582
    iget v2, p0, Lcom/google/android/material/k/o$c;->b:F

    .line 2586
    iget v3, p0, Lcom/google/android/material/k/o$c;->c:F

    .line 2590
    iget v4, p0, Lcom/google/android/material/k/o$c;->d:F

    .line 572
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2610
    iget v1, p0, Lcom/google/android/material/k/o$c;->e:F

    .line 2614
    iget v2, p0, Lcom/google/android/material/k/o$c;->f:F

    const/4 v3, 0x0

    .line 573
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 574
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
