.class final Landroidx/constraintlayout/motion/widget/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/motion/a/f;

.field b:[F

.field c:[D

.field d:[F

.field e:[F

.field f:[F

.field g:I

.field h:Landroidx/constraintlayout/motion/a/b;

.field i:[D

.field j:[D

.field k:F

.field public l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field private final m:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Landroidx/constraintlayout/motion/a/f;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/a/f;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/f$c;->a:Landroidx/constraintlayout/motion/a/f;

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/f$c;->l:Ljava/util/HashMap;

    .line 426
    iput p1, p0, Landroidx/constraintlayout/motion/widget/f$c;->g:I

    .line 427
    iput p2, p0, Landroidx/constraintlayout/motion/widget/f$c;->m:I

    .line 428
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/f$c;->a:Landroidx/constraintlayout/motion/a/f;

    .line 1050
    iput p1, p2, Landroidx/constraintlayout/motion/a/f;->e:I

    .line 429
    new-array p1, p3, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/f$c;->b:[F

    .line 430
    new-array p1, p3, [D

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/f$c;->c:[D

    .line 431
    new-array p1, p3, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/f$c;->d:[F

    .line 432
    new-array p1, p3, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/f$c;->e:[F

    .line 433
    new-array p1, p3, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/f$c;->f:[F

    return-void
.end method


# virtual methods
.method public final a(F)D
    .locals 9

    .line 449
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f$c;->h:Landroidx/constraintlayout/motion/a/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    float-to-double v3, p1

    .line 450
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/f$c;->j:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/a/b;->b(D[D)V

    .line 451
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f$c;->h:Landroidx/constraintlayout/motion/a/b;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/f$c;->i:[D

    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/a/b;->a(D[D)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f$c;->j:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    .line 454
    aput-wide v3, v0, v2

    .line 456
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f$c;->a:Landroidx/constraintlayout/motion/a/f;

    float-to-double v3, p1

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/motion/a/f;->a(D)D

    move-result-wide v5

    .line 457
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/f$c;->a:Landroidx/constraintlayout/motion/a/f;

    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/motion/a/f;->b(D)D

    move-result-wide v3

    .line 458
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/f$c;->j:[D

    aget-wide v0, p1, v1

    aget-wide v7, p1, v2

    mul-double v5, v5, v7

    add-double/2addr v0, v5

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/f$c;->i:[D

    aget-wide v5, p1, v2

    mul-double v3, v3, v5

    add-double/2addr v0, v3

    return-wide v0
.end method
