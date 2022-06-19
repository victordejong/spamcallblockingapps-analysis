.class public abstract Landroidx/e/a/b;
.super Ljava/lang/Object;
.source "DynamicAnimation.java"

# interfaces
.implements Landroidx/e/a/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/e/a/b$c;,
        Landroidx/e/a/b$b;,
        Landroidx/e/a/b$a;,
        Landroidx/e/a/b$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/e/a/b<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Landroidx/e/a/a$b;"
    }
.end annotation


# static fields
.field public static final a:Landroidx/e/a/b$d;

.field public static final b:Landroidx/e/a/b$d;

.field public static final c:Landroidx/e/a/b$d;

.field public static final d:Landroidx/e/a/b$d;

.field public static final e:Landroidx/e/a/b$d;

.field public static final f:Landroidx/e/a/b$d;

.field public static final g:Landroidx/e/a/b$d;

.field public static final h:Landroidx/e/a/b$d;

.field public static final i:Landroidx/e/a/b$d;

.field public static final j:Landroidx/e/a/b$d;

.field public static final k:Landroidx/e/a/b$d;

.field public static final l:Landroidx/e/a/b$d;

.field public static final m:Landroidx/e/a/b$d;

.field public static final n:Landroidx/e/a/b$d;


# instance fields
.field o:F

.field p:F

.field q:Z

.field final r:Ljava/lang/Object;

.field final s:Landroidx/e/a/d;

.field t:Z

.field u:F

.field v:F

.field private w:J

.field private x:F

.field private final y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/e/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/e/a/b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroidx/e/a/b$1;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Landroidx/e/a/b$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->a:Landroidx/e/a/b$d;

    .line 72
    new-instance v0, Landroidx/e/a/b$7;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Landroidx/e/a/b$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->b:Landroidx/e/a/b$d;

    .line 87
    new-instance v0, Landroidx/e/a/b$8;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Landroidx/e/a/b$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->c:Landroidx/e/a/b$d;

    .line 102
    new-instance v0, Landroidx/e/a/b$9;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Landroidx/e/a/b$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->d:Landroidx/e/a/b$d;

    .line 117
    new-instance v0, Landroidx/e/a/b$10;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Landroidx/e/a/b$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->e:Landroidx/e/a/b$d;

    .line 132
    new-instance v0, Landroidx/e/a/b$11;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Landroidx/e/a/b$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->f:Landroidx/e/a/b$d;

    .line 147
    new-instance v0, Landroidx/e/a/b$12;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Landroidx/e/a/b$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->g:Landroidx/e/a/b$d;

    .line 162
    new-instance v0, Landroidx/e/a/b$13;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Landroidx/e/a/b$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->h:Landroidx/e/a/b$d;

    .line 177
    new-instance v0, Landroidx/e/a/b$14;

    const-string v1, "x"

    invoke-direct {v0, v1}, Landroidx/e/a/b$14;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->i:Landroidx/e/a/b$d;

    .line 192
    new-instance v0, Landroidx/e/a/b$2;

    const-string v1, "y"

    invoke-direct {v0, v1}, Landroidx/e/a/b$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->j:Landroidx/e/a/b$d;

    .line 207
    new-instance v0, Landroidx/e/a/b$3;

    const-string v1, "z"

    invoke-direct {v0, v1}, Landroidx/e/a/b$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->k:Landroidx/e/a/b$d;

    .line 222
    new-instance v0, Landroidx/e/a/b$4;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroidx/e/a/b$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->l:Landroidx/e/a/b$d;

    .line 238
    new-instance v0, Landroidx/e/a/b$5;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Landroidx/e/a/b$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->m:Landroidx/e/a/b$d;

    .line 253
    new-instance v0, Landroidx/e/a/b$6;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Landroidx/e/a/b$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/e/a/b;->n:Landroidx/e/a/b$d;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroidx/e/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Landroidx/e/a/d<",
            "TK;>;)V"
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 289
    iput v0, p0, Landroidx/e/a/b;->o:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 292
    iput v0, p0, Landroidx/e/a/b;->p:F

    const/4 v1, 0x0

    .line 296
    iput-boolean v1, p0, Landroidx/e/a/b;->q:Z

    .line 305
    iput-boolean v1, p0, Landroidx/e/a/b;->t:Z

    .line 308
    iput v0, p0, Landroidx/e/a/b;->u:F

    .line 309
    iget v0, p0, Landroidx/e/a/b;->u:F

    neg-float v0, v0

    iput v0, p0, Landroidx/e/a/b;->v:F

    const-wide/16 v0, 0x0

    .line 312
    iput-wide v0, p0, Landroidx/e/a/b;->w:J

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/e/a/b;->y:Ljava/util/ArrayList;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/e/a/b;->z:Ljava/util/ArrayList;

    .line 357
    iput-object p1, p0, Landroidx/e/a/b;->r:Ljava/lang/Object;

    .line 358
    iput-object p2, p0, Landroidx/e/a/b;->s:Landroidx/e/a/d;

    .line 359
    iget-object p1, p0, Landroidx/e/a/b;->s:Landroidx/e/a/d;

    sget-object p2, Landroidx/e/a/b;->f:Landroidx/e/a/b$d;

    if-eq p1, p2, :cond_4

    sget-object p2, Landroidx/e/a/b;->g:Landroidx/e/a/b$d;

    if-eq p1, p2, :cond_4

    sget-object p2, Landroidx/e/a/b;->h:Landroidx/e/a/b$d;

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    sget-object p2, Landroidx/e/a/b;->l:Landroidx/e/a/b$d;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p1, p2, :cond_1

    .line 363
    iput v0, p0, Landroidx/e/a/b;->x:F

    goto :goto_2

    .line 364
    :cond_1
    sget-object p2, Landroidx/e/a/b;->d:Landroidx/e/a/b$d;

    if-eq p1, p2, :cond_3

    sget-object p2, Landroidx/e/a/b;->e:Landroidx/e/a/b$d;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 367
    iput p1, p0, Landroidx/e/a/b;->x:F

    goto :goto_2

    .line 365
    :cond_3
    :goto_0
    iput v0, p0, Landroidx/e/a/b;->x:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 361
    iput p1, p0, Landroidx/e/a/b;->x:F

    :goto_2
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 547
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 548
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 549
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v0, 0x0

    .line 674
    iput-boolean v0, p0, Landroidx/e/a/b;->t:Z

    .line 675
    invoke-static {}, Landroidx/e/a/a;->a()Landroidx/e/a/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/e/a/a;->a(Landroidx/e/a/a$b;)V

    const-wide/16 v1, 0x0

    .line 676
    iput-wide v1, p0, Landroidx/e/a/b;->w:J

    .line 677
    iput-boolean v0, p0, Landroidx/e/a/b;->q:Z

    .line 678
    :goto_0
    iget-object v1, p0, Landroidx/e/a/b;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 679
    iget-object v1, p0, Landroidx/e/a/b;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Landroidx/e/a/b;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/e/a/b$b;

    iget v2, p0, Landroidx/e/a/b;->p:F

    iget v3, p0, Landroidx/e/a/b;->o:F

    invoke-interface {v1, p0, p1, v2, v3}, Landroidx/e/a/b$b;->a(Landroidx/e/a/b;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 683
    :cond_1
    iget-object p1, p0, Landroidx/e/a/b;->y:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/e/a/b;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 613
    iget-boolean v0, p0, Landroidx/e/a/b;->t:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 614
    iput-boolean v0, p0, Landroidx/e/a/b;->t:Z

    .line 615
    iget-boolean v0, p0, Landroidx/e/a/b;->q:Z

    if-nez v0, :cond_0

    .line 616
    invoke-direct {p0}, Landroidx/e/a/b;->d()F

    move-result v0

    iput v0, p0, Landroidx/e/a/b;->p:F

    .line 619
    :cond_0
    iget v0, p0, Landroidx/e/a/b;->p:F

    iget v1, p0, Landroidx/e/a/b;->u:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Landroidx/e/a/b;->v:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 623
    invoke-static {}, Landroidx/e/a/a;->a()Landroidx/e/a/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/e/a/a;->a(Landroidx/e/a/a$b;J)V

    goto :goto_0

    .line 620
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method private d()F
    .locals 2

    .line 710
    iget-object v0, p0, Landroidx/e/a/b;->s:Landroidx/e/a/d;

    iget-object v1, p0, Landroidx/e/a/b;->r:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/e/a/d;->a(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a(F)Landroidx/e/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 403
    iput p1, p0, Landroidx/e/a/b;->o:F

    return-object p0
.end method

.method public a()V
    .locals 2

    .line 576
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 579
    iget-boolean v0, p0, Landroidx/e/a/b;->t:Z

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Landroidx/e/a/b;->c()V

    :cond_0
    return-void

    .line 577
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract a(FF)Z
.end method

.method public a(J)Z
    .locals 4

    .line 639
    iget-wide v0, p0, Landroidx/e/a/b;->w:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 641
    iput-wide p1, p0, Landroidx/e/a/b;->w:J

    .line 642
    iget p1, p0, Landroidx/e/a/b;->p:F

    invoke-virtual {p0, p1}, Landroidx/e/a/b;->d(F)V

    return v3

    :cond_0
    sub-long v0, p1, v0

    .line 646
    iput-wide p1, p0, Landroidx/e/a/b;->w:J

    .line 647
    invoke-virtual {p0, v0, v1}, Landroidx/e/a/b;->b(J)Z

    move-result p1

    .line 649
    iget p2, p0, Landroidx/e/a/b;->p:F

    iget v0, p0, Landroidx/e/a/b;->u:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroidx/e/a/b;->p:F

    .line 650
    iget p2, p0, Landroidx/e/a/b;->p:F

    iget v0, p0, Landroidx/e/a/b;->v:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroidx/e/a/b;->p:F

    .line 652
    iget p2, p0, Landroidx/e/a/b;->p:F

    invoke-virtual {p0, p2}, Landroidx/e/a/b;->d(F)V

    if-eqz p1, :cond_1

    .line 655
    invoke-direct {p0, v3}, Landroidx/e/a/b;->a(Z)V

    :cond_1
    return p1
.end method

.method b()F
    .locals 2

    .line 703
    iget v0, p0, Landroidx/e/a/b;->x:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method public b(F)Landroidx/e/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 420
    iput p1, p0, Landroidx/e/a/b;->u:F

    return-object p0
.end method

.method abstract b(J)Z
.end method

.method public c(F)Landroidx/e/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 433
    iput p1, p0, Landroidx/e/a/b;->v:F

    return-object p0
.end method

.method d(F)V
    .locals 3

    .line 690
    iget-object v0, p0, Landroidx/e/a/b;->s:Landroidx/e/a/d;

    iget-object v1, p0, Landroidx/e/a/b;->r:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/e/a/d;->a(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    .line 691
    :goto_0
    iget-object v0, p0, Landroidx/e/a/b;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 692
    iget-object v0, p0, Landroidx/e/a/b;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Landroidx/e/a/b;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/e/a/b$c;

    iget v1, p0, Landroidx/e/a/b;->p:F

    iget v2, p0, Landroidx/e/a/b;->o:F

    invoke-interface {v0, p0, v1, v2}, Landroidx/e/a/b$c;->a(Landroidx/e/a/b;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 696
    :cond_1
    iget-object p1, p0, Landroidx/e/a/b;->z:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/e/a/b;->a(Ljava/util/ArrayList;)V

    return-void
.end method
