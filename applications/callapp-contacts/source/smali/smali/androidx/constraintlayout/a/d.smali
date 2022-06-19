.class public final Landroidx/constraintlayout/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/d$a;,
        Landroidx/constraintlayout/a/d$b;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = true

.field public static c:Z = true

.field public static d:Z = true

.field public static e:Z = true

.field public static f:Z = false

.field public static o:Landroidx/constraintlayout/a/e; = null

.field public static p:J = 0x0L

.field public static q:J = 0x0L

.field private static r:I = 0x3e8


# instance fields
.field private A:Landroidx/constraintlayout/a/d$a;

.field public g:Z

.field h:I

.field i:[Landroidx/constraintlayout/a/b;

.field public j:Z

.field public k:Z

.field l:I

.field m:I

.field public final n:Landroidx/constraintlayout/a/c;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroidx/constraintlayout/a/d$a;

.field private u:I

.field private v:I

.field private w:[Z

.field private x:I

.field private y:[Landroidx/constraintlayout/a/h;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/a/d;->g:Z

    .line 53
    iput v0, p0, Landroidx/constraintlayout/a/d;->h:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Landroidx/constraintlayout/a/d;->s:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 65
    iput v2, p0, Landroidx/constraintlayout/a/d;->u:I

    .line 66
    iput v2, p0, Landroidx/constraintlayout/a/d;->v:I

    .line 67
    iput-object v1, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    .line 70
    iput-boolean v0, p0, Landroidx/constraintlayout/a/d;->j:Z

    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/a/d;->k:Z

    new-array v1, v2, [Z

    .line 74
    iput-object v1, p0, Landroidx/constraintlayout/a/d;->w:[Z

    const/4 v1, 0x1

    .line 76
    iput v1, p0, Landroidx/constraintlayout/a/d;->l:I

    .line 77
    iput v0, p0, Landroidx/constraintlayout/a/d;->m:I

    .line 78
    iput v2, p0, Landroidx/constraintlayout/a/d;->x:I

    .line 82
    sget v1, Landroidx/constraintlayout/a/d;->r:I

    new-array v1, v1, [Landroidx/constraintlayout/a/h;

    iput-object v1, p0, Landroidx/constraintlayout/a/d;->y:[Landroidx/constraintlayout/a/h;

    .line 83
    iput v0, p0, Landroidx/constraintlayout/a/d;->z:I

    new-array v0, v2, [Landroidx/constraintlayout/a/b;

    .line 95
    iput-object v0, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    .line 96
    invoke-direct {p0}, Landroidx/constraintlayout/a/d;->g()V

    .line 97
    new-instance v0, Landroidx/constraintlayout/a/c;

    invoke-direct {v0}, Landroidx/constraintlayout/a/c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    .line 98
    new-instance v1, Landroidx/constraintlayout/a/g;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/a/g;-><init>(Landroidx/constraintlayout/a/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/a/d;->t:Landroidx/constraintlayout/a/d$a;

    .line 99
    sget-boolean v1, Landroidx/constraintlayout/a/d;->f:Z

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Landroidx/constraintlayout/a/d$b;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/a/d$b;-><init>(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/a/d;->A:Landroidx/constraintlayout/a/d$a;

    return-void

    .line 102
    :cond_0
    new-instance v1, Landroidx/constraintlayout/a/b;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/a/b;-><init>(Landroidx/constraintlayout/a/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/a/d;->A:Landroidx/constraintlayout/a/d$a;

    return-void
.end method

.method public static a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;
    .locals 2

    .line 1430
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object p0

    .line 12356
    iget-object v0, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 12357
    iget-object p1, p0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    return-object p0
.end method

.method public static a()Landroidx/constraintlayout/a/e;
    .locals 1

    .line 111
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    return-object v0
.end method

.method private a(Landroidx/constraintlayout/a/h$a;Ljava/lang/String;)Landroidx/constraintlayout/a/h;
    .locals 2

    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v0, v0, Landroidx/constraintlayout/a/c;->c:Landroidx/constraintlayout/a/f$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/f$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/h;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Landroidx/constraintlayout/a/h;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/a/h;-><init>(Landroidx/constraintlayout/a/h$a;Ljava/lang/String;)V

    .line 3292
    iput-object p1, v0, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/a/h;->b()V

    .line 4292
    iput-object p1, v0, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    .line 378
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/a/d;->z:I

    sget p2, Landroidx/constraintlayout/a/d;->r:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    .line 379
    sput p2, Landroidx/constraintlayout/a/d;->r:I

    .line 380
    iget-object p1, p0, Landroidx/constraintlayout/a/d;->y:[Landroidx/constraintlayout/a/h;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/a/h;

    iput-object p1, p0, Landroidx/constraintlayout/a/d;->y:[Landroidx/constraintlayout/a/h;

    .line 382
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/a/d;->y:[Landroidx/constraintlayout/a/h;

    iget p2, p0, Landroidx/constraintlayout/a/d;->z:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroidx/constraintlayout/a/d;->z:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private a(Landroidx/constraintlayout/a/b;II)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/a/d;->a(ILjava/lang/String;)Landroidx/constraintlayout/a/h;

    move-result-object p3

    .line 3178
    iget-object p1, p1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    int-to-float p2, p2

    invoke-interface {p1, p3, p2}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/a/d$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 494
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v0, :cond_0

    .line 495
    iget-wide v1, v0, Landroidx/constraintlayout/a/e;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/a/e;->t:J

    .line 496
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    iget-wide v1, v0, Landroidx/constraintlayout/a/e;->u:J

    iget v3, p0, Landroidx/constraintlayout/a/d;->l:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/a/e;->u:J

    .line 497
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    iget-wide v1, v0, Landroidx/constraintlayout/a/e;->v:J

    iget v3, p0, Landroidx/constraintlayout/a/d;->m:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/a/e;->v:J

    .line 509
    :cond_0
    invoke-direct {p0}, Landroidx/constraintlayout/a/d;->h()I

    .line 514
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/d;->b(Landroidx/constraintlayout/a/d$a;)I

    .line 519
    invoke-direct {p0}, Landroidx/constraintlayout/a/d;->i()V

    return-void
.end method

.method private final b(Landroidx/constraintlayout/a/d$a;)I
    .locals 14

    .line 716
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 717
    iget-wide v3, v0, Landroidx/constraintlayout/a/e;->h:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/a/e;->h:J

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 721
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/a/d;->l:I

    if-ge v3, v4, :cond_1

    .line 722
    iget-object v4, p0, Landroidx/constraintlayout/a/d;->w:[Z

    aput-boolean v0, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_2
    :goto_1
    if-nez v4, :cond_c

    .line 734
    sget-object v6, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v6, :cond_3

    .line 735
    iget-wide v7, v6, Landroidx/constraintlayout/a/e;->i:J

    add-long/2addr v7, v1

    iput-wide v7, v6, Landroidx/constraintlayout/a/e;->i:J

    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 742
    iget v6, p0, Landroidx/constraintlayout/a/d;->l:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_4

    return v5

    .line 749
    :cond_4
    invoke-interface {p1}, Landroidx/constraintlayout/a/d$a;->d()Landroidx/constraintlayout/a/h;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 750
    iget-object v6, p0, Landroidx/constraintlayout/a/d;->w:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/a/d$a;->d()Landroidx/constraintlayout/a/h;

    move-result-object v7

    iget v7, v7, Landroidx/constraintlayout/a/h;->b:I

    aput-boolean v3, v6, v7

    .line 752
    :cond_5
    iget-object v6, p0, Landroidx/constraintlayout/a/d;->w:[Z

    invoke-interface {p1, v6}, Landroidx/constraintlayout/a/d$a;->a([Z)Landroidx/constraintlayout/a/h;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 758
    iget-object v7, p0, Landroidx/constraintlayout/a/d;->w:[Z

    iget v8, v6, Landroidx/constraintlayout/a/h;->b:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_6

    return v5

    .line 764
    :cond_6
    iget-object v7, p0, Landroidx/constraintlayout/a/d;->w:[Z

    iget v8, v6, Landroidx/constraintlayout/a/h;->b:I

    aput-boolean v3, v7, v8

    :cond_7
    if-eqz v6, :cond_b

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 785
    :goto_2
    iget v11, p0, Landroidx/constraintlayout/a/d;->m:I

    if-ge v9, v11, :cond_9

    .line 786
    iget-object v11, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v11, v11, v9

    .line 787
    iget-object v12, v11, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 788
    iget-object v12, v12, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    sget-object v13, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED:Landroidx/constraintlayout/a/h$a;

    if-eq v12, v13, :cond_8

    .line 792
    iget-boolean v12, v11, Landroidx/constraintlayout/a/b;->f:Z

    if-nez v12, :cond_8

    .line 796
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/h;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 802
    iget-object v12, v11, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v12, v6}, Landroidx/constraintlayout/a/b$a;->b(Landroidx/constraintlayout/a/h;)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_8

    .line 804
    iget v11, v11, Landroidx/constraintlayout/a/b;->b:F

    neg-float v11, v11

    div-float/2addr v11, v12

    cmpg-float v12, v11, v7

    if-gez v12, :cond_8

    move v10, v9

    move v7, v11

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    if-ltz v10, :cond_2

    .line 819
    iget-object v7, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v7, v7, v10

    .line 820
    iget-object v9, v7, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iput v8, v9, Landroidx/constraintlayout/a/h;->c:I

    .line 821
    sget-object v8, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v8, :cond_a

    .line 822
    iget-wide v11, v8, Landroidx/constraintlayout/a/e;->j:J

    add-long/2addr v11, v1

    iput-wide v11, v8, Landroidx/constraintlayout/a/e;->j:J

    .line 824
    :cond_a
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/a/b;->c(Landroidx/constraintlayout/a/h;)V

    .line 825
    iget-object v6, v7, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iput v10, v6, Landroidx/constraintlayout/a/h;->c:I

    .line 826
    iget-object v6, v7, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v6, p0, v7}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/b;)V

    goto/16 :goto_1

    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_c
    return v5
.end method

.method public static b(Ljava/lang/Object;)I
    .locals 1

    .line 409
    check-cast p0, Landroidx/constraintlayout/a/a/d;

    .line 5140
    iget-object p0, p0, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    if-eqz p0, :cond_0

    .line 417
    iget p0, p0, Landroidx/constraintlayout/a/h;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final b(Landroidx/constraintlayout/a/b;)V
    .locals 7

    .line 639
    sget-boolean v0, Landroidx/constraintlayout/a/d;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/constraintlayout/a/b;->f:Z

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget p1, p1, Landroidx/constraintlayout/a/b;->b:F

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/d;F)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    iget v1, p0, Landroidx/constraintlayout/a/d;->m:I

    aput-object p1, v0, v1

    .line 643
    iget-object v0, p1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget v1, p0, Landroidx/constraintlayout/a/d;->m:I

    iput v1, v0, Landroidx/constraintlayout/a/h;->c:I

    .line 644
    iget v0, p0, Landroidx/constraintlayout/a/d;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/a/d;->m:I

    .line 645
    iget-object v0, p1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/b;)V

    .line 652
    :goto_0
    sget-boolean p1, Landroidx/constraintlayout/a/d;->c:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Landroidx/constraintlayout/a/d;->g:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 654
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/a/d;->m:I

    if-ge v0, v1, :cond_7

    .line 655
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 656
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v2, v1, v0

    if-eqz v2, :cond_6

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/a/b;->f:Z

    if-eqz v1, :cond_6

    .line 659
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v1, v1, v0

    .line 660
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget v3, v1, Landroidx/constraintlayout/a/b;->b:F

    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/d;F)V

    .line 661
    sget-boolean v2, Landroidx/constraintlayout/a/d;->f:Z

    if-eqz v2, :cond_2

    .line 662
    iget-object v2, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v2, v2, Landroidx/constraintlayout/a/c;->a:Landroidx/constraintlayout/a/f$a;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/a/f$a;->a(Ljava/lang/Object;)Z

    goto :goto_2

    .line 664
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v2, v2, Landroidx/constraintlayout/a/c;->b:Landroidx/constraintlayout/a/f$a;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/a/f$a;->a(Ljava/lang/Object;)Z

    .line 666
    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    .line 668
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/a/d;->m:I

    if-ge v1, v4, :cond_4

    .line 669
    iget-object v3, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    .line 670
    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget v3, v3, Landroidx/constraintlayout/a/h;->c:I

    if-ne v3, v1, :cond_3

    .line 671
    iget-object v3, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iput v4, v3, Landroidx/constraintlayout/a/h;->c:I

    :cond_3
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_3

    :cond_4
    if-ge v3, v4, :cond_5

    .line 676
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aput-object v2, v1, v3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 678
    iput v4, p0, Landroidx/constraintlayout/a/d;->m:I

    add-int/lit8 v0, v0, -0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    :cond_7
    iput-boolean p1, p0, Landroidx/constraintlayout/a/d;->g:Z

    :cond_8
    return-void
.end method

.method private f()V
    .locals 5

    .line 140
    iget v0, p0, Landroidx/constraintlayout/a/d;->u:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/a/d;->u:I

    .line 141
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/b;

    iput-object v0, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    .line 142
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v1, v0, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    iget v2, p0, Landroidx/constraintlayout/a/d;->u:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/a/h;

    iput-object v1, v0, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    .line 143
    iget v0, p0, Landroidx/constraintlayout/a/d;->u:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/a/d;->w:[Z

    .line 144
    iput v0, p0, Landroidx/constraintlayout/a/d;->v:I

    .line 145
    iput v0, p0, Landroidx/constraintlayout/a/d;->x:I

    .line 146
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v0, :cond_0

    .line 147
    iget-wide v1, v0, Landroidx/constraintlayout/a/e;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/a/e;->d:J

    .line 148
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    iget-wide v1, v0, Landroidx/constraintlayout/a/e;->o:J

    iget v3, p0, Landroidx/constraintlayout/a/d;->u:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/a/e;->o:J

    .line 149
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    iget-wide v1, v0, Landroidx/constraintlayout/a/e;->o:J

    iput-wide v1, v0, Landroidx/constraintlayout/a/e;->y:J

    :cond_0
    return-void
.end method

.method private g()V
    .locals 4

    .line 157
    sget-boolean v0, Landroidx/constraintlayout/a/d;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 158
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/a/d;->m:I

    if-ge v2, v0, :cond_1

    .line 159
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    iget-object v3, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v3, v3, Landroidx/constraintlayout/a/c;->a:Landroidx/constraintlayout/a/f$a;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/a/f$a;->a(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 166
    :cond_2
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/a/d;->m:I

    if-ge v2, v0, :cond_4

    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    .line 169
    iget-object v3, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v3, v3, Landroidx/constraintlayout/a/c;->b:Landroidx/constraintlayout/a/f$a;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/a/f$a;->a(Ljava/lang/Object;)Z

    .line 171
    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private h()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 879
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/a/d;->m:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 880
    iget-object v3, v0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 881
    iget-object v3, v3, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    sget-object v6, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED:Landroidx/constraintlayout/a/h$a;

    if-eq v3, v6, :cond_0

    .line 884
    iget-object v3, v0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v3, v3, v2

    iget v3, v3, Landroidx/constraintlayout/a/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_13

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2
    :goto_2
    if-nez v2, :cond_12

    .line 902
    sget-object v6, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_3

    .line 903
    iget-wide v9, v6, Landroidx/constraintlayout/a/e;->k:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Landroidx/constraintlayout/a/e;->k:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 914
    :goto_3
    iget v14, v0, Landroidx/constraintlayout/a/d;->m:I

    if-ge v10, v14, :cond_f

    .line 915
    iget-object v14, v0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v14, v14, v10

    .line 916
    iget-object v15, v14, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 917
    iget-object v15, v15, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    sget-object v1, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED:Landroidx/constraintlayout/a/h$a;

    if-eq v15, v1, :cond_e

    .line 922
    iget-boolean v1, v14, Landroidx/constraintlayout/a/b;->f:Z

    if-nez v1, :cond_e

    .line 925
    iget v1, v14, Landroidx/constraintlayout/a/b;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_e

    .line 930
    sget-boolean v1, Landroidx/constraintlayout/a/d;->e:Z

    const/16 v15, 0x9

    if-eqz v1, :cond_8

    .line 931
    iget-object v1, v14, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_e

    .line 933
    iget-object v7, v14, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v7, v5}, Landroidx/constraintlayout/a/b$a;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v7

    .line 934
    iget-object v8, v14, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v8, v7}, Landroidx/constraintlayout/a/b$a;->b(Landroidx/constraintlayout/a/h;)F

    move-result v8

    cmpg-float v16, v8, v4

    if-lez v16, :cond_7

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v15, :cond_7

    .line 942
    iget-object v15, v7, Landroidx/constraintlayout/a/h;->g:[F

    aget v15, v15, v9

    div-float/2addr v15, v8

    cmpg-float v18, v15, v6

    if-gez v18, :cond_4

    if-eq v9, v13, :cond_5

    :cond_4
    if-le v9, v13, :cond_6

    .line 946
    :cond_5
    iget v12, v7, Landroidx/constraintlayout/a/h;->b:I

    move v13, v9

    move v11, v10

    move v6, v15

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x9

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v7, 0x1

    const/16 v15, 0x9

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    .line 952
    :goto_6
    iget v5, v0, Landroidx/constraintlayout/a/d;->l:I

    if-ge v1, v5, :cond_e

    .line 953
    iget-object v5, v0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v5, v5, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    aget-object v5, v5, v1

    .line 954
    iget-object v7, v14, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v7, v5}, Landroidx/constraintlayout/a/b$a;->b(Landroidx/constraintlayout/a/h;)F

    move-result v7

    cmpg-float v8, v7, v4

    if-lez v8, :cond_c

    const/4 v8, 0x0

    const/16 v9, 0x9

    :goto_7
    if-ge v8, v9, :cond_d

    .line 962
    iget-object v15, v5, Landroidx/constraintlayout/a/h;->g:[F

    aget v15, v15, v8

    div-float/2addr v15, v7

    cmpg-float v17, v15, v6

    if-gez v17, :cond_9

    if-eq v8, v13, :cond_a

    :cond_9
    if-le v8, v13, :cond_b

    :cond_a
    move v12, v1

    move v13, v8

    move v11, v10

    move v6, v15

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    const/16 v9, 0x9

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x1

    goto/16 :goto_3

    :cond_f
    const/4 v1, -0x1

    if-eq v11, v1, :cond_11

    .line 977
    iget-object v5, v0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v5, v5, v11

    .line 982
    iget-object v6, v5, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iput v1, v6, Landroidx/constraintlayout/a/h;->c:I

    .line 983
    sget-object v1, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v1, :cond_10

    .line 984
    iget-wide v6, v1, Landroidx/constraintlayout/a/e;->j:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroidx/constraintlayout/a/e;->j:J

    .line 986
    :cond_10
    iget-object v1, v0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v1, v1, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    aget-object v1, v1, v12

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/a/b;->c(Landroidx/constraintlayout/a/h;)V

    .line 987
    iget-object v1, v5, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iput v11, v1, Landroidx/constraintlayout/a/h;->c:I

    .line 988
    iget-object v1, v5, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/b;)V

    goto :goto_8

    :cond_11
    const/4 v2, 0x1

    .line 997
    :goto_8
    iget v1, v0, Landroidx/constraintlayout/a/d;->l:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_2

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_12
    move v1, v3

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x0

    .line 1036
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/a/d;->m:I

    if-ge v0, v1, :cond_0

    .line 1037
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v1, v1, v0

    .line 1038
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget v1, v1, Landroidx/constraintlayout/a/b;->b:F

    iput v1, v2, Landroidx/constraintlayout/a/h;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Landroidx/constraintlayout/a/h;
    .locals 5

    .line 348
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v0, :cond_0

    .line 349
    iget-wide v1, v0, Landroidx/constraintlayout/a/e;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/a/e;->l:J

    .line 351
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/a/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/a/d;->v:I

    if-lt v0, v1, :cond_1

    .line 352
    invoke-direct {p0}, Landroidx/constraintlayout/a/d;->f()V

    .line 354
    :cond_1
    sget-object v0, Landroidx/constraintlayout/a/h$a;->ERROR:Landroidx/constraintlayout/a/h$a;

    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h$a;Ljava/lang/String;)Landroidx/constraintlayout/a/h;

    move-result-object p2

    .line 355
    iget v0, p0, Landroidx/constraintlayout/a/d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/a/d;->h:I

    .line 356
    iget v1, p0, Landroidx/constraintlayout/a/d;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/a/d;->l:I

    .line 357
    iput v0, p2, Landroidx/constraintlayout/a/h;->b:I

    .line 358
    iput p1, p2, Landroidx/constraintlayout/a/h;->d:I

    .line 359
    iget-object p1, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object p1, p1, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    iget v0, p0, Landroidx/constraintlayout/a/d;->h:I

    aput-object p2, p1, v0

    .line 360
    iget-object p1, p0, Landroidx/constraintlayout/a/d;->t:Landroidx/constraintlayout/a/d$a;

    invoke-interface {p1, p2}, Landroidx/constraintlayout/a/d$a;->d(Landroidx/constraintlayout/a/h;)V

    return-object p2
.end method

.method public final a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 223
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/a/d;->l:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/a/d;->v:I

    if-lt v1, v2, :cond_1

    .line 224
    invoke-direct {p0}, Landroidx/constraintlayout/a/d;->f()V

    .line 227
    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/a/a/d;

    if-eqz v1, :cond_5

    .line 228
    check-cast p1, Landroidx/constraintlayout/a/a/d;

    .line 2140
    iget-object v0, p1, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    if-nez v0, :cond_2

    .line 230
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/d;->d()V

    .line 3140
    iget-object p1, p1, Landroidx/constraintlayout/a/a/d;->i:Landroidx/constraintlayout/a/h;

    move-object v0, p1

    .line 233
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/a/h;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget p1, v0, Landroidx/constraintlayout/a/h;->b:I

    iget v2, p0, Landroidx/constraintlayout/a/d;->h:I

    if-gt p1, v2, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object p1, p1, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    iget v2, v0, Landroidx/constraintlayout/a/h;->b:I

    aget-object p1, p1, v2

    if-nez p1, :cond_5

    .line 236
    :cond_3
    iget p1, v0, Landroidx/constraintlayout/a/h;->b:I

    if-eq p1, v1, :cond_4

    .line 237
    invoke-virtual {v0}, Landroidx/constraintlayout/a/h;->b()V

    .line 239
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/a/d;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/a/d;->h:I

    .line 240
    iget v1, p0, Landroidx/constraintlayout/a/d;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/a/d;->l:I

    .line 241
    iput p1, v0, Landroidx/constraintlayout/a/h;->b:I

    .line 242
    sget-object p1, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED:Landroidx/constraintlayout/a/h$a;

    iput-object p1, v0, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    .line 243
    iget-object p1, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object p1, p1, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    iget v1, p0, Landroidx/constraintlayout/a/d;->h:I

    aput-object v0, p1, v1

    :cond_5
    return-object v0
.end method

.method public final a(Landroidx/constraintlayout/a/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 556
    :cond_0
    sget-object v2, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1

    .line 557
    iget-wide v5, v2, Landroidx/constraintlayout/a/e;->f:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroidx/constraintlayout/a/e;->f:J

    .line 558
    iget-boolean v2, v1, Landroidx/constraintlayout/a/b;->f:Z

    if-eqz v2, :cond_1

    .line 559
    sget-object v2, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    iget-wide v5, v2, Landroidx/constraintlayout/a/e;->g:J

    add-long/2addr v5, v3

    iput-wide v5, v2, Landroidx/constraintlayout/a/e;->g:J

    .line 562
    :cond_1
    iget v2, v0, Landroidx/constraintlayout/a/d;->m:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iget v6, v0, Landroidx/constraintlayout/a/d;->x:I

    if-ge v2, v6, :cond_2

    iget v2, v0, Landroidx/constraintlayout/a/d;->l:I

    add-int/2addr v2, v5

    iget v6, v0, Landroidx/constraintlayout/a/d;->v:I

    if-lt v2, v6, :cond_3

    .line 563
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/d;->f()V

    .line 571
    :cond_3
    iget-boolean v2, v1, Landroidx/constraintlayout/a/b;->f:Z

    if-nez v2, :cond_25

    .line 5712
    iget-object v2, v0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    array-length v2, v2

    const/4 v7, -0x1

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_c

    .line 5718
    iget-object v8, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v8}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_6

    .line 5720
    iget-object v10, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v10, v9}, Landroidx/constraintlayout/a/b$a;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v10

    .line 5721
    iget v11, v10, Landroidx/constraintlayout/a/h;->c:I

    if-ne v11, v7, :cond_4

    iget-boolean v11, v10, Landroidx/constraintlayout/a/h;->f:Z

    if-nez v11, :cond_4

    iget-boolean v11, v10, Landroidx/constraintlayout/a/h;->m:Z

    if-eqz v11, :cond_5

    .line 5722
    :cond_4
    iget-object v11, v1, Landroidx/constraintlayout/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5725
    :cond_6
    iget-object v8, v1, Landroidx/constraintlayout/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_b

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_a

    .line 5728
    iget-object v10, v1, Landroidx/constraintlayout/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/a/h;

    .line 5729
    iget-boolean v11, v10, Landroidx/constraintlayout/a/h;->f:Z

    if-eqz v11, :cond_7

    .line 5730
    invoke-virtual {v1, v0, v10, v5}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/h;Z)V

    goto :goto_3

    .line 5731
    :cond_7
    iget-boolean v11, v10, Landroidx/constraintlayout/a/h;->m:Z

    if-eqz v11, :cond_8

    .line 6592
    iget-boolean v11, v10, Landroidx/constraintlayout/a/h;->m:Z

    if-eqz v11, :cond_9

    .line 6595
    iget-object v11, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v11, v10}, Landroidx/constraintlayout/a/b$a;->b(Landroidx/constraintlayout/a/h;)F

    move-result v11

    .line 6596
    iget v12, v1, Landroidx/constraintlayout/a/b;->b:F

    iget v13, v10, Landroidx/constraintlayout/a/h;->o:F

    mul-float v13, v13, v11

    add-float/2addr v12, v13

    iput v12, v1, Landroidx/constraintlayout/a/b;->b:F

    .line 6597
    iget-object v12, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v12, v10, v5}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;Z)F

    .line 6599
    invoke-virtual {v10, v1}, Landroidx/constraintlayout/a/h;->b(Landroidx/constraintlayout/a/b;)V

    .line 6601
    iget-object v12, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    iget-object v13, v0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v13, v13, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    iget v14, v10, Landroidx/constraintlayout/a/h;->n:I

    aget-object v13, v13, v14

    invoke-interface {v12, v13, v11, v5}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;FZ)V

    .line 6602
    sget-boolean v11, Landroidx/constraintlayout/a/d;->c:Z

    if-eqz v11, :cond_9

    if-eqz v10, :cond_9

    iget-object v10, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    .line 6603
    invoke-interface {v10}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v10

    if-nez v10, :cond_9

    .line 6604
    iput-boolean v5, v1, Landroidx/constraintlayout/a/b;->f:Z

    .line 6605
    iput-boolean v5, v0, Landroidx/constraintlayout/a/d;->g:Z

    goto :goto_3

    .line 5734
    :cond_8
    iget-object v11, v0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    iget v10, v10, Landroidx/constraintlayout/a/h;->c:I

    aget-object v10, v11, v10

    invoke-virtual {v1, v0, v10, v5}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/b;Z)V

    :cond_9
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 5737
    :cond_a
    iget-object v8, v1, Landroidx/constraintlayout/a/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 5742
    :cond_c
    sget-boolean v2, Landroidx/constraintlayout/a/d;->c:Z

    if-eqz v2, :cond_d

    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-eqz v2, :cond_d

    iget-object v2, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    .line 5743
    invoke-interface {v2}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v2

    if-nez v2, :cond_d

    .line 5744
    iput-boolean v5, v1, Landroidx/constraintlayout/a/b;->f:Z

    .line 5745
    iput-boolean v5, v0, Landroidx/constraintlayout/a/d;->g:Z

    .line 575
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/a/b;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    return-void

    .line 7415
    :cond_e
    iget v2, v1, Landroidx/constraintlayout/a/b;->b:F

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    if-gez v2, :cond_f

    .line 7417
    iget v2, v1, Landroidx/constraintlayout/a/b;->b:F

    const/high16 v9, -0x40800000    # -1.0f

    mul-float v2, v2, v9

    iput v2, v1, Landroidx/constraintlayout/a/b;->b:F

    .line 7418
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v2}, Landroidx/constraintlayout/a/b$a;->b()V

    .line 7464
    :cond_f
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v2}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v10, v2, :cond_16

    .line 7466
    iget-object v6, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v6, v10}, Landroidx/constraintlayout/a/b$a;->b(I)F

    move-result v6

    .line 7467
    iget-object v7, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v7, v10}, Landroidx/constraintlayout/a/b$a;->a(I)Landroidx/constraintlayout/a/h;

    move-result-object v7

    .line 7468
    iget-object v9, v7, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    sget-object v3, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED:Landroidx/constraintlayout/a/h$a;

    if-ne v9, v3, :cond_12

    if-nez v11, :cond_10

    .line 7472
    invoke-static {v7}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)Z

    move-result v14

    :goto_5
    move v13, v6

    move-object v11, v7

    goto :goto_7

    :cond_10
    cmpl-float v3, v13, v6

    if-lez v3, :cond_11

    .line 7476
    invoke-static {v7}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)Z

    move-result v14

    goto :goto_5

    :cond_11
    if-nez v14, :cond_15

    .line 7477
    invoke-static {v7}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v13, v6

    move-object v11, v7

    const/4 v14, 0x1

    goto :goto_7

    :cond_12
    if-nez v11, :cond_15

    cmpg-float v3, v6, v8

    if-gez v3, :cond_15

    if-nez v12, :cond_13

    .line 7487
    invoke-static {v7}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)Z

    move-result v16

    :goto_6
    move v15, v6

    move-object v12, v7

    goto :goto_7

    :cond_13
    cmpl-float v3, v15, v6

    if-lez v3, :cond_14

    .line 7491
    invoke-static {v7}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)Z

    move-result v16

    goto :goto_6

    :cond_14
    if-nez v16, :cond_15

    .line 7492
    invoke-static {v7}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v15, v6

    move-object v12, v7

    const/16 v16, 0x1

    :cond_15
    :goto_7
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v3, 0x1

    const/4 v7, -0x1

    goto :goto_4

    :cond_16
    if-eqz v11, :cond_17

    goto :goto_8

    :cond_17
    move-object v11, v12

    :goto_8
    if-nez v11, :cond_18

    const/4 v2, 0x1

    goto :goto_9

    .line 7437
    :cond_18
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/a/b;->c(Landroidx/constraintlayout/a/h;)V

    const/4 v2, 0x0

    .line 7439
    :goto_9
    iget-object v3, v1, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v3}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v3

    if-nez v3, :cond_19

    .line 7440
    iput-boolean v5, v1, Landroidx/constraintlayout/a/b;->f:Z

    :cond_19
    if-eqz v2, :cond_21

    .line 8291
    sget-object v2, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v2, :cond_1a

    .line 8292
    iget-wide v3, v2, Landroidx/constraintlayout/a/e;->n:J

    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    iput-wide v3, v2, Landroidx/constraintlayout/a/e;->n:J

    .line 8294
    :cond_1a
    iget v2, v0, Landroidx/constraintlayout/a/d;->l:I

    add-int/2addr v2, v5

    iget v3, v0, Landroidx/constraintlayout/a/d;->v:I

    if-lt v2, v3, :cond_1b

    .line 8295
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/d;->f()V

    .line 8297
    :cond_1b
    sget-object v2, Landroidx/constraintlayout/a/h$a;->SLACK:Landroidx/constraintlayout/a/h$a;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h$a;Ljava/lang/String;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    .line 8298
    iget v3, v0, Landroidx/constraintlayout/a/d;->h:I

    add-int/2addr v3, v5

    iput v3, v0, Landroidx/constraintlayout/a/d;->h:I

    .line 8299
    iget v4, v0, Landroidx/constraintlayout/a/d;->l:I

    add-int/2addr v4, v5

    iput v4, v0, Landroidx/constraintlayout/a/d;->l:I

    .line 8300
    iput v3, v2, Landroidx/constraintlayout/a/h;->b:I

    .line 8301
    iget-object v3, v0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v3, v3, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    iget v4, v0, Landroidx/constraintlayout/a/d;->h:I

    aput-object v2, v3, v4

    .line 590
    iput-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    .line 591
    iget v3, v0, Landroidx/constraintlayout/a/d;->m:I

    .line 592
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/a/d;->b(Landroidx/constraintlayout/a/b;)V

    .line 593
    iget v4, v0, Landroidx/constraintlayout/a/d;->m:I

    add-int/2addr v3, v5

    if-ne v4, v3, :cond_21

    .line 595
    iget-object v3, v0, Landroidx/constraintlayout/a/d;->A:Landroidx/constraintlayout/a/d$a;

    invoke-interface {v3, v1}, Landroidx/constraintlayout/a/d$a;->a(Landroidx/constraintlayout/a/d$a;)V

    .line 596
    iget-object v3, v0, Landroidx/constraintlayout/a/d;->A:Landroidx/constraintlayout/a/d$a;

    invoke-direct {v0, v3}, Landroidx/constraintlayout/a/d;->b(Landroidx/constraintlayout/a/d$a;)I

    .line 597
    iget v3, v2, Landroidx/constraintlayout/a/h;->c:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    .line 601
    iget-object v3, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-ne v3, v2, :cond_1d

    const/4 v3, 0x0

    .line 8655
    invoke-virtual {v1, v3, v2}, Landroidx/constraintlayout/a/b;->a([ZLandroidx/constraintlayout/a/h;)Landroidx/constraintlayout/a/h;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 605
    sget-object v3, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v3, :cond_1c

    .line 606
    iget-wide v6, v3, Landroidx/constraintlayout/a/e;->j:J

    const-wide/16 v9, 0x1

    add-long/2addr v6, v9

    iput-wide v6, v3, Landroidx/constraintlayout/a/e;->j:J

    .line 608
    :cond_1c
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/b;->c(Landroidx/constraintlayout/a/h;)V

    .line 611
    :cond_1d
    iget-boolean v2, v1, Landroidx/constraintlayout/a/b;->f:Z

    if-nez v2, :cond_1e

    .line 612
    iget-object v2, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/b;)V

    .line 614
    :cond_1e
    sget-boolean v2, Landroidx/constraintlayout/a/d;->f:Z

    if-eqz v2, :cond_1f

    .line 615
    iget-object v2, v0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v2, v2, Landroidx/constraintlayout/a/c;->a:Landroidx/constraintlayout/a/f$a;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/a/f$a;->a(Ljava/lang/Object;)Z

    goto :goto_a

    .line 617
    :cond_1f
    iget-object v2, v0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v2, v2, Landroidx/constraintlayout/a/c;->b:Landroidx/constraintlayout/a/f$a;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/a/f$a;->a(Ljava/lang/Object;)Z

    .line 619
    :goto_a
    iget v2, v0, Landroidx/constraintlayout/a/d;->m:I

    sub-int/2addr v2, v5

    iput v2, v0, Landroidx/constraintlayout/a/d;->m:I

    :cond_20
    const/4 v2, 0x1

    goto :goto_b

    :cond_21
    const/4 v2, 0x0

    .line 9063
    :goto_b
    iget-object v3, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    if-eqz v3, :cond_22

    iget-object v3, v1, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    iget-object v3, v3, Landroidx/constraintlayout/a/h;->i:Landroidx/constraintlayout/a/h$a;

    sget-object v4, Landroidx/constraintlayout/a/h$a;->UNRESTRICTED:Landroidx/constraintlayout/a/h$a;

    if-eq v3, v4, :cond_23

    iget v3, v1, Landroidx/constraintlayout/a/b;->b:F

    cmpg-float v3, v3, v8

    if-ltz v3, :cond_22

    goto :goto_c

    :cond_22
    const/4 v5, 0x0

    :cond_23
    :goto_c
    if-nez v5, :cond_24

    return-void

    :cond_24
    move v6, v2

    goto :goto_d

    :cond_25
    const/4 v6, 0x0

    :goto_d
    if-nez v6, :cond_26

    .line 634
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/a/d;->b(Landroidx/constraintlayout/a/b;)V

    :cond_26
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/h;I)V
    .locals 5

    .line 1377
    sget-boolean v0, Landroidx/constraintlayout/a/d;->b:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/constraintlayout/a/h;->c:I

    if-ne v0, v1, :cond_2

    int-to-float p2, p2

    .line 1381
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/d;F)V

    const/4 v0, 0x0

    .line 1382
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/a/d;->h:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1383
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v1, v1, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1384
    iget-boolean v3, v1, Landroidx/constraintlayout/a/h;->m:Z

    if-eqz v3, :cond_0

    iget v3, v1, Landroidx/constraintlayout/a/h;->n:I

    iget v4, p1, Landroidx/constraintlayout/a/h;->b:I

    if-ne v3, v4, :cond_0

    .line 1385
    iget v3, v1, Landroidx/constraintlayout/a/h;->o:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/d;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1393
    :cond_2
    iget v0, p1, Landroidx/constraintlayout/a/h;->c:I

    .line 1394
    iget v3, p1, Landroidx/constraintlayout/a/h;->c:I

    if-eq v3, v1, :cond_6

    .line 1395
    iget-object v3, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v0, v3, v0

    .line 1396
    iget-boolean v3, v0, Landroidx/constraintlayout/a/b;->f:Z

    if-eqz v3, :cond_3

    int-to-float p1, p2

    .line 1397
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    return-void

    .line 1399
    :cond_3
    iget-object v3, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v3}, Landroidx/constraintlayout/a/b$a;->c()I

    move-result v3

    if-nez v3, :cond_4

    .line 1400
    iput-boolean v2, v0, Landroidx/constraintlayout/a/b;->f:Z

    int-to-float p1, p2

    .line 1401
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    return-void

    .line 1403
    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    if-gez p2, :cond_5

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 11148
    iput p2, v0, Landroidx/constraintlayout/a/b;->b:F

    .line 11149
    iget-object p2, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_1

    :cond_5
    int-to-float p2, p2

    .line 11151
    iput p2, v0, Landroidx/constraintlayout/a/b;->b:F

    .line 11152
    iget-object p2, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {p2, p1, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 1405
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    return-void

    .line 1409
    :cond_6
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    .line 12139
    iput-object p1, v0, Landroidx/constraintlayout/a/b;->a:Landroidx/constraintlayout/a/h;

    int-to-float p2, p2

    .line 12140
    iput p2, p1, Landroidx/constraintlayout/a/h;->e:F

    .line 12141
    iput p2, v0, Landroidx/constraintlayout/a/b;->b:F

    .line 12142
    iput-boolean v2, v0, Landroidx/constraintlayout/a/b;->f:Z

    .line 1411
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;IFLandroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V
    .locals 6

    .line 1288
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 9307
    iget-object p3, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p3, p1, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9308
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9309
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    .line 9319
    iget-object p4, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p4, p1, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9320
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9321
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9322
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 9324
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    .line 9328
    iget-object p4, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p4, p1, v3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9329
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    int-to-float p1, p3

    .line 9330
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    .line 9333
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p6, v3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9334
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p5, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    neg-int p1, p7

    int-to-float p1, p1

    .line 9335
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    goto :goto_0

    .line 9337
    :cond_4
    iget-object v2, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-interface {v2, p1, v5}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9338
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    mul-float v2, v4, v3

    invoke-interface {p1, p2, v2}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9339
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    mul-float v3, v3, p4

    invoke-interface {p1, p5, v3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 9340
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    mul-float v1, v1, p4

    invoke-interface {p1, p6, v1}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p1, p2

    .line 9342
    iput p1, v0, Landroidx/constraintlayout/a/b;->b:F

    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    .line 1291
    invoke-virtual {v0, p0, p8}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/d;I)Landroidx/constraintlayout/a/b;

    .line 1293
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V
    .locals 3

    .line 1214
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    .line 1215
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->d()Landroidx/constraintlayout/a/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 1216
    iput v2, v1, Landroidx/constraintlayout/a/h;->d:I

    .line 1217
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1219
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/a/b$a;->b(Landroidx/constraintlayout/a/h;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 1220
    invoke-direct {p0, v0, p1, p4}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;II)V

    .line 1222
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)V
    .locals 7

    .line 1300
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1301
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;F)Landroidx/constraintlayout/a/b;

    .line 1305
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final b()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v2, v2, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v2, v2, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v2}, Landroidx/constraintlayout/a/h;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v1, v1, Landroidx/constraintlayout/a/c;->c:Landroidx/constraintlayout/a/f$a;

    iget-object v2, p0, Landroidx/constraintlayout/a/d;->y:[Landroidx/constraintlayout/a/h;

    iget v3, p0, Landroidx/constraintlayout/a/d;->z:I

    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/a/f$a;->a([Ljava/lang/Object;I)V

    .line 192
    iput v0, p0, Landroidx/constraintlayout/a/d;->z:I

    .line 194
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v1, v1, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->s:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 198
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/a/d;->h:I

    .line 199
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->t:Landroidx/constraintlayout/a/d$a;

    invoke-interface {v1}, Landroidx/constraintlayout/a/d$a;->c()V

    const/4 v1, 0x1

    .line 200
    iput v1, p0, Landroidx/constraintlayout/a/d;->l:I

    const/4 v1, 0x0

    .line 201
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/a/d;->m:I

    if-ge v1, v2, :cond_4

    .line 202
    iget-object v2, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    .line 203
    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroidx/constraintlayout/a/b;->c:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_4
    invoke-direct {p0}, Landroidx/constraintlayout/a/d;->g()V

    .line 207
    iput v0, p0, Landroidx/constraintlayout/a/d;->m:I

    .line 208
    sget-boolean v0, Landroidx/constraintlayout/a/d;->f:Z

    if-eqz v0, :cond_5

    .line 209
    new-instance v0, Landroidx/constraintlayout/a/d$b;

    iget-object v1, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/a/d$b;-><init>(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/d;->A:Landroidx/constraintlayout/a/d$a;

    return-void

    .line 211
    :cond_5
    new-instance v0, Landroidx/constraintlayout/a/b;

    iget-object v1, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/a/b;-><init>(Landroidx/constraintlayout/a/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/d;->A:Landroidx/constraintlayout/a/d$a;

    return-void
.end method

.method public final b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V
    .locals 3

    .line 1247
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    .line 1248
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->d()Landroidx/constraintlayout/a/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 1249
    iput v2, v1, Landroidx/constraintlayout/a/h;->d:I

    .line 1250
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/a/b;->b(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;I)Landroidx/constraintlayout/a/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1252
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/a/b$a;->b(Landroidx/constraintlayout/a/h;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 1253
    invoke-direct {p0, v0, p1, p4}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;II)V

    .line 1255
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    return-void
.end method

.method public final c()Landroidx/constraintlayout/a/b;
    .locals 5

    .line 254
    sget-boolean v0, Landroidx/constraintlayout/a/d;->f:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v0, v0, Landroidx/constraintlayout/a/c;->a:Landroidx/constraintlayout/a/f$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/f$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/b;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Landroidx/constraintlayout/a/d$b;

    iget-object v3, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/a/d$b;-><init>(Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/c;)V

    .line 258
    sget-wide v3, Landroidx/constraintlayout/a/d;->q:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/a/d;->q:J

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/a/b;->a()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v0, v0, Landroidx/constraintlayout/a/c;->b:Landroidx/constraintlayout/a/f$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/f$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/b;

    if-nez v0, :cond_2

    .line 265
    new-instance v0, Landroidx/constraintlayout/a/b;

    iget-object v3, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    invoke-direct {v0, v3}, Landroidx/constraintlayout/a/b;-><init>(Landroidx/constraintlayout/a/c;)V

    .line 266
    sget-wide v3, Landroidx/constraintlayout/a/d;->p:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/a/d;->p:J

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/a/b;->a()V

    .line 271
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/a/h;->a()V

    return-object v0
.end method

.method public final c(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)Landroidx/constraintlayout/a/b;
    .locals 4

    .line 1336
    sget-boolean v0, Landroidx/constraintlayout/a/d;->b:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    if-ne p4, v1, :cond_0

    iget-boolean v0, p2, Landroidx/constraintlayout/a/h;->f:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/constraintlayout/a/h;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1340
    iget p2, p2, Landroidx/constraintlayout/a/h;->e:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/a/h;->a(Landroidx/constraintlayout/a/d;F)V

    const/4 p1, 0x0

    return-object p1

    .line 1362
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/a/d;->c()Landroidx/constraintlayout/a/b;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    .line 10165
    iput p3, v0, Landroidx/constraintlayout/a/b;->b:F

    :cond_2
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    .line 10168
    iget-object v2, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v2, p1, p3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10169
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    goto :goto_0

    .line 10171
    :cond_3
    iget-object v2, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {v2, p1, v3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    .line 10172
    iget-object p1, v0, Landroidx/constraintlayout/a/b;->e:Landroidx/constraintlayout/a/b$a;

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/a/b$a;->a(Landroidx/constraintlayout/a/h;F)V

    :goto_0
    if-eq p4, v1, :cond_4

    .line 1365
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/a/b;->a(Landroidx/constraintlayout/a/d;I)Landroidx/constraintlayout/a/b;

    .line 1367
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/b;)V

    return-object v0
.end method

.method public d()Landroidx/constraintlayout/a/h;
    .locals 5

    .line 276
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v0, :cond_0

    .line 277
    iget-wide v1, v0, Landroidx/constraintlayout/a/e;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/a/e;->m:J

    .line 279
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/a/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/a/d;->v:I

    if-lt v0, v1, :cond_1

    .line 280
    invoke-direct {p0}, Landroidx/constraintlayout/a/d;->f()V

    .line 282
    :cond_1
    sget-object v0, Landroidx/constraintlayout/a/h$a;->SLACK:Landroidx/constraintlayout/a/h$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h$a;Ljava/lang/String;)Landroidx/constraintlayout/a/h;

    move-result-object v0

    .line 283
    iget v1, p0, Landroidx/constraintlayout/a/d;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/a/d;->h:I

    .line 284
    iget v2, p0, Landroidx/constraintlayout/a/d;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/a/d;->l:I

    .line 285
    iput v1, v0, Landroidx/constraintlayout/a/h;->b:I

    .line 286
    iget-object v1, p0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    iget-object v1, v1, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    iget v2, p0, Landroidx/constraintlayout/a/d;->h:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public final e()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 448
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 449
    iget-wide v3, v0, Landroidx/constraintlayout/a/e;->e:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/a/e;->e:J

    .line 451
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->t:Landroidx/constraintlayout/a/d$a;

    invoke-interface {v0}, Landroidx/constraintlayout/a/d$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-direct {p0}, Landroidx/constraintlayout/a/d;->i()V

    return-void

    .line 461
    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/a/d;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/constraintlayout/a/d;->k:Z

    if-eqz v0, :cond_7

    .line 462
    :cond_2
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v0, :cond_3

    .line 463
    iget-wide v3, v0, Landroidx/constraintlayout/a/e;->q:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/a/e;->q:J

    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 466
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/a/d;->m:I

    if-ge v3, v4, :cond_5

    .line 467
    iget-object v4, p0, Landroidx/constraintlayout/a/d;->i:[Landroidx/constraintlayout/a/b;

    aget-object v4, v4, v3

    .line 468
    iget-boolean v4, v4, Landroidx/constraintlayout/a/b;->f:Z

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    .line 476
    sget-object v0, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v0, :cond_6

    .line 477
    iget-wide v3, v0, Landroidx/constraintlayout/a/e;->p:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/a/e;->p:J

    .line 479
    :cond_6
    invoke-direct {p0}, Landroidx/constraintlayout/a/d;->i()V

    return-void

    .line 482
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/a/d;->t:Landroidx/constraintlayout/a/d$a;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/d$a;)V

    return-void
.end method
