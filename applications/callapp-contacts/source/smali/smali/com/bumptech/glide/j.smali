.class public Lcom/bumptech/glide/j;
.super Lcom/bumptech/glide/e/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e/a<",
        "Lcom/bumptech/glide/j<",
        "TTranscodeType;>;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/bumptech/glide/e/h;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/bumptech/glide/k;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/bumptech/glide/c;

.field private final f:Lcom/bumptech/glide/e;

.field private g:Lcom/bumptech/glide/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private j:Lcom/bumptech/glide/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private k:Lcom/bumptech/glide/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Float;

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/bumptech/glide/e/h;

    invoke-direct {v0}, Lcom/bumptech/glide/e/h;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/j;->c:Lcom/bumptech/glide/load/engine/j;

    .line 58
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sget-object v1, Lcom/bumptech/glide/h;->LOW:Lcom/bumptech/glide/h;

    .line 59
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->a(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->b(Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/j;->a:Lcom/bumptech/glide/e/h;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/k;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/k;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/bumptech/glide/e/a;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/bumptech/glide/j;->m:Z

    .line 91
    iput-object p1, p0, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/c;

    .line 92
    iput-object p2, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/k;

    .line 93
    iput-object p3, p0, Lcom/bumptech/glide/j;->d:Ljava/lang/Class;

    .line 94
    iput-object p4, p0, Lcom/bumptech/glide/j;->b:Landroid/content/Context;

    .line 95
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/k;->b(Ljava/lang/Class;)Lcom/bumptech/glide/l;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/j;->g:Lcom/bumptech/glide/l;

    .line 1651
    iget-object p1, p1, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/e;

    .line 96
    iput-object p1, p0, Lcom/bumptech/glide/j;->f:Lcom/bumptech/glide/e;

    .line 98
    invoke-virtual {p2}, Lcom/bumptech/glide/k;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p1

    .line 2118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bumptech/glide/e/g;

    .line 2119
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/j;

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/bumptech/glide/k;->getDefaultRequestOptions()Lcom/bumptech/glide/e/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/bumptech/glide/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/j<",
            "*>;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p2, Lcom/bumptech/glide/j;->e:Lcom/bumptech/glide/c;

    iget-object v1, p2, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/k;

    iget-object v2, p2, Lcom/bumptech/glide/j;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/k;Ljava/lang/Class;Landroid/content/Context;)V

    .line 106
    iget-object p1, p2, Lcom/bumptech/glide/j;->h:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/j;->h:Ljava/lang/Object;

    .line 107
    iget-boolean p1, p2, Lcom/bumptech/glide/j;->n:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/j;->n:Z

    .line 110
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    return-void
.end method

.method private a(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/e/a/j<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 5023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 716
    iget-boolean v1, p0, Lcom/bumptech/glide/j;->n:Z

    if-eqz v1, :cond_2

    .line 720
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object p2

    .line 722
    invoke-interface {p1}, Lcom/bumptech/glide/e/a/j;->getRequest()Lcom/bumptech/glide/e/d;

    move-result-object p4

    .line 723
    invoke-interface {p2, p4}, Lcom/bumptech/glide/e/d;->a(Lcom/bumptech/glide/e/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 724
    invoke-static {p3, p4}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/d;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 6023
    invoke-static {p4, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 729
    check-cast p2, Lcom/bumptech/glide/e/d;

    invoke-interface {p2}, Lcom/bumptech/glide/e/d;->d()Z

    move-result p2

    if-nez p2, :cond_0

    .line 733
    invoke-interface {p4}, Lcom/bumptech/glide/e/d;->a()V

    :cond_0
    return-object p1

    .line 738
    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/k;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/k;->a(Lcom/bumptech/glide/e/a/j;)V

    .line 739
    invoke-interface {p1, p2}, Lcom/bumptech/glide/e/a/j;->setRequest(Lcom/bumptech/glide/e/d;)V

    .line 740
    iget-object p3, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/k;

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/k;->a(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/d;)V

    return-object p1

    .line 717
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/e/a/j<",
            "TTranscodeType;>;>(TY;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 707
    invoke-direct {p0, p1, p2, p0, p3}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/j;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Lcom/bumptech/glide/e/e;",
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/h;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/e/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1154
    iget-object v1, v0, Lcom/bumptech/glide/j;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/j;->f:Lcom/bumptech/glide/e;

    iget-object v4, v0, Lcom/bumptech/glide/j;->h:Ljava/lang/Object;

    iget-object v5, v0, Lcom/bumptech/glide/j;->d:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/j;->i:Ljava/util/List;

    .line 9105
    iget-object v14, v2, Lcom/bumptech/glide/e;->f:Lcom/bumptech/glide/load/engine/k;

    move-object/from16 v3, p6

    .line 10093
    iget-object v15, v3, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/e/b/e;

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p7

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    move-object/from16 v16, p10

    .line 1154
    invoke-static/range {v1 .. v16}, Lcom/bumptech/glide/e/j;->a(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/e/a;IILcom/bumptech/glide/h;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Ljava/util/List;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/e/b/e;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/j;

    move-result-object v1

    return-object v1
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/e;",
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/h;",
            "II",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/e/d;"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 976
    iget-object v0, v11, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_0

    .line 977
    new-instance v0, Lcom/bumptech/glide/e/b;

    move-object/from16 v13, p1

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/bumptech/glide/e/b;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/e/e;)V

    move-object v4, v0

    move-object v15, v4

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v15, v0

    move-object v4, v1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 982
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/j;->b(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v0

    if-nez v15, :cond_1

    return-object v0

    .line 998
    :cond_1
    iget-object v1, v11, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/j;

    invoke-virtual {v1}, Lcom/bumptech/glide/j;->getOverrideWidth()I

    move-result v1

    .line 999
    iget-object v2, v11, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/j;

    invoke-virtual {v2}, Lcom/bumptech/glide/j;->getOverrideHeight()I

    move-result v2

    .line 1000
    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/g/k;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/j;

    invoke-virtual {v3}, Lcom/bumptech/glide/j;->isValidOverride()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1001
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/e/a;->getOverrideWidth()I

    move-result v1

    .line 1002
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/e/a;->getOverrideHeight()I

    move-result v2

    :cond_2
    move/from16 v19, v1

    move/from16 v20, v2

    .line 1005
    iget-object v12, v11, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/j;

    iget-object v1, v12, Lcom/bumptech/glide/j;->g:Lcom/bumptech/glide/l;

    .line 1012
    invoke-virtual {v12}, Lcom/bumptech/glide/j;->getPriority()Lcom/bumptech/glide/h;

    move-result-object v18

    iget-object v2, v11, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/j;

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v3, v15

    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v21, v2

    move-object/from16 v22, p10

    .line 1006
    invoke-direct/range {v12 .. v22}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v1

    .line 1017
    invoke-virtual {v3, v0, v1}, Lcom/bumptech/glide/e/b;->a(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V

    return-object v3
.end method

.method private static a(Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/d;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Lcom/bumptech/glide/e/d;",
            ")Z"
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->isMemoryCacheable()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/e/d;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/j<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/e/d;"
        }
    .end annotation

    .line 949
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/bumptech/glide/j;->g:Lcom/bumptech/glide/l;

    .line 955
    invoke-virtual {p3}, Lcom/bumptech/glide/e/a;->getPriority()Lcom/bumptech/glide/h;

    move-result-object v6

    .line 956
    invoke-virtual {p3}, Lcom/bumptech/glide/e/a;->getOverrideWidth()I

    move-result v7

    .line 957
    invoke-virtual {p3}, Lcom/bumptech/glide/e/a;->getOverrideHeight()I

    move-result v8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    .line 949
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/e/a/j<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/e/e;",
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/h;",
            "II",
            "Lcom/bumptech/glide/e/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/e/d;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p4

    move-object/from16 v13, p6

    .line 1032
    iget-object v0, v11, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/j;

    if-eqz v0, :cond_4

    .line 1034
    iget-boolean v1, v11, Lcom/bumptech/glide/j;->o:Z

    if-nez v1, :cond_3

    .line 1040
    iget-object v1, v0, Lcom/bumptech/glide/j;->g:Lcom/bumptech/glide/l;

    .line 1045
    iget-boolean v2, v0, Lcom/bumptech/glide/j;->m:Z

    if-eqz v2, :cond_0

    move-object/from16 v14, p5

    goto :goto_0

    :cond_0
    move-object v14, v1

    .line 1050
    :goto_0
    invoke-virtual {v0}, Lcom/bumptech/glide/j;->isPrioritySet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    iget-object v0, v11, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->getPriority()Lcom/bumptech/glide/h;

    move-result-object v0

    goto :goto_1

    .line 1052
    :cond_1
    invoke-direct {v11, v13}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v0

    :goto_1
    move-object v15, v0

    .line 1054
    iget-object v0, v11, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->getOverrideWidth()I

    move-result v0

    .line 1055
    iget-object v1, v11, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/j;

    invoke-virtual {v1}, Lcom/bumptech/glide/j;->getOverrideHeight()I

    move-result v1

    .line 1056
    invoke-static/range {p7 .. p8}, Lcom/bumptech/glide/g/k;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/j;

    .line 1057
    invoke-virtual {v2}, Lcom/bumptech/glide/j;->isValidOverride()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1058
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/e/a;->getOverrideWidth()I

    move-result v0

    .line 1059
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/e/a;->getOverrideHeight()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    .line 1062
    new-instance v10, Lcom/bumptech/glide/e/k;

    invoke-direct {v10, v12, v5}, Lcom/bumptech/glide/e/k;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/e/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v13, v10

    move-object/from16 v10, p10

    .line 1065
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v10

    const/4 v0, 0x1

    .line 1076
    iput-boolean v0, v11, Lcom/bumptech/glide/j;->o:Z

    .line 1078
    iget-object v9, v11, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/j;

    move-object v0, v9

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object v12, v10

    move-object/from16 v10, p10

    .line 1079
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 1090
    iput-boolean v1, v11, Lcom/bumptech/glide/j;->o:Z

    .line 1091
    invoke-virtual {v13, v12, v0}, Lcom/bumptech/glide/e/k;->a(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V

    return-object v13

    .line 1035
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    :cond_4
    iget-object v0, v11, Lcom/bumptech/glide/j;->l:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 1095
    new-instance v14, Lcom/bumptech/glide/e/k;

    invoke-direct {v14, v12, v5}, Lcom/bumptech/glide/e/k;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/e/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v14

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 1098
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v15

    .line 1110
    invoke-virtual/range {p9 .. p9}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    iget-object v1, v11, Lcom/bumptech/glide/j;->l:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/a;->a(F)Lcom/bumptech/glide/e/a;

    move-result-object v4

    .line 1120
    invoke-direct {v11, v13}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1113
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v0

    .line 1125
    invoke-virtual {v14, v15, v0}, Lcom/bumptech/glide/e/k;->a(Lcom/bumptech/glide/e/d;Lcom/bumptech/glide/e/d;)V

    return-object v14

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 1129
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Lcom/bumptech/glide/e/e;Lcom/bumptech/glide/l;Lcom/bumptech/glide/h;IILjava/util/concurrent/Executor;)Lcom/bumptech/glide/e/d;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/h;)Lcom/bumptech/glide/h;
    .locals 2

    .line 931
    sget-object v0, Lcom/bumptech/glide/j$1;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/h;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 940
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown priority: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/j;->getPriority()Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 938
    :cond_1
    :goto_0
    sget-object p1, Lcom/bumptech/glide/h;->IMMEDIATE:Lcom/bumptech/glide/h;

    return-object p1

    .line 935
    :cond_2
    sget-object p1, Lcom/bumptech/glide/h;->HIGH:Lcom/bumptech/glide/h;

    return-object p1

    .line 933
    :cond_3
    sget-object p1, Lcom/bumptech/glide/h;->NORMAL:Lcom/bumptech/glide/h;

    return-object p1
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    move-object v0, p0

    .line 458
    :goto_0
    invoke-virtual {v0}, Lcom/bumptech/glide/j;->isAutoCloneEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_0
    iput-object p1, v0, Lcom/bumptech/glide/j;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 462
    iput-boolean p1, v0, Lcom/bumptech/glide/j;->n:Z

    .line 463
    invoke-virtual {v0}, Lcom/bumptech/glide/j;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/e/a/j;)Lcom/bumptech/glide/e/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/e/a/j<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 698
    invoke-static {}, Lcom/bumptech/glide/g/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/j;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/widget/ImageView;)Lcom/bumptech/glide/e/a/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/bumptech/glide/e/a/k<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 767
    invoke-static {}, Lcom/bumptech/glide/g/k;->a()V

    const-string v0, "Argument must not be null"

    .line 7023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 771
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->isTransformationSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->isTransformationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 777
    sget-object v0, Lcom/bumptech/glide/j$1;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 790
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->h()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_1

    .line 787
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->f()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_1

    .line 782
    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->h()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_1

    .line 779
    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/a;->e()Lcom/bumptech/glide/e/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 799
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/j;->d:Ljava/lang/Class;

    .line 8017
    const-class v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8018
    new-instance v1, Lcom/bumptech/glide/e/a/b;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/e/a/b;-><init>(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 8019
    :cond_1
    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8020
    new-instance v1, Lcom/bumptech/glide/e/a/e;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/e/a/e;-><init>(Landroid/widget/ImageView;)V

    :goto_2
    const/4 p1, 0x0

    .line 803
    invoke-static {}, Lcom/bumptech/glide/g/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 799
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Lcom/bumptech/glide/e/a;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/j;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/a/k;

    return-object p1

    .line 8022
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled class: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(II)Lcom/bumptech/glide/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/e/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 852
    new-instance v0, Lcom/bumptech/glide/e/f;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/e/f;-><init>(II)V

    .line 853
    invoke-static {}, Lcom/bumptech/glide/g/e;->b()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-direct {p0, v0, v0, p1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a/j;Lcom/bumptech/glide/e/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/e/a/j;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/c;

    return-object p1
.end method

.method public a()Lcom/bumptech/glide/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 675
    invoke-super {p0}, Lcom/bumptech/glide/e/a;->d()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    .line 676
    iget-object v1, v0, Lcom/bumptech/glide/j;->g:Lcom/bumptech/glide/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/l;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/j;->g:Lcom/bumptech/glide/l;

    .line 677
    iget-object v1, v0, Lcom/bumptech/glide/j;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bumptech/glide/j;->i:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bumptech/glide/j;->i:Ljava/util/List;

    .line 680
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/j;

    if-eqz v1, :cond_1

    .line 681
    invoke-virtual {v1}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/j;->j:Lcom/bumptech/glide/j;

    .line 683
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/j;

    if-eqz v1, :cond_2

    .line 684
    invoke-virtual {v1}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/j;->k:Lcom/bumptech/glide/j;

    :cond_2
    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 487
    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->b(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/j;

    invoke-static {v0}, Lcom/bumptech/glide/e/h;->b(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 513
    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->b(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    sget-object v0, Lcom/bumptech/glide/load/engine/j;->b:Lcom/bumptech/glide/load/engine/j;

    invoke-static {v0}, Lcom/bumptech/glide/e/h;->b(Lcom/bumptech/glide/load/engine/j;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a<",
            "*>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 3023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    invoke-super {p0, p1}, Lcom/bumptech/glide/e/a;->b(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/bumptech/glide/j;->i:Ljava/util/List;

    .line 183
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/l<",
            "*-TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/l;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 4023
    invoke-static {p1, v0}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 158
    check-cast p1, Lcom/bumptech/glide/l;

    iput-object p1, p0, Lcom/bumptech/glide/j;->g:Lcom/bumptech/glide/l;

    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/bumptech/glide/j;->m:Z

    .line 160
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 620
    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->b(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/j;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/f/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/f;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/e/h;->b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 453
    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->b(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/bumptech/glide/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 536
    invoke-direct {p0, p1}, Lcom/bumptech/glide/j;->b(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/e/a;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/bumptech/glide/e/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e/c<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 837
    invoke-virtual {p0, v0, v0}, Lcom/bumptech/glide/j;->a(II)Lcom/bumptech/glide/e/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/g<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->isAutoCloneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/bumptech/glide/j;->i:Ljava/util/List;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/j;->i:Ljava/util/List;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/j;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->l()Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/j;

    return-object p1
.end method

.method public final c()Lcom/bumptech/glide/e/a/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/e/a/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 8874
    iget-object v0, p0, Lcom/bumptech/glide/j;->c:Lcom/bumptech/glide/k;

    const/high16 v1, -0x80000000

    invoke-static {v0, v1, v1}, Lcom/bumptech/glide/e/a/h;->a(Lcom/bumptech/glide/k;II)Lcom/bumptech/glide/e/a/h;

    move-result-object v0

    .line 8875
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/e/a/j;)Lcom/bumptech/glide/e/a/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Lcom/bumptech/glide/e/a;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method
