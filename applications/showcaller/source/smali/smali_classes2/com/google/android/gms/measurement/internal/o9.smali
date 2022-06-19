.class public final Lcom/google/android/gms/measurement/internal/o9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/o5;


# static fields
.field private static volatile a:Lcom/google/android/gms/measurement/internal/o9;


# instance fields
.field private final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/f;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Lcom/google/android/gms/measurement/internal/t9;

.field private final b:Lcom/google/android/gms/measurement/internal/k4;

.field private final c:Lcom/google/android/gms/measurement/internal/u3;

.field private d:Lcom/google/android/gms/measurement/internal/i;

.field private e:Lcom/google/android/gms/measurement/internal/w3;

.field private f:Lcom/google/android/gms/measurement/internal/c9;

.field private g:Lcom/google/android/gms/measurement/internal/ja;

.field private final h:Lcom/google/android/gms/measurement/internal/q9;

.field private i:Lcom/google/android/gms/measurement/internal/a7;

.field private j:Lcom/google/android/gms/measurement/internal/l8;

.field private final k:Lcom/google/android/gms/measurement/internal/g9;

.field private final l:Lcom/google/android/gms/measurement/internal/s4;

.field private m:Z

.field private n:Z

.field o:J

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/nio/channels/FileLock;

.field private w:Ljava/nio/channels/FileChannel;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private z:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/p9;Lcom/google/android/gms/measurement/internal/s4;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/o9;->m:Z

    new-instance p2, Lcom/google/android/gms/measurement/internal/m9;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/m9;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->B:Lcom/google/android/gms/measurement/internal/t9;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/p9;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/s4;->f(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/s4;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/o9;->z:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/g9;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/g9;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->k:Lcom/google/android/gms/measurement/internal/g9;

    new-instance p2, Lcom/google/android/gms/measurement/internal/q9;

    .line 5
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/q9;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->j()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    new-instance p2, Lcom/google/android/gms/measurement/internal/u3;

    .line 7
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/u3;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->j()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/measurement/internal/u3;

    new-instance p2, Lcom/google/android/gms/measurement/internal/k4;

    .line 9
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/k4;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e9;->j()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->A:Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/h9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/h9;-><init>(Lcom/google/android/gms/measurement/internal/o9;Lcom/google/android/gms/measurement/internal/p9;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/p4;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic B(Lcom/google/android/gms/measurement/internal/o9;Lcom/google/android/gms/measurement/internal/p9;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->j()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/e;->i(Lcom/google/android/gms/measurement/internal/d;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/l8;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/l8;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->j()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ja;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/ja;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->j()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Lcom/google/android/gms/measurement/internal/ja;

    new-instance p1, Lcom/google/android/gms/measurement/internal/a7;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/a7;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->j()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->i:Lcom/google/android/gms/measurement/internal/a7;

    new-instance p1, Lcom/google/android/gms/measurement/internal/c9;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/c9;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e9;->j()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->f:Lcom/google/android/gms/measurement/internal/c9;

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/w3;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/w3;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->e:Lcom/google/android/gms/measurement/internal/w3;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/o9;->q:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/o9;->r:I

    if-eq p1, v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/o9;->q:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/o9;->r:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/o9;->m:Z

    return-void
.end method

.method static synthetic D(Lcom/google/android/gms/measurement/internal/o9;)Lcom/google/android/gms/measurement/internal/s4;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    return-object p0
.end method

.method static final E(Lcom/google/android/gms/internal/measurement/r1;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r1;->t()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/w1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w1;->M()Lcom/google/android/gms/internal/measurement/v1;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/v1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v1;

    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/v1;->x(J)Lcom/google/android/gms/internal/measurement/v1;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/w1;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w1;->M()Lcom/google/android/gms/internal/measurement/v1;

    move-result-object v0

    const-string v1, "_ev"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/v1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v1;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/v1;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v1;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/w1;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/r1;->A(Lcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/r1;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/r1;->A(Lcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/r1;

    return-void
.end method

.method public static F(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/o9;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/o9;->a:Lcom/google/android/gms/measurement/internal/o9;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/measurement/internal/o9;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/o9;->a:Lcom/google/android/gms/measurement/internal/o9;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/p9;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/p9;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/p9;

    new-instance v1, Lcom/google/android/gms/measurement/internal/o9;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/o9;-><init>(Lcom/google/android/gms/measurement/internal/p9;Lcom/google/android/gms/measurement/internal/s4;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/o9;->a:Lcom/google/android/gms/measurement/internal/o9;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/o9;->a:Lcom/google/android/gms/measurement/internal/o9;

    return-object p0
.end method

.method static final G(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r1;->t()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/w1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/r1;->E(I)Lcom/google/android/gms/internal/measurement/r1;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final H(Ljava/lang/String;J)Z
    .locals 45

    move-object/from16 v1, p0

    const-string v2, "_sc"

    const-string v3, "_sn"

    const-string v4, "_npa"

    const-string v5, "_ai"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i;->M()V

    :try_start_0
    new-instance v6, Lcom/google/android/gms/measurement/internal/n9;

    const/4 v14, 0x0

    .line 3
    invoke-direct {v6, v1, v14}, Lcom/google/android/gms/measurement/internal/n9;-><init>(Lcom/google/android/gms/measurement/internal/o9;Lcom/google/android/gms/measurement/internal/h9;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 4
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    const/4 v8, 0x0

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/o9;->z:J

    move-wide/from16 v9, p2

    move-object v13, v6

    .line 5
    invoke-virtual/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/i;->I(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/n9;)V

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/n9;->c:Ljava/util/List;

    if-eqz v7, :cond_69

    .line 6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_3b

    .line 7
    :cond_0
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 8
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/x5;->t()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/z1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/z1;->t0()Lcom/google/android/gms/internal/measurement/z1;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/c3;->V:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v9

    move-object/from16 v18, v14

    move-object/from16 v20, v18

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/n9;->c:Ljava/util/List;

    .line 10
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "_fr"

    const-string v14, "_et"

    move-object/from16 v23, v4

    const-string v4, "_e"

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    if-ge v13, v11, :cond_33

    :try_start_1
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/n9;->c:Ljava/util/List;

    .line 11
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/s1;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/x5;->t()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/r1;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 12
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v2

    move/from16 v28, v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v2, v13}, Lcom/google/android/gms/measurement/internal/k4;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "_err"

    if-eqz v2, :cond_3

    .line 14
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v4, "Dropping blacklisted raw event. appId"

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 17
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v13

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/j3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 19
    invoke-virtual {v2, v4, v12, v13}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/k4;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/k4;->u(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v29

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->B:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v31

    const-string v33, "_ev"

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v34

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/c3;->A0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v4}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v36

    const/16 v32, 0xb

    const/16 v35, 0x0

    move-object/from16 v30, v2

    .line 29
    invoke-virtual/range {v29 .. v36}, Lcom/google/android/gms/measurement/internal/u9;->z(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    :goto_1
    move-object/from16 v30, v5

    move-object v5, v7

    move-wide/from16 v31, v15

    move-object/from16 v14, v24

    move-object/from16 v11, v25

    move/from16 v7, v28

    move/from16 v16, v9

    goto/16 :goto_1a

    .line 30
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/q5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 32
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/r1;->G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/r1;

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v13, "Renaming ad_impression to _ai"

    invoke-virtual {v2, v13}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->y()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x5

    .line 35
    invoke-static {v2, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 36
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->v()I

    move-result v13

    if-ge v2, v13, :cond_5

    const-string v13, "ad_platform"

    .line 37
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/r1;->w(I)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v29

    move-object/from16 v30, v5

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 38
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/r1;->w(I)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/w1;->D()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "admob"

    .line 39
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/r1;->w(I)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/w1;->D()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/o3;->r()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v5

    const-string v13, "AdMob ad impression logged from app. Potentially duplicative."

    .line 42
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v30

    goto :goto_2

    :cond_5
    move-object/from16 v30, v5

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 44
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Lcom/google/android/gms/measurement/internal/k4;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "_c"

    if-nez v2, :cond_a

    :try_start_3
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 45
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v13

    .line 47
    invoke-static {v13}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-wide/from16 v31, v15

    .line 48
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v16, v9

    const v9, 0x171c4

    if-eq v15, v9, :cond_8

    const v9, 0x17331

    if-eq v15, v9, :cond_7

    const v9, 0x17333

    if-eq v15, v9, :cond_6

    goto :goto_3

    :cond_6
    const-string v9, "_ui"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const-string v9, "_ug"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x2

    goto :goto_4

    :cond_8
    const-string v9, "_in"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v9, -0x1

    :goto_4
    if-eqz v9, :cond_b

    const/4 v13, 0x1

    if-eq v9, v13, :cond_b

    const/4 v13, 0x2

    if-eq v9, v13, :cond_b

    move-object/from16 v33, v7

    move/from16 v22, v8

    move v13, v10

    move-object/from16 v29, v14

    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_a
    move-wide/from16 v31, v15

    move/from16 v16, v9

    :cond_b
    move/from16 v22, v8

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 49
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->v()I

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v29, v14

    const-string v14, "_r"

    if-ge v9, v8, :cond_e

    .line 50
    :try_start_5
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/r1;->w(I)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 51
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/r1;->w(I)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/x5;->t()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/v1;

    const-wide/16 v13, 0x1

    .line 52
    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/v1;->x(J)Lcom/google/android/gms/internal/measurement/v1;

    .line 53
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/w1;

    .line 54
    invoke-virtual {v3, v9, v8}, Lcom/google/android/gms/internal/measurement/r1;->x(ILcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/r1;

    const/4 v13, 0x1

    goto :goto_6

    .line 55
    :cond_c
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/r1;->w(I)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 56
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/r1;->w(I)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/x5;->t()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/v1;

    const-wide/16 v14, 0x1

    .line 57
    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/measurement/v1;->x(J)Lcom/google/android/gms/internal/measurement/v1;

    .line 58
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/w1;

    .line 59
    invoke-virtual {v3, v9, v8}, Lcom/google/android/gms/internal/measurement/r1;->x(ILcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/r1;

    const/4 v15, 0x1

    :cond_d
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v14, v29

    goto :goto_5

    :cond_e
    if-nez v13, :cond_f

    if-eqz v2, :cond_f

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v8

    .line 61
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v8

    const-string v9, "Marking event as conversion"

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 62
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v13

    move-object/from16 v33, v7

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/google/android/gms/measurement/internal/j3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w1;->M()Lcom/google/android/gms/internal/measurement/v1;

    move-result-object v7

    .line 66
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/v1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v1;

    const-wide/16 v8, 0x1

    .line 67
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/v1;->x(J)Lcom/google/android/gms/internal/measurement/v1;

    .line 68
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/r1;->B(Lcom/google/android/gms/internal/measurement/v1;)Lcom/google/android/gms/internal/measurement/r1;

    goto :goto_7

    :cond_f
    move-object/from16 v33, v7

    :goto_7
    if-nez v15, :cond_10

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    .line 70
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    const-string v8, "Marking event as real-time"

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 71
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v9

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/j3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/w1;->M()Lcom/google/android/gms/internal/measurement/v1;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/measurement/v1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v1;

    const-wide/16 v8, 0x1

    .line 76
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/v1;->x(J)Lcom/google/android/gms/internal/measurement/v1;

    .line 77
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/r1;->B(Lcom/google/android/gms/internal/measurement/v1;)Lcom/google/android/gms/internal/measurement/r1;

    :cond_10
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 78
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->h0()J

    move-result-wide v35

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 80
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x1

    move-object/from16 v34, v7

    .line 81
    invoke-virtual/range {v34 .. v42}, Lcom/google/android/gms/measurement/internal/i;->e0(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/android/gms/measurement/internal/g;->e:J

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/google/android/gms/measurement/internal/c3;->p:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v9, v13, v15}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)I

    move-result v9

    move v13, v10

    int-to-long v9, v9

    cmp-long v15, v7, v9

    if-lez v15, :cond_11

    .line 83
    invoke-static {v3, v14}, Lcom/google/android/gms/measurement/internal/o9;->G(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    const/16 v19, 0x1

    .line 84
    :goto_8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/u9;->j0(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    if-eqz v2, :cond_18

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 85
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->h0()J

    move-result-wide v35

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 87
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x1

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v34, v7

    .line 88
    invoke-virtual/range {v34 .. v42}, Lcom/google/android/gms/measurement/internal/i;->e0(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/android/gms/measurement/internal/g;->c:J

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/google/android/gms/measurement/internal/c3;->o:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v9, v10, v14}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v14, v7, v9

    if-lez v14, :cond_18

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    .line 91
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    const-string v8, "Too many conversions. Not logging as conversion. appId"

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 92
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 93
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 94
    :goto_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->v()I

    move-result v14

    if-ge v7, v14, :cond_14

    .line 95
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/r1;->w(I)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v14

    .line 96
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 97
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/x5;->t()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/v1;

    move-object v10, v9

    move v9, v7

    goto :goto_a

    .line 98
    :cond_12
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v8, 0x1

    :cond_13
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_14
    if-eqz v8, :cond_16

    if-eqz v10, :cond_15

    .line 99
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/r1;->E(I)Lcom/google/android/gms/internal/measurement/r1;

    goto :goto_b

    :cond_15
    const/4 v10, 0x0

    :cond_16
    if-eqz v10, :cond_17

    .line 100
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u5;->r()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/v1;

    .line 101
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/measurement/v1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/v1;

    const-wide/16 v10, 0xa

    .line 102
    invoke-virtual {v7, v10, v11}, Lcom/google/android/gms/internal/measurement/v1;->x(J)Lcom/google/android/gms/internal/measurement/v1;

    .line 103
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/w1;

    .line 104
    invoke-virtual {v3, v9, v7}, Lcom/google/android/gms/internal/measurement/r1;->x(ILcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/r1;

    goto :goto_b

    .line 105
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    .line 106
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    const-string v8, "Did not find conversion parameter. appId"

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 107
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 108
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_b
    if-eqz v2, :cond_20

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    .line 110
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->t()Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 111
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v11, "currency"

    const-string v14, "value"

    if-ge v7, v10, :cond_1b

    .line 112
    :try_start_6
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/w1;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    move v8, v7

    goto :goto_d

    .line 113
    :cond_19
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/w1;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    move v9, v7

    :cond_1a
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_1b
    const/4 v7, -0x1

    if-ne v8, v7, :cond_1c

    goto/16 :goto_11

    .line 114
    :cond_1c
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/w1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/w1;->E()Z

    move-result v7

    if-nez v7, :cond_1d

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/w1;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/w1;->I()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->r()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v7, "Value must be specified with a numeric type."

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/r1;->E(I)Lcom/google/android/gms/internal/measurement/r1;

    .line 117
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/o9;->G(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 118
    invoke-static {v3, v2, v14}, Lcom/google/android/gms/measurement/internal/o9;->E(Lcom/google/android/gms/internal/measurement/r1;ILjava/lang/String;)V

    goto :goto_10

    :cond_1d
    const/4 v7, -0x1

    if-ne v9, v7, :cond_1e

    goto :goto_f

    .line 119
    :cond_1e
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/w1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/w1;->D()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1f

    const/4 v9, 0x0

    .line 121
    :goto_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_21

    .line 122
    invoke-virtual {v2, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 123
    invoke-static {v10}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 124
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_e

    .line 125
    :cond_1f
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->r()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v9, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 127
    invoke-virtual {v2, v9}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/r1;->E(I)Lcom/google/android/gms/internal/measurement/r1;

    .line 129
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/o9;->G(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 130
    invoke-static {v3, v2, v11}, Lcom/google/android/gms/measurement/internal/o9;->E(Lcom/google/android/gms/internal/measurement/r1;ILjava/lang/String;)V

    goto :goto_11

    :cond_20
    :goto_10
    const/4 v7, -0x1

    .line 131
    :cond_21
    :goto_11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 132
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 133
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v2, v12}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v2

    if-nez v2, :cond_24

    if-eqz v20, :cond_23

    .line 134
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v14

    sub-long/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-gtz v2, :cond_23

    .line 135
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/u5;->r()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/r1;

    .line 136
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/o9;->J(Lcom/google/android/gms/internal/measurement/r1;Lcom/google/android/gms/internal/measurement/r1;)Z

    move-result v5

    if-eqz v5, :cond_22

    move v12, v13

    move-object/from16 v5, v33

    .line 137
    invoke-virtual {v5, v12, v2}, Lcom/google/android/gms/internal/measurement/z1;->q0(ILcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;

    move/from16 v8, v22

    const/4 v2, 0x0

    const/16 v20, 0x0

    goto :goto_12

    :cond_22
    move v12, v13

    move-object/from16 v5, v33

    move-object v2, v3

    move/from16 v8, v17

    :goto_12
    move-object/from16 v18, v2

    goto :goto_13

    :cond_23
    move v12, v13

    move-object/from16 v5, v33

    move-object/from16 v18, v3

    move/from16 v8, v17

    :goto_13
    move-object/from16 v14, v24

    move-object/from16 v11, v25

    move-object/from16 v10, v29

    goto/16 :goto_18

    :cond_24
    move v12, v13

    move-object/from16 v5, v33

    move/from16 v8, v22

    goto :goto_13

    :cond_25
    move v12, v13

    move-object/from16 v5, v33

    const-string v2, "_vs"

    .line 138
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 139
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/s1;

    move-object/from16 v10, v29

    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v2

    if-nez v2, :cond_29

    if-eqz v18, :cond_27

    .line 141
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v20

    sub-long v13, v13, v20

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v2, v13, v8

    if-gtz v2, :cond_27

    .line 142
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/u5;->r()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/r1;

    .line 143
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/o9;->J(Lcom/google/android/gms/internal/measurement/r1;Lcom/google/android/gms/internal/measurement/r1;)Z

    move-result v8

    if-eqz v8, :cond_26

    move/from16 v8, v22

    .line 144
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/measurement/z1;->q0(ILcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;

    const/4 v2, 0x0

    const/16 v18, 0x0

    goto :goto_14

    :cond_26
    move/from16 v8, v22

    move-object v2, v3

    move/from16 v12, v17

    :goto_14
    move-object/from16 v20, v2

    goto :goto_15

    :cond_27
    move/from16 v8, v22

    move-object/from16 v20, v3

    move/from16 v12, v17

    :cond_28
    :goto_15
    move-object/from16 v14, v24

    move-object/from16 v11, v25

    goto/16 :goto_18

    :cond_29
    move/from16 v8, v22

    goto :goto_15

    :cond_2a
    move/from16 v8, v22

    move-object/from16 v10, v29

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 146
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/c3;->l0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v2, v9, v11}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "_ab"

    .line 147
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 148
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v2

    if-nez v2, :cond_28

    if-eqz v18, :cond_28

    .line 150
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v26

    sub-long v13, v13, v26

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v26, 0xfa0

    cmp-long v2, v13, v26

    if-gtz v2, :cond_28

    .line 151
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/u5;->r()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/r1;

    .line 152
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/o9;->K(Lcom/google/android/gms/internal/measurement/r1;Lcom/google/android/gms/internal/measurement/r1;)V

    .line 153
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 154
    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->a(Z)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 155
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 156
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/s1;

    move-object/from16 v11, v25

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v9

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 157
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 158
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/s1;

    move-object/from16 v14, v24

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v13

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 159
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/s1;

    const-string v7, "_si"

    invoke-static {v15, v7}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v7

    if-eqz v9, :cond_2b

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/w1;->D()Ljava/lang/String;

    move-result-object v9

    goto :goto_16

    :cond_2b
    const-string v9, ""

    .line 161
    :goto_16
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2c

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 162
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 163
    invoke-static {v3, v11, v9}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    if-eqz v13, :cond_2d

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/w1;->D()Ljava/lang/String;

    move-result-object v9

    goto :goto_17

    :cond_2d
    const-string v9, ""

    .line 164
    :goto_17
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2e

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 165
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 166
    invoke-static {v3, v14, v9}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2e
    if-eqz v7, :cond_2f

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 167
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    const-string v9, "_si"

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/w1;->F()J

    move-result-wide v24

    .line 168
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v9, v7}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_2f
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/measurement/z1;->q0(ILcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;

    const/16 v18, 0x0

    :goto_18
    if-nez v16, :cond_32

    .line 170
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 171
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/r1;->v()I

    move-result v2

    if-nez v2, :cond_30

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v4, "Engagement event does not contain any parameters. appId"

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 174
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 175
    invoke-virtual {v2, v4, v7}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    .line 176
    :cond_30
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 177
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 178
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v2, v10}, Lcom/google/android/gms/measurement/internal/q9;->k(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_31

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v4, "Engagement event does not include duration. appId"

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 181
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 182
    invoke-virtual {v2, v4, v7}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    .line 183
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long v9, v31, v9

    move-wide/from16 v31, v9

    .line 184
    :cond_32
    :goto_19
    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/n9;->c:Ljava/util/List;

    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/s1;

    move/from16 v7, v28

    invoke-interface {v2, v7, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v17, v17, 0x1

    .line 186
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/z1;->r0(Lcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;

    move v10, v12

    :goto_1a
    add-int/lit8 v13, v7, 0x1

    move-object v7, v5

    move-object v3, v11

    move-object v2, v14

    move/from16 v9, v16

    move-object/from16 v4, v23

    move-object/from16 v5, v30

    move-wide/from16 v15, v31

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_33
    move-object v5, v7

    move-object v10, v14

    move-wide/from16 v31, v15

    move/from16 v16, v9

    if-eqz v16, :cond_38

    move/from16 v3, v17

    move-wide/from16 v15, v31

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v3, :cond_37

    .line 187
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/z1;->p0(I)Lcom/google/android/gms/internal/measurement/s1;

    move-result-object v7

    .line 188
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/s1;->D()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 189
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 190
    invoke-static {v7, v12}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v8

    if-eqz v8, :cond_34

    .line 191
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/z1;->u0(I)Lcom/google/android/gms/internal/measurement/z1;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_34
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 192
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 193
    invoke-static {v7, v10}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v7

    if-eqz v7, :cond_36

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/w1;->E()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/w1;->F()J

    move-result-wide v7

    .line 194
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_1c

    :cond_35
    const/4 v7, 0x0

    :goto_1c
    if-eqz v7, :cond_36

    .line 195
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v13, 0x0

    cmp-long v11, v8, v13

    if-lez v11, :cond_36

    .line 196
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v15, v7

    :cond_36
    :goto_1d
    const/4 v7, 0x1

    add-int/2addr v2, v7

    goto :goto_1b

    :cond_37
    move-wide v2, v15

    goto :goto_1e

    :cond_38
    move-wide/from16 v2, v31

    :goto_1e
    const/4 v4, 0x0

    .line 197
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/o9;->I(Lcom/google/android/gms/internal/measurement/z1;JZ)V

    .line 198
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->n0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v8, "_se"

    if-eqz v7, :cond_3a

    :try_start_7
    const-string v7, "_s"

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/s1;

    .line 199
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/s1;->D()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 200
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 201
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/i;->S(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    const-string v4, "_sid"

    .line 203
    invoke-static {v5, v4}, Lcom/google/android/gms/measurement/internal/q9;->J(Lcom/google/android/gms/internal/measurement/z1;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3b

    const/4 v4, 0x1

    .line 204
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/o9;->I(Lcom/google/android/gms/internal/measurement/z1;JZ)V

    goto :goto_1f

    .line 205
    :cond_3b
    invoke-static {v5, v8}, Lcom/google/android/gms/measurement/internal/q9;->J(Lcom/google/android/gms/internal/measurement/z1;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3c

    .line 206
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/z1;->C0(I)Lcom/google/android/gms/internal/measurement/z1;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 209
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 210
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    :cond_3c
    :goto_1f
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 212
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 213
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    const-string v4, "Checking account type status for ad personalization signals"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 215
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 216
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/k4;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 217
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 218
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 219
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->G()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 220
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m;->q()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 222
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    const-string v4, "Turning off ad personalization due to account type"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k2;->J()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v3

    move-object/from16 v4, v23

    .line 225
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/j2;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/j2;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 226
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->o()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/j2;->t(J)Lcom/google/android/gms/internal/measurement/j2;

    const-wide/16 v7, 0x1

    .line 228
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/measurement/j2;->y(J)Lcom/google/android/gms/internal/measurement/j2;

    .line 229
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/k2;

    const/4 v3, 0x0

    .line 230
    :goto_20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->w0()I

    move-result v7

    if-ge v3, v7, :cond_3e

    .line 231
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/z1;->x0(I)Lcom/google/android/gms/internal/measurement/k2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/k2;->C()Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 233
    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/internal/measurement/z1;->y0(ILcom/google/android/gms/internal/measurement/k2;)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_21

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 234
    :cond_3e
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/z1;->z0(Lcom/google/android/gms/internal/measurement/k2;)Lcom/google/android/gms/internal/measurement/z1;

    :cond_3f
    :goto_21
    const-wide v2, 0x7fffffffffffffffL

    .line 235
    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/z1;->F0(J)Lcom/google/android/gms/internal/measurement/z1;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/z1;->H0(J)Lcom/google/android/gms/internal/measurement/z1;

    const/4 v2, 0x0

    .line 236
    :goto_22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->o0()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 237
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/z1;->p0(I)Lcom/google/android/gms/internal/measurement/s1;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/s1;->F()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->E0()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gez v4, :cond_40

    .line 239
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/s1;->F()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/z1;->F0(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 240
    :cond_40
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/s1;->F()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->G0()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-lez v4, :cond_41

    .line 241
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/s1;->F()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/z1;->H0(J)Lcom/google/android/gms/internal/measurement/z1;

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 242
    :cond_42
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->Z()Lcom/google/android/gms/internal/measurement/z1;

    .line 243
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->V()Lcom/google/android/gms/internal/measurement/z1;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o9;->g:Lcom/google/android/gms/measurement/internal/ja;

    .line 244
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 245
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v8

    .line 246
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->n0()Ljava/util/List;

    move-result-object v9

    .line 247
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->v0()Ljava/util/List;

    move-result-object v10

    .line 248
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->E0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 249
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->G0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 250
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/ja;->k(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 251
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/z1;->U(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/z1;

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/e;->G(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    new-instance v2, Ljava/util/HashMap;

    .line 253
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 254
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/u9;->i0()Ljava/security/SecureRandom;

    move-result-object v4

    const/4 v7, 0x0

    .line 256
    :goto_23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/z1;->o0()I

    move-result v8

    if-ge v7, v8, :cond_58

    .line 257
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/z1;->p0(I)Lcom/google/android/gms/internal/measurement/s1;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/x5;->t()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/r1;

    .line 258
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v10, "_sr"

    if-eqz v9, :cond_47

    :try_start_8
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 259
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 260
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/s1;

    const-string v11, "_en"

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/q9;->k(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 261
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/o;

    if-nez v11, :cond_43

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 262
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 263
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 264
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/i;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v11

    if-eqz v11, :cond_43

    .line 265
    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    if-eqz v11, :cond_46

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->i:Ljava/lang/Long;

    if-nez v9, :cond_46

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->j:Ljava/lang/Long;

    if-eqz v9, :cond_44

    .line 266
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-lez v9, :cond_44

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 267
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->j:Ljava/lang/Long;

    .line 268
    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_44
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->k:Ljava/lang/Boolean;

    if-eqz v9, :cond_45

    .line 269
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_45

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 270
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    const-string v9, "_efs"

    const-wide/16 v10, 0x1

    .line 271
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    :cond_45
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/s1;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_46
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/z1;->q0(ILcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;

    :goto_24
    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v20, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_2f

    :cond_47
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 274
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 275
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v11

    const-string v12, "measurement.account.time_zone_offset_minutes"

    .line 276
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/k4;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 277
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v13, :cond_48

    .line 278
    :try_start_9
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_25

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 279
    :try_start_a
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 280
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    .line 281
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    const-string v13, "Unable to parse timezone offset. appId"

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 282
    invoke-virtual {v9, v13, v11, v12}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    const-wide/16 v11, 0x0

    .line 283
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/u9;->P(JJ)J

    move-result-wide v13

    .line 284
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/s1;

    move-wide/from16 v17, v11

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    .line 285
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4b

    .line 286
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/s1;->A()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/w1;

    move-object/from16 v16, v9

    .line 287
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/w1;->B()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 288
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/w1;->F()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    goto :goto_27

    :cond_49
    const/4 v9, 0x1

    goto :goto_28

    :cond_4a
    move-object/from16 v9, v16

    goto :goto_26

    :cond_4b
    :goto_27
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 289
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 290
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/k4;->s(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    :goto_28
    if-gtz v9, :cond_4c

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v10

    .line 292
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v10

    const-string v11, "Sample rate must be positive. event, rate"

    .line 293
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/s1;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/z1;->q0(ILcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;

    goto/16 :goto_24

    .line 296
    :cond_4c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/o;

    if-nez v11, :cond_4d

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 297
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 298
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v12, v15}, Lcom/google/android/gms/measurement/internal/i;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v11

    if-nez v11, :cond_4d

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v11

    .line 300
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v11

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 301
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v20, v13

    .line 302
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v13

    .line 303
    invoke-virtual {v11, v12, v15, v13}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lcom/google/android/gms/measurement/internal/o;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 304
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v29

    .line 305
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v30

    const-wide/16 v31, 0x1

    const-wide/16 v33, 0x1

    const-wide/16 v35, 0x1

    .line 306
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v37

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v28, v11

    invoke-direct/range {v28 .. v44}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_29

    :cond_4d
    move-wide/from16 v20, v13

    :goto_29
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 307
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 308
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/s1;

    const-string v13, "_eid"

    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/q9;->k(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_4e

    const/4 v13, 0x1

    goto :goto_2a

    :cond_4e
    const/4 v13, 0x0

    .line 309
    :goto_2a
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    if-ne v9, v14, :cond_51

    .line 310
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/s1;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_50

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->i:Ljava/lang/Long;

    if-nez v9, :cond_4f

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->j:Ljava/lang/Long;

    if-nez v9, :cond_4f

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->k:Ljava/lang/Boolean;

    if-eqz v9, :cond_50

    :cond_4f
    const/4 v9, 0x0

    .line 312
    invoke-virtual {v11, v9, v9, v9}, Lcom/google/android/gms/measurement/internal/o;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v10

    .line 313
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    :cond_50
    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/measurement/z1;->q0(ILcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;

    goto/16 :goto_24

    .line 315
    :cond_51
    invoke-virtual {v4, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_53

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 316
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    int-to-long v14, v9

    .line 317
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/s1;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_52

    const/4 v10, 0x0

    .line 320
    invoke-virtual {v11, v10, v9, v10}, Lcom/google/android/gms/measurement/internal/o;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v11

    .line 321
    :cond_52
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v9

    .line 322
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v12

    move-wide/from16 v14, v20

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/o;->b(JJ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v10

    .line 323
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v20, v6

    const-wide/16 v5, 0x1

    goto/16 :goto_2e

    :cond_53
    move-object/from16 v16, v4

    move-wide/from16 v14, v20

    .line 324
    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/o;->h:Ljava/lang/Long;

    if-eqz v4, :cond_54

    .line 325
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v33, v5

    move-object/from16 v20, v6

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    goto :goto_2b

    .line 326
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v4

    move-object/from16 v33, v5

    move-object/from16 v20, v6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->K()J

    move-result-wide v5

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move-wide/from16 v11, v17

    invoke-virtual {v4, v5, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/u9;->P(JJ)J

    move-result-wide v17

    :goto_2b
    cmp-long v4, v17, v14

    if-eqz v4, :cond_56

    .line 327
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 328
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    const-string v4, "_efs"

    const-wide/16 v5, 0x1

    .line 329
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v4, v11}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 330
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    int-to-long v11, v9

    .line 331
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v8, v10, v4}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/s1;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_55

    .line 334
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v11, v23

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v4, v9}, Lcom/google/android/gms/measurement/internal/o;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v11

    goto :goto_2c

    :cond_55
    move-object/from16 v11, v23

    .line 335
    :goto_2c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->I()J

    move-result-wide v9

    invoke-virtual {v11, v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/o;->b(JJ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v9

    .line 337
    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_56
    move-object/from16 v11, v23

    const-wide/16 v5, 0x1

    .line 338
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 339
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v21

    const/4 v9, 0x0

    invoke-virtual {v11, v12, v9, v9}, Lcom/google/android/gms/measurement/internal/o;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v10

    .line 340
    invoke-interface {v2, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    :goto_2d
    move-object/from16 v4, v33

    .line 341
    :goto_2e
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/z1;->q0(ILcom/google/android/gms/internal/measurement/r1;)Lcom/google/android/gms/internal/measurement/z1;

    :goto_2f
    add-int/lit8 v7, v7, 0x1

    move-object v5, v4

    move-object/from16 v4, v16

    move-object/from16 v6, v20

    goto/16 :goto_23

    :cond_58
    move-object v4, v5

    move-object/from16 v20, v6

    .line 342
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->o0()I

    move-result v6

    if-ge v5, v6, :cond_59

    .line 343
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->t0()Lcom/google/android/gms/internal/measurement/z1;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/z1;->s0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/z1;

    .line 344
    :cond_59
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 345
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 346
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/o;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/i;->R(Lcom/google/android/gms/measurement/internal/o;)V

    goto :goto_30

    :cond_5a
    move-object/from16 v2, v20

    goto :goto_31

    :cond_5b
    move-object v4, v5

    move-object v2, v6

    :goto_31
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 347
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 348
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 349
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v5

    if-nez v5, :cond_5c

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v5

    .line 351
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v5

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 352
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 353
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_36

    .line 354
    :cond_5c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->o0()I

    move-result v6

    if-lez v6, :cond_61

    .line 355
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d5;->c0()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_5d

    .line 356
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/z1;->K0(J)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_32

    .line 357
    :cond_5d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->L0()Lcom/google/android/gms/internal/measurement/z1;

    .line 358
    :goto_32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d5;->a0()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_5e

    goto :goto_33

    :cond_5e
    move-wide v6, v8

    :goto_33
    cmp-long v8, v6, v10

    if-eqz v8, :cond_5f

    .line 359
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/measurement/z1;->I0(J)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_34

    .line 360
    :cond_5f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->J0()Lcom/google/android/gms/internal/measurement/z1;

    .line 361
    :goto_34
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d5;->n()V

    .line 362
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d5;->i()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/z1;->N(I)Lcom/google/android/gms/internal/measurement/z1;

    .line 363
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->E0()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/d5;->b0(J)V

    .line 364
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->G0()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/d5;->d0(J)V

    .line 365
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/d5;->C()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 366
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/measurement/z1;->O(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_35

    .line 367
    :cond_60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->Q()Lcom/google/android/gms/internal/measurement/z1;

    .line 368
    :goto_35
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 369
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 370
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/i;->d0(Lcom/google/android/gms/measurement/internal/d5;)V

    .line 371
    :cond_61
    :goto_36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->o0()I

    move-result v5

    if-lez v5, :cond_65

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 372
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/s4;->c()Lcom/google/android/gms/measurement/internal/ka;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 373
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 374
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/k4;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/g1;

    move-result-object v5

    if-eqz v5, :cond_63

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/g1;->A()Z

    move-result v6

    if-nez v6, :cond_62

    goto :goto_37

    .line 375
    :cond_62
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/g1;->B()J

    move-result-wide v5

    .line 376
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/z1;->a0(J)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_38

    .line 377
    :cond_63
    :goto_37
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 378
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/a2;->P()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_64

    const-wide/16 v5, -0x1

    .line 379
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/z1;->a0(J)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_38

    .line 380
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v5

    .line 381
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v5

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/n9;->a:Lcom/google/android/gms/internal/measurement/a2;

    .line 382
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 383
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    :goto_38
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 385
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 386
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/a2;

    move/from16 v8, v19

    invoke-virtual {v5, v4, v8}, Lcom/google/android/gms/measurement/internal/i;->h0(Lcom/google/android/gms/internal/measurement/a2;Z)Z

    :cond_65
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 387
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/n9;->b:Ljava/util/List;

    .line 388
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 390
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    .line 391
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 392
    :goto_39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_67

    if-eqz v6, :cond_66

    const-string v7, ","

    .line 393
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_66
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_67
    const-string v6, ")"

    .line 395
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 397
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 398
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_68

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 399
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    .line 400
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 401
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 402
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 403
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_68
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 404
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 405
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v5, 0x2

    :try_start_b
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 406
    invoke-virtual {v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3a

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 407
    :try_start_c
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 408
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 410
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    :goto_3a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 412
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 413
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 414
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 415
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    const/4 v2, 0x1

    return v2

    .line 416
    :cond_69
    :goto_3b
    :try_start_d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 417
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 418
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 419
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 420
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 421
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 422
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 423
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 424
    throw v2
.end method

.method private final I(Lcom/google/android/gms/internal/measurement/z1;JZ)V
    .locals 10

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    goto :goto_0

    :cond_0
    const-string v1, "_se"

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/i;->U(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s9;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/s9;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/s9;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    .line 10
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 11
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k2;->J()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/j2;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/j2;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/j2;->t(J)Lcom/google/android/gms/internal/measurement/j2;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/j2;->y(J)Lcom/google/android/gms/internal/measurement/j2;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/k2;

    .line 16
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/q9;->J(Lcom/google/android/gms/internal/measurement/z1;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 17
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/z1;->y0(ILcom/google/android/gms/internal/measurement/k2;)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/z1;->z0(Lcom/google/android/gms/internal/measurement/k2;)Lcom/google/android/gms/internal/measurement/z1;

    :goto_3
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 21
    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/i;->T(Lcom/google/android/gms/measurement/internal/s9;)Z

    if-eq v0, p4, :cond_4

    const-string p1, "lifetime"

    goto :goto_4

    :cond_4
    const-string p1, "session-scoped"

    .line 22
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    iget-object p3, v9, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 24
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final J(Lcom/google/android/gms/internal/measurement/r1;Lcom/google/android/gms/internal/measurement/r1;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w1;->D()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/s1;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/w1;->D()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/o9;->K(Lcom/google/android/gms/internal/measurement/r1;Lcom/google/android/gms/internal/measurement/r1;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final K(Lcom/google/android/gms/internal/measurement/r1;Lcom/google/android/gms/internal/measurement/r1;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r1;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w1;->E()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w1;->F()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w1;->F()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/q9;->N(Lcom/google/android/gms/internal/measurement/s1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/w1;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w1;->F()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/w1;->F()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    const-wide/16 v0, 0x1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/q9;->L(Lcom/google/android/gms/internal/measurement/r1;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final L()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->i0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final M()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/o9;->o:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-wide/32 v1, 0x36ee80

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/o9;->o:J

    sub-long/2addr v5, v7

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 8
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->X()Lcom/google/android/gms/measurement/internal/w3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w3;->b()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->f:Lcom/google/android/gms/measurement/internal/c9;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c9;->l()V

    return-void

    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/o9;->o:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->o()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->L()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    .line 13
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    .line 15
    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->B:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 16
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->r()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 18
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->j0()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :cond_4
    :goto_0
    if-eqz v10, :cond_6

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->D()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->w:Lcom/google/android/gms/measurement/internal/a3;

    .line 23
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->v:Lcom/google/android/gms/measurement/internal/a3;

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    .line 26
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->u:Lcom/google/android/gms/measurement/internal/a3;

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 28
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 29
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/l8;->i:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a4;->a()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/l8;->j:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/a4;->a()J

    move-result-wide v15

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 31
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    move/from16 v17, v10

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->n()J

    move-result-wide v9

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    move-wide/from16 v18, v7

    .line 34
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->p()J

    move-result-wide v6

    .line 35
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_8

    :cond_7
    move-wide v7, v3

    goto/16 :goto_3

    :cond_8
    sub-long/2addr v5, v1

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v13, v1

    .line 37
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sub-long/2addr v15, v1

    .line 38
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v1, v9

    sub-long/2addr v1, v7

    .line 39
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v7, v5, v18

    if-eqz v17, :cond_9

    cmp-long v13, v1, v3

    if-lez v13, :cond_9

    .line 40
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v11

    :cond_9
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 41
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 42
    invoke-virtual {v13, v1, v2, v11, v12}, Lcom/google/android/gms/measurement/internal/q9;->F(JJ)Z

    move-result v13

    if-nez v13, :cond_a

    add-long v7, v1, v11

    :cond_a
    cmp-long v1, v9, v3

    if-eqz v1, :cond_b

    cmp-long v1, v9, v5

    if-ltz v1, :cond_b

    const/4 v1, 0x0

    .line 43
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    const/16 v2, 0x14

    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->D:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v6, 0x0

    .line 44
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    sget-object v2, Lcom/google/android/gms/measurement/internal/c3;->C:Lcom/google/android/gms/measurement/internal/a3;

    .line 46
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v1

    mul-long v5, v5, v12

    add-long/2addr v7, v5

    cmp-long v2, v7, v9

    if-gtz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    :goto_3
    cmp-long v1, v7, v3

    if-eqz v1, :cond_f

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/measurement/internal/u3;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u3;->k()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 50
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/l8;->h:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/a4;->a()J

    move-result-wide v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->s:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v6, 0x0

    .line 52
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 53
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 54
    invoke-virtual {v9, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/q9;->F(JJ)Z

    move-result v9

    if-nez v9, :cond_c

    add-long/2addr v1, v5

    .line 55
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 56
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->X()Lcom/google/android/gms/measurement/internal/w3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w3;->b()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    sub-long/2addr v7, v1

    cmp-long v1, v7, v3

    if-gtz v1, :cond_d

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    sget-object v1, Lcom/google/android/gms/measurement/internal/c3;->x:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 60
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/l8;->i:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    .line 61
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->f:Lcom/google/android/gms/measurement/internal/c9;

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 63
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/c9;->k(J)V

    return-void

    .line 64
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->X()Lcom/google/android/gms/measurement/internal/w3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w3;->a()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->f:Lcom/google/android/gms/measurement/internal/c9;

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c9;->l()V

    return-void

    .line 68
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->X()Lcom/google/android/gms/measurement/internal/w3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w3;->b()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->f:Lcom/google/android/gms/measurement/internal/c9;

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c9;->l()V

    return-void

    .line 72
    :cond_10
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->X()Lcom/google/android/gms/measurement/internal/w3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w3;->b()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->f:Lcom/google/android/gms/measurement/internal/c9;

    .line 74
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c9;->l()V

    return-void
.end method

.method private final N()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/o9;->s:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/o9;->t:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->p:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->p:Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/o9;->s:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/o9;->t:Z

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    .line 10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 11
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final O(Lcom/google/android/gms/measurement/internal/d5;)Ljava/lang/Boolean;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/k/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/k/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/k/b;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/k/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/k/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/k/b;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->e0()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 12
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->e0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/o9;->O(Lcom/google/android/gms/measurement/internal/d5;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    .line 8
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 9
    :cond_2
    :goto_0
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzp;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->Q()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->e0()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v6

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->i0()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->k0()J

    move-result-wide v9

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->b()J

    move-result-wide v15

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->f()Z

    move-result v13

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->Y()Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->E()J

    move-result-wide v23

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->G()Z

    move-result v21

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->S()Ljava/lang/String;

    move-result-object v25

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->I()Ljava/lang/Boolean;

    move-result-object v26

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->d()J

    move-result-wide v27

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->K()Ljava/util/List;

    move-result-object v29

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/c3;->i0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/d5;->U()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_1

    :cond_3
    move-object/from16 v31, v3

    .line 26
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v11, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v1, v3, v11}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, ""

    :goto_2
    move-object/from16 v32, v1

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v15

    move-object/from16 v15, v17

    move-wide/from16 v16, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-wide/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v28, v31

    move-object/from16 v29, v32

    .line 28
    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    .line 29
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v4, "No app data available; dropping"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method private final Q(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/c3;->i0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->x:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 5
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2
.end method

.method private static final R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e9;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final A(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V

    return-void
.end method

.method public final C()Lcom/google/android/gms/measurement/internal/o3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    return-object v0
.end method

.method protected final S()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->k()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l8;->i:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l8;->i:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V

    return-void
.end method

.method public final T()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public final U()Lcom/google/android/gms/measurement/internal/k4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    return-object v0
.end method

.method public final V()Lcom/google/android/gms/measurement/internal/u3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/measurement/internal/u3;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    return-object v0
.end method

.method public final W()Lcom/google/android/gms/measurement/internal/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    return-object v0
.end method

.method public final X()Lcom/google/android/gms/measurement/internal/w3;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->e:Lcom/google/android/gms/measurement/internal/w3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Y()Lcom/google/android/gms/measurement/internal/ja;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->g:Lcom/google/android/gms/measurement/internal/ja;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    return-object v0
.end method

.method public final Z()Lcom/google/android/gms/measurement/internal/a7;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->i:Lcom/google/android/gms/measurement/internal/a7;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    return-object v0
.end method

.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final a0()Lcom/google/android/gms/measurement/internal/q9;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/p4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    return-object v0
.end method

.method public final b0()Lcom/google/android/gms/measurement/internal/l8;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/ka;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final c0()Lcom/google/android/gms/measurement/internal/j3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v0

    return-object v0
.end method

.method final d(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d0()Lcom/google/android/gms/measurement/internal/u9;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v0

    return-object v0
.end method

.method final e()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/u9;->i0()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    .line 2
    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const-string v0, "%032x"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final e0()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/o9;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final f()V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->c()Lcom/google/android/gms/measurement/internal/ka;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->R()Lcom/google/android/gms/measurement/internal/k8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k8;->o()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    .line 8
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->N()V

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v2, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    goto :goto_0

    .line 11
    :cond_1
    :try_start_2
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/o9;->o:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    goto :goto_0

    .line 13
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->x:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v2, "Uploading requested multiple times"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    goto :goto_0

    .line 15
    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/measurement/internal/u3;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/u3;->k()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v2, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    goto :goto_0

    .line 20
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/c3;->R:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)I

    move-result v0

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/e;->I()J

    move-result-wide v10

    sub-long v10, v4, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_5

    .line 23
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/o9;->H(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l8;->i:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/a4;->a()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_6

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v10

    .line 27
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 28
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->i0()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_29

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/o9;->z:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_a

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 32
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 33
    :try_start_6
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "select rowid from raw_events order by rowid desc limit 1;"

    .line 34
    invoke-virtual {v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 35
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_7

    .line 36
    :goto_2
    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_4

    .line 37
    :cond_7
    :try_start_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v11, v9

    .line 38
    :goto_3
    :try_start_a
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 39
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v10

    .line 40
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v10

    const-string v12, "Error querying raw events"

    invoke-virtual {v10, v12, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v11, :cond_8

    goto :goto_2

    .line 41
    :cond_8
    :goto_4
    :try_start_b
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/o9;->z:J

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v9, v11

    :goto_5
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_9
    throw v0

    .line 43
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/c3;->h:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)I

    move-result v0

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/c3;->i:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)I

    move-result v7

    .line 45
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 46
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 47
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 48
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    if-lez v0, :cond_b

    const/4 v10, 0x1

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    .line 49
    :goto_7
    invoke-static {v10}, Lcom/google/android/gms/common/internal/o;->a(Z)V

    if-lez v7, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    .line 50
    :goto_8
    invoke-static {v10}, Lcom/google/android/gms/common/internal/o;->a(Z)V

    .line 51
    invoke-static {v6}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 52
    :try_start_c
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "rowid"

    const-string v13, "data"

    const-string v14, "retry_count"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v13

    new-array v15, v2, [Ljava/lang/String;

    aput-object v6, v15, v3

    const-string v12, "queue"

    const-string v14, "app_id=?"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid"

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 54
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 55
    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_d

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 57
    :try_start_e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    move-wide/from16 v20, v4

    goto/16 :goto_10

    .line 58
    :cond_d
    :try_start_f
    new-instance v12, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 60
    :goto_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 61
    :try_start_10
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 63
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 64
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-wide/from16 v20, v4

    .line 66
    :goto_a
    :try_start_12
    invoke-virtual {v0, v10}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_10

    .line 67
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 68
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 69
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 70
    :try_start_13
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    array-length v2, v0
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    add-int/2addr v2, v13

    if-le v2, v7, :cond_e

    goto/16 :goto_e

    .line 71
    :cond_e
    :try_start_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/a2;->K0()Lcom/google/android/gms/internal/measurement/z1;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/q9;->I(Lcom/google/android/gms/internal/measurement/x6;[B)Lcom/google/android/gms/internal/measurement/x6;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/z1;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v3, 0x2

    .line 72
    :try_start_15
    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 73
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/z1;->e0(I)Lcom/google/android/gms/internal/measurement/z1;

    .line 74
    :cond_f
    array-length v0, v0

    add-int/2addr v13, v0

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catch_2
    move-exception v0

    .line 76
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 79
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_d

    :cond_10
    const/4 v5, 0x0

    .line 80
    :try_start_16
    invoke-virtual {v3, v10, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-wide/from16 v20, v4

    .line 81
    :goto_b
    :try_start_17
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Failed to ungzip content"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_7
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    move-wide/from16 v20, v4

    .line 85
    :goto_c
    :try_start_18
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 88
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :goto_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-eqz v0, :cond_12

    if-le v13, v7, :cond_11

    goto :goto_e

    :cond_11
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_9

    .line 90
    :cond_12
    :goto_e
    :try_start_19
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    move-object v0, v12

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    move-wide/from16 v20, v4

    goto :goto_f

    :catchall_2
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_1d

    :catch_9
    move-exception v0

    move-wide/from16 v20, v4

    const/4 v11, 0x0

    .line 91
    :goto_f
    :try_start_1a
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 92
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Error querying bundles. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    if-eqz v11, :cond_13

    .line 95
    :try_start_1b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_13
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 99
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 100
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 101
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/a2;

    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/a2;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 103
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/a2;->G()Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_16
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_19

    const/4 v3, 0x0

    .line 104
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_19

    .line 105
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/a2;

    .line 106
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/a2;->G()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    goto :goto_13

    .line 107
    :cond_17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/a2;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x0

    .line 108
    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    :cond_18
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 109
    :cond_19
    :goto_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/y1;->C()Lcom/google/android/gms/internal/measurement/x1;

    move-result-object v2

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/e;->F(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 115
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_1a
    const/4 v5, 0x1

    goto :goto_15

    :cond_1b
    const/4 v5, 0x0

    .line 116
    :goto_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 118
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_16

    :cond_1c
    const/4 v7, 0x0

    goto :goto_17

    :cond_1d
    :goto_16
    const/4 v7, 0x1

    .line 119
    :goto_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 121
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v8

    if-eqz v8, :cond_1e

    goto :goto_18

    :cond_1e
    const/4 v8, 0x0

    goto :goto_19

    :cond_1f
    :goto_18
    const/4 v8, 0x1

    :goto_19
    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v3, :cond_24

    .line 122
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/x5;->t()Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/z1;

    .line 123
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e;->n()J

    const-wide/32 v11, 0x9899

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/z1;->F(J)Lcom/google/android/gms/internal/measurement/z1;

    move-wide/from16 v11, v20

    .line 125
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/z1;->D0(J)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 126
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s4;->c()Lcom/google/android/gms/measurement/internal/ka;

    const/4 v13, 0x0

    .line 127
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/measurement/z1;->T(Z)Lcom/google/android/gms/internal/measurement/z1;

    if-nez v5, :cond_20

    .line 128
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z1;->d0()Lcom/google/android/gms/internal/measurement/z1;

    .line 129
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v14}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v13

    if-eqz v13, :cond_22

    if-nez v7, :cond_21

    .line 131
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z1;->H()Lcom/google/android/gms/internal/measurement/z1;

    .line 132
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z1;->J()Lcom/google/android/gms/internal/measurement/z1;

    :cond_21
    if-nez v8, :cond_22

    .line 133
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/z1;->L()Lcom/google/android/gms/internal/measurement/z1;

    .line 134
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/c3;->X:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v13, v6, v14}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 135
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/a2;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/o4;->i()[B

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 136
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 137
    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/q9;->G([B)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/z1;->j0(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 138
    :cond_23
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/x1;->v(Lcom/google/android/gms/internal/measurement/z1;)Lcom/google/android/gms/internal/measurement/x1;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v11

    goto/16 :goto_1a

    :cond_24
    move-wide/from16 v11, v20

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->y()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 140
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 141
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/y1;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/q9;->v(Lcom/google/android/gms/internal/measurement/y1;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_25
    const/4 v0, 0x0

    :goto_1b
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 143
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 144
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/y1;

    .line 145
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/o4;->i()[B

    move-result-object v14

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->r:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v9, 0x0

    .line 147
    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 148
    :try_start_1c
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->a(Z)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o9;->x:Ljava/util/List;

    if-eqz v7, :cond_26

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    const-string v7, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    goto :goto_1c

    .line 151
    :cond_26
    new-instance v7, Ljava/util/ArrayList;

    .line 152
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Lcom/google/android/gms/measurement/internal/o9;->x:Ljava/util/List;

    .line 153
    :goto_1c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 154
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/l8;->j:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    const-string v4, "?"

    if-lez v3, :cond_27

    const/4 v3, 0x0

    .line 155
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/x1;->t(I)Lcom/google/android/gms/internal/measurement/a2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v4

    .line 156
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v7, v14

    .line 158
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7, v0}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/o9;->t:Z

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/measurement/internal/u3;

    .line 159
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    new-instance v0, Lcom/google/android/gms/measurement/internal/i9;

    .line 160
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/i9;-><init>(Lcom/google/android/gms/measurement/internal/o9;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 162
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    .line 163
    invoke-static {v13}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {v14}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 166
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/t3;

    const/4 v15, 0x0

    move-object v10, v3

    move-object v12, v6

    move-object/from16 v16, v0

    .line 167
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/t3;-><init>(Lcom/google/android/gms/measurement/internal/u3;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/r3;)V

    .line 168
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/p4;->s(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto/16 :goto_21

    .line 169
    :catch_a
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 171
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_21

    :catchall_3
    move-exception v0

    move-object v9, v11

    :goto_1d
    if-eqz v9, :cond_28

    .line 172
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_28
    throw v0

    :cond_29
    move-wide v11, v4

    .line 174
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/o9;->z:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 175
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/e;->I()J

    move-result-wide v3

    sub-long v4, v11, v3

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 178
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->h()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 179
    :try_start_1e
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 180
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 181
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 182
    :try_start_1f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v3, "No expired configs for apps with pending events"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 185
    :goto_1e
    :try_start_20
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    goto :goto_20

    :cond_2a
    const/4 v3, 0x0

    .line 186
    :try_start_21
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    goto :goto_1e

    :catch_b
    move-exception v0

    goto :goto_1f

    :catchall_4
    move-exception v0

    goto :goto_22

    :catch_c
    move-exception v0

    move-object v4, v9

    .line 187
    :goto_1f
    :try_start_22
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 188
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Error selecting expired configs"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    if-eqz v4, :cond_2b

    goto :goto_1e

    .line 190
    :cond_2b
    :goto_20
    :try_start_23
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 191
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 192
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 193
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/o9;->h(Lcom/google/android/gms/measurement/internal/d5;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    :cond_2c
    :goto_21
    const/4 v2, 0x0

    .line 194
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v9, v4

    :goto_22
    if-eqz v9, :cond_2d

    .line 195
    :try_start_24
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_2d
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    .line 197
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/o9;->u:Z

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->N()V

    .line 199
    throw v0
.end method

.method final f0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->A:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    new-instance v1, Landroid/content/ContentValues;

    .line 13
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 14
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f;->d()Ljava/lang/String;

    move-result-object p2

    const-string v3, "consent_state"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v3, "consent_settings"

    const/4 v4, 0x5

    .line 17
    invoke-virtual {p2, v3, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    .line 23
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method final g(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    const/4 p4, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, p4, [B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->x:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->x:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/16 v3, 0xcc

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_6

    const/16 p1, 0xcc

    :cond_1
    if-nez p2, :cond_6

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/l8;->i:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/l8;->j:Lcom/google/android/gms/measurement/internal/a4;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    const-string v4, "Successful upload. Got network response. code, size"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v4, p1, p3}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->M()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 19
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 21
    :try_start_5
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p3

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p3

    const-string v4, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v4, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 25
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 26
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 27
    :cond_3
    throw p3

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->O()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->y:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/measurement/internal/u3;

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/u3;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->L()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->f()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/o9;->z:J

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V

    .line 38
    :goto_1
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/o9;->o:J

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 42
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 43
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/o9;->o:J

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/o9;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 46
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p3

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 49
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/l8;->j:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 50
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l8;->h:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/i;->l(Ljava/util/List;)V

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 54
    :goto_2
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/o9;->t:Z

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->N()V

    return-void

    :catchall_1
    move-exception p1

    .line 56
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/o9;->t:Z

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->N()V

    .line 58
    throw p1
.end method

.method final g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;
    .locals 6

    sget-object v0, Lcom/google/android/gms/measurement/internal/f;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->A:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/f;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "select consent_state from consent_settings where app_id=? limit 1;"

    .line 10
    :try_start_0
    invoke-virtual {v4, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 11
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v0, "G1"

    .line 14
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/o9;->f0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v1, "Database error"

    invoke-virtual {v0, v1, v5, p1}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v3, :cond_1

    .line 20
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_1
    throw p1

    :cond_2
    return-object v0
.end method

.method final h(Lcom/google/android/gms/measurement/internal/d5;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/c3;->i0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->U()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/o9;->i(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/o9;->i(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->k:Lcom/google/android/gms/measurement/internal/g9;

    new-instance v1, Landroid/net/Uri$Builder;

    .line 12
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->Q()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->U()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->S()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->S()Ljava/lang/String;

    move-result-object v3

    .line 22
    :cond_4
    :goto_1
    sget-object v2, Lcom/google/android/gms/measurement/internal/c3;->f:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v4, 0x0

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->g:Lcom/google/android/gms/measurement/internal/a3;

    .line 24
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "config/app/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 25
    :cond_5
    new-instance v3, Ljava/lang/String;

    .line 26
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 27
    :goto_2
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->O()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app_instance_id"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    .line 29
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->n()J

    const-wide/32 v5, 0x9899

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gmp_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 32
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 34
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 37
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/k4;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/g1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 38
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 39
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/k4;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_6

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 41
    new-instance v4, Lb/e/a;

    invoke-direct {v4}, Lb/e/a;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 42
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v10, v4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/o9;->s:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/measurement/internal/u3;

    .line 43
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    new-instance v11, Lcom/google/android/gms/measurement/internal/j9;

    .line 44
    invoke-direct {v11, p0}, Lcom/google/android/gms/measurement/internal/j9;-><init>(Lcom/google/android/gms/measurement/internal/o9;)V

    .line 45
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 46
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    .line 47
    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v11}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/t3;

    const/4 v9, 0x0

    move-object v5, v2

    .line 50
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/t3;-><init>(Lcom/google/android/gms/measurement/internal/u3;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/r3;)V

    .line 51
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/p4;->s(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 52
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 55
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final h0()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/l8;->k:Lcom/google/android/gms/measurement/internal/a4;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a4;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->G()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/u9;->i0()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/l8;->k:Lcom/google/android/gms/measurement/internal/a4;

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method final i(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_1

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    const/16 p2, 0x130

    :cond_1
    if-nez p3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    if-nez v3, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/d5;->m(J)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 13
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 14
    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/i;->d0(Lcom/google/android/gms/measurement/internal/d5;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 17
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/k4;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l8;->j:Lcom/google/android/gms/measurement/internal/a4;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/l8;->h:Lcom/google/android/gms/measurement/internal/a4;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/a4;->b(J)V

    .line 21
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V

    goto/16 :goto_7

    :cond_7
    :goto_1
    const/4 p3, 0x0

    if-eqz p5, :cond_8

    const-string v3, "Last-Modified"

    .line 22
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_2

    :cond_8
    move-object p5, p3

    :goto_2
    if-eqz p5, :cond_9

    .line 23
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 24
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object p5, p3

    :goto_3
    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_a

    goto :goto_5

    .line 25
    :cond_a
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 26
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 27
    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/k4;->p(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_c

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 29
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->O()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/o9;->s:Z

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->N()V

    return-void

    .line 31
    :cond_b
    :goto_5
    :try_start_3
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 32
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 33
    invoke-virtual {p4, p1}, Lcom/google/android/gms/measurement/internal/k4;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/g1;

    move-result-object p4

    if-nez p4, :cond_c

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 34
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 35
    invoke-virtual {p4, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/k4;->p(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_c

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 37
    :cond_c
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/d5;->k(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 38
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 39
    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/i;->d0(Lcom/google/android/gms/measurement/internal/d5;)V

    if-ne p2, v5, :cond_d

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/o3;->r()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 42
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 43
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 46
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :goto_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->c:Lcom/google/android/gms/measurement/internal/u3;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/u3;->k()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->L()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->f()V

    goto :goto_7

    .line 51
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V

    .line 52
    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 53
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 56
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 58
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 59
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 60
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/o9;->s:Z

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/o9;->N()V

    .line 62
    throw p1
.end method

.method final i0(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->e0()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/o9;->O(Lcom/google/android/gms/measurement/internal/d5;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzp;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->Q()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->e0()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v6

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->i0()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->k0()J

    move-result-wide v9

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->b()J

    move-result-wide v11

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->f()Z

    move-result v16

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->Y()Ljava/lang/String;

    move-result-object v17

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->E()J

    move-result-wide v24

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->G()Z

    move-result v22

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->S()Ljava/lang/String;

    move-result-object v26

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->I()Ljava/lang/Boolean;

    move-result-object v27

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->d()J

    move-result-wide v28

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->K()Ljava/util/List;

    move-result-object v30

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/google/android/gms/measurement/internal/c3;->i0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v13, v15, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->U()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v13

    .line 28
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v15, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v2, v13, v15}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    move-object/from16 v31, v2

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v32, v14

    move/from16 v14, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v24

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v29, v1

    move-object/from16 v30, v31

    .line 30
    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/o9;->j0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 32
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final j(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->p:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->p:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->p:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final j0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p3;->a(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/p3;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/p3;->d:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 5
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/i;->u(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/u9;->t(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/e;->l(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/u9;->s(Lcom/google/android/gms/measurement/internal/p3;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/c3;->d0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v1, "_cis"

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v1, "gclid"

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkl;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/o9;->n(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/o9;->k0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method final k()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/o9;->n:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/o9;->n:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->l()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->w:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    const-string v2, "Bad channel to read from"

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 7
    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 8
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->d()Lcom/google/android/gms/measurement/internal/g3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g3;->r()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    if-le v6, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 20
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    if-ge v6, v1, :cond_9

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/o9;->w:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    if-eqz v7, :cond_8

    .line 22
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    .line 23
    :cond_5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 24
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26
    :try_start_1
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/measurement/internal/c3;->r0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-gt v5, v8, :cond_6

    .line 28
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 29
    :cond_6
    invoke-virtual {v7, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 30
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 31
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    .line 35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 37
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 38
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    .line 40
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 42
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method final k0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 5
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 6
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/q9;->M(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    return-void

    .line 11
    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->w:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 12
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->p0()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    .line 14
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzas;

    .line 15
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->f:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzas;->f:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 18
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 19
    :cond_3
    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->M()V

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 22
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v13, 0x1

    cmp-long v9, v11, v5

    if-gez v9, :cond_4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    const-string v5, "Invalid time querying timed out conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 28
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 29
    invoke-virtual {v4, v5, v6, v10}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 31
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 32
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/i;->b0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 33
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v5, :cond_5

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v6

    .line 35
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v6

    const-string v10, "User property timed out"

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 36
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v15

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 37
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 38
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v15

    .line 39
    invoke-virtual {v6, v10, v14, v13, v15}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzaa;->j:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v6, :cond_6

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzas;

    .line 40
    invoke-direct {v10, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/o9;->l0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_6
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 41
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 42
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Lcom/google/android/gms/measurement/internal/i;->Z(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_2

    :cond_7
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 43
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    if-gez v9, :cond_8

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    const-string v5, "Invalid time querying expired conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 49
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 50
    invoke-virtual {v4, v5, v6, v10}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_8
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 52
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v5, v10

    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 53
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/i;->b0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 54
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    .line 55
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v6, :cond_9

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v10

    .line 58
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 59
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v15

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 60
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 61
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v15

    .line 62
    invoke-virtual {v10, v13, v14, v8, v15}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 63
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 64
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v8, v3, v10}, Lcom/google/android/gms/measurement/internal/i;->S(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->n:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v8, :cond_a

    .line 65
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 66
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 67
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v8, v3, v6}, Lcom/google/android/gms/measurement/internal/i;->Z(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto :goto_4

    .line 68
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzas;

    .line 69
    invoke-direct {v6, v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/o9;->l0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_5

    :cond_c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 70
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 71
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 72
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 75
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    if-gez v9, :cond_d

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 76
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v6

    .line 77
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v4

    .line 79
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/j3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 81
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_d
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v5, v6, v3

    .line 83
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v6, v5

    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 84
    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/measurement/internal/i;->b0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 85
    :goto_6
    new-instance v13, Ljava/util/ArrayList;

    .line 86
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzaa;

    if-eqz v14, :cond_e

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    new-instance v15, Lcom/google/android/gms/measurement/internal/s9;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    .line 88
    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    .line 89
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v15

    move-wide v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 90
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 91
    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/i;->T(Lcom/google/android/gms/measurement/internal/s9;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    .line 93
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 94
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    .line 95
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    .line 96
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 97
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    .line 98
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 99
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    .line 100
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    .line 101
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    :goto_8
    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->l:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v4, :cond_10

    .line 103
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkl;

    .line 104
    invoke-direct {v4, v15}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/s9;)V

    iput-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->h:Z

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 105
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 106
    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/i;->X(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    goto/16 :goto_7

    .line 107
    :cond_11
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/o9;->l0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 108
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    .line 109
    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/o9;->l0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_9

    :cond_12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 110
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :catchall_0
    move-exception v0

    .line 114
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 115
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 117
    throw v0
.end method

.method final l()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/c3;->h0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->v:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    .line 9
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 10
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->w:Ljava/nio/channels/FileChannel;

    .line 11
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->v:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    return v1

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method final l0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 6
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 7
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/q9;->M(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    if-eqz v11, :cond_46

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 10
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 11
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/k4;->q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v11, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/j3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 16
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 18
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/k4;->t(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 20
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/k4;->u(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->B:Lcom/google/android/gms/measurement/internal/t9;

    const/16 v3, 0xb

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    const/16 v17, 0x0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->A0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v4, v14, v5}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v18

    const-string v15, "_ev"

    move-object v13, v10

    move v14, v3

    move-object/from16 v16, v2

    .line 24
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/u9;->z(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 25
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 27
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 28
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->l()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/d5;->j()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    .line 32
    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->A:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/o9;->h(Lcom/google/android/gms/measurement/internal/d5;)V

    :cond_3
    return-void

    .line 35
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p3;->a(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/p3;

    move-result-object v2

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v11

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/e;->l(Ljava/lang/String;)I

    move-result v12

    .line 38
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/u9;->s(Lcom/google/android/gms/measurement/internal/p3;I)V

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/o3;->y()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    .line 41
    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v11

    .line 43
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 44
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v12

    .line 45
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/j3;->m()Z

    move-result v16

    if-nez v16, :cond_5

    .line 46
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 47
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "origin="

    .line 49
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Ljava/lang/String;

    .line 50
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",name="

    .line 51
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 52
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/j3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 53
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",params="

    .line 54
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v14, :cond_6

    const/4 v12, 0x0

    goto :goto_1

    .line 55
    :cond_6
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/j3;->m()Z

    move-result v17

    if-nez v17, :cond_7

    .line 56
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 57
    :cond_7
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->p0()Landroid/os/Bundle;

    move-result-object v14

    .line 58
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/j3;->q(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    .line 59
    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    const-string v13, "Logging event"

    .line 61
    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 62
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 63
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/i;->M()V

    .line 64
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    const-string v11, "ecommerce_purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 65
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "refund"

    if-nez v11, :cond_a

    :try_start_1
    const-string v11, "purchase"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 66
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 67
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v11, 0x1

    :goto_4
    const-string v13, "_iap"

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 68
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    goto :goto_6

    :cond_b
    move-wide/from16 v28, v8

    move-object/from16 v30, v15

    :goto_5
    const/4 v8, 0x2

    goto/16 :goto_f

    :cond_c
    :goto_6
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v14, "currency"

    .line 69
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "value"

    if-eqz v11, :cond_f

    :try_start_2
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 70
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->m0(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide v21, 0x412e848000000000L    # 1000000.0

    mul-double v19, v19, v21

    const-wide/16 v23, 0x0

    cmpl-double v11, v19, v23

    if-nez v11, :cond_d

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 71
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->l0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v23, v15

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double v19, v14, v21

    goto :goto_7

    :cond_d
    move-object/from16 v23, v15

    :goto_7
    const-wide/high16 v14, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v11, v19, v14

    if-gtz v11, :cond_e

    const-wide/high16 v14, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v11, v19, v14

    if-ltz v11, :cond_e

    .line 72
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 73
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    neg-long v14, v14

    goto :goto_8

    .line 74
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 76
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 77
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 78
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 80
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 81
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :cond_f
    move-object/from16 v23, v15

    :try_start_3
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 82
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->l0(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 83
    :cond_10
    :goto_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 84
    invoke-virtual {v13, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "[A-Z]{3}"

    .line 85
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "_ltv_"

    .line 86
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_9
    move-object v13, v11

    goto :goto_a

    .line 87
    :cond_11
    new-instance v11, Ljava/lang/String;

    .line 88
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 89
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 90
    invoke-virtual {v11, v10, v13}, Lcom/google/android/gms/measurement/internal/i;->U(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s9;

    move-result-object v11

    if-eqz v11, :cond_13

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    .line 91
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_12

    goto :goto_b

    .line 92
    :cond_12
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v19, Lcom/google/android/gms/measurement/internal/s9;

    move-object/from16 v20, v13

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Ljava/lang/String;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v21

    add-long/2addr v11, v14

    .line 94
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v11, v19

    move-object v12, v10

    move-object/from16 v17, v20

    const/4 v14, 0x1

    const/4 v15, 0x2

    move-wide/from16 v28, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v14, v17

    move-object/from16 v30, v23

    move-wide/from16 v15, v21

    move-object/from16 v17, v24

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v9, v19

    const/4 v8, 0x2

    goto/16 :goto_e

    :cond_13
    :goto_b
    move-wide/from16 v28, v8

    move-object/from16 v17, v13

    move-object/from16 v30, v23

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 95
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 96
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v12

    .line 98
    sget-object v13, Lcom/google/android/gms/measurement/internal/c3;->F:Lcom/google/android/gms/measurement/internal/a3;

    .line 99
    invoke-virtual {v12, v10, v13}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 100
    invoke-static {v10}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 102
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e9;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :try_start_4
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    aput-object v10, v9, v8

    const/16 v16, 0x1

    aput-object v10, v9, v16

    .line 104
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v8, 0x2

    :try_start_5
    aput-object v12, v9, v8

    const-string v12, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 105
    invoke-virtual {v13, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    const/4 v8, 0x2

    :goto_c
    move-object v9, v0

    .line 106
    :try_start_6
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 107
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v11

    .line 108
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v11

    const-string v12, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v9}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    :goto_d
    new-instance v19, Lcom/google/android/gms/measurement/internal/s9;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Ljava/lang/String;

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v20

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v11, v19

    move-object v12, v10

    move-object/from16 v14, v17

    move-wide/from16 v15, v20

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v9, v19

    :goto_e
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 111
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 112
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/i;->T(Lcom/google/android/gms/measurement/internal/s9;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v11

    .line 114
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v11

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 115
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v14

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    .line 116
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    .line 117
    invoke-virtual {v11, v12, v13, v14, v9}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->B:Lcom/google/android/gms/measurement/internal/t9;

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    sget-object v13, Lcom/google/android/gms/measurement/internal/c3;->A0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v13}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v18

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 120
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/u9;->z(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_f

    :cond_14
    move-wide/from16 v28, v8

    move-object/from16 v30, v23

    goto/16 :goto_5

    :cond_15
    :goto_f
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 121
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/u9;->j0(Ljava/lang/String;)Z

    move-result v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    move-object/from16 v12, v30

    .line 122
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v11, :cond_16

    const-wide/16 v16, 0x0

    goto :goto_11

    .line 124
    :cond_16
    new-instance v12, Lcom/google/android/gms/measurement/internal/p;

    .line 125
    invoke-direct {v12, v11}, Lcom/google/android/gms/measurement/internal/p;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    const-wide/16 v16, 0x0

    .line 126
    :cond_17
    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 127
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p;->a()Ljava/lang/String;

    move-result-object v13

    .line 128
    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzaq;->k0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 129
    instance-of v14, v13, [Landroid/os/Parcelable;

    if-eqz v14, :cond_17

    .line 130
    check-cast v13, [Landroid/os/Parcelable;

    array-length v13, v13

    int-to-long v13, v13

    add-long v16, v16, v13

    goto :goto_10

    :cond_18
    :goto_11
    const-wide/16 v23, 0x1

    add-long v15, v16, v23

    .line 131
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 132
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->h0()J

    move-result-wide v12

    const/16 v17, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v10

    move/from16 v18, v9

    move/from16 v19, v20

    move/from16 v20, v22

    .line 134
    invoke-virtual/range {v11 .. v21}, Lcom/google/android/gms/measurement/internal/i;->f0(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v11

    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/g;->b:J

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    .line 136
    sget-object v14, Lcom/google/android/gms/measurement/internal/c3;->l:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    move/from16 v21, v9

    const-wide/16 v8, 0x0

    cmp-long v16, v12, v8

    if-lez v16, :cond_1a

    rem-long/2addr v12, v14

    cmp-long v2, v12, v23

    if-nez v2, :cond_19

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/g;->b:J

    .line 139
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 140
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 141
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 142
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 143
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 144
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :cond_1a
    if-eqz v21, :cond_1c

    :try_start_7
    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/g;->a:J

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    sget-object v14, Lcom/google/android/gms/measurement/internal/c3;->n:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v15, 0x0

    .line 146
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v14, v14

    sub-long/2addr v12, v14

    cmp-long v14, v12, v8

    if-lez v14, :cond_1c

    const-wide/16 v14, 0x3e8

    rem-long/2addr v12, v14

    cmp-long v3, v12, v23

    if-nez v3, :cond_1b

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/g;->a:J

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 150
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->B:Lcom/google/android/gms/measurement/internal/t9;

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/c3;->A0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v18

    const/16 v14, 0x10

    const/16 v17, 0x0

    move-object v13, v10

    move-object/from16 v16, v2

    .line 153
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/u9;->z(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 154
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 155
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 156
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 157
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :cond_1c
    const v12, 0xf4240

    if-eqz v22, :cond_1e

    :try_start_8
    iget-wide v13, v11, Lcom/google/android/gms/measurement/internal/g;->d:J

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v15

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/c3;->m:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)I

    move-result v8

    .line 159
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 160
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v13, v8

    const-wide/16 v8, 0x0

    cmp-long v15, v13, v8

    if-lez v15, :cond_1e

    cmp-long v2, v13, v23

    if-nez v2, :cond_1d

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/g;->d:J

    .line 163
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 164
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 165
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 166
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 167
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :cond_1e
    :try_start_9
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 169
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->p0()Landroid/os/Bundle;

    move-result-object v8

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v9

    const-string v11, "_o"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Ljava/lang/String;

    invoke-virtual {v9, v8, v11, v13}, Lcom/google/android/gms/measurement/internal/u9;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/u9;->H(Ljava/lang/String;)Z

    move-result v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v15, "_r"

    if-eqz v9, :cond_1f

    .line 172
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "_dbg"

    invoke-virtual {v9, v8, v13, v11}, Lcom/google/android/gms/measurement/internal/u9;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v9

    invoke-virtual {v9, v8, v15, v11}, Lcom/google/android/gms/measurement/internal/u9;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    const-string v9, "_s"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    .line 174
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 175
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 176
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 177
    invoke-virtual {v9, v11, v7}, Lcom/google/android/gms/measurement/internal/i;->U(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s9;

    move-result-object v9

    if-eqz v9, :cond_20

    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    .line 178
    instance-of v11, v11, Ljava/lang/Long;

    if-eqz v11, :cond_20

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v11

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    invoke-virtual {v11, v8, v7, v9}, Lcom/google/android/gms/measurement/internal/u9;->y(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 180
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 181
    invoke-static {v10}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 183
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e9;->h()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 184
    :try_start_b
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 185
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/s4;->y()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v11

    sget-object v13, Lcom/google/android/gms/measurement/internal/c3;->q:Lcom/google/android/gms/measurement/internal/a3;

    .line 186
    invoke-virtual {v11, v10, v13}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)I

    move-result v11

    .line 187
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v14, 0x0

    .line 188
    :try_start_c
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 189
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    aput-object v10, v12, v14

    const/4 v13, 0x1

    aput-object v11, v12, v13

    const-string v11, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 190
    invoke-virtual {v9, v6, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    int-to-long v11, v7

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_12

    :catch_3
    move-exception v0

    const/4 v14, 0x0

    :goto_12
    move-object v9, v0

    .line 191
    :try_start_d
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 192
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    .line 193
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    const-string v11, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 194
    invoke-virtual {v7, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x0

    :goto_13
    const-wide/16 v16, 0x0

    cmp-long v7, v11, v16

    if-lez v7, :cond_21

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    .line 196
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 197
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 198
    invoke-virtual {v7, v9, v13, v11}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    new-instance v7, Lcom/google/android/gms/measurement/internal/n;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->f:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    const-wide/16 v18, 0x0

    move-object v11, v7

    const/4 v2, 0x0

    move-object v14, v10

    move-object v2, v15

    move-object v15, v9

    move-wide/from16 v16, v4

    move-object/from16 v20, v8

    .line 199
    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/s4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 200
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 201
    invoke-virtual {v4, v10, v5}, Lcom/google/android/gms/measurement/internal/i;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v4

    if-nez v4, :cond_23

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 202
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 203
    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/i;->s(Ljava/lang/String;)J

    move-result-wide v4

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/e;->m(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v11, v4, v8

    if-ltz v11, :cond_22

    if-eqz v21, :cond_22

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 207
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v5

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 208
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/j3;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/e;->m(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 210
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->B:Lcom/google/android/gms/measurement/internal/t9;

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/c3;->A0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v18

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 213
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/u9;->z(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 214
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 215
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :cond_22
    :try_start_e
    new-instance v4, Lcom/google/android/gms/measurement/internal/o;

    iget-object v13, v7, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/n;->d:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v11, v4

    move-object v12, v10

    move-wide/from16 v20, v8

    .line 216
    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_14

    .line 217
    :cond_23
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/o;->f:J

    .line 218
    invoke-virtual {v7, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/n;->a(Lcom/google/android/gms/measurement/internal/s4;J)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/n;->d:J

    .line 219
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/o;->a(J)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v4

    .line 220
    :goto_14
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 221
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 222
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/i;->R(Lcom/google/android/gms/measurement/internal/o;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 225
    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 227
    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 228
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->a(Z)V

    .line 229
    invoke-static {}, Lcom/google/android/gms/internal/measurement/a2;->K0()Lcom/google/android/gms/internal/measurement/z1;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/z1;->W(I)Lcom/google/android/gms/internal/measurement/z1;

    const-string v8, "android"

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 230
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_24

    .line 231
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->C(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 232
    :cond_24
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_25

    .line 233
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 234
    :cond_25
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 235
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->D(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 236
    :cond_26
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->m:J

    const-wide/32 v10, -0x80000000

    cmp-long v12, v8, v10

    if-eqz v12, :cond_27

    long-to-int v9, v8

    .line 237
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/z1;->Y(I)Lcom/google/android/gms/internal/measurement/z1;

    .line 238
    :cond_27
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->h:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/z1;->E(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 239
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 240
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->S(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 241
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 242
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 243
    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    .line 244
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/f;->c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/f;->k(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    .line 245
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/f;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->m0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 246
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/measurement/internal/c3;->i0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 247
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->R()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2a

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->x:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 248
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->x:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->l0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 249
    :cond_2a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->R()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 250
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->k0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    .line 251
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 252
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    goto :goto_15

    .line 253
    :cond_2b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->R()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 254
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->f0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 255
    :cond_2c
    :goto_15
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2d

    .line 256
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/z1;->M(J)Lcom/google/android/gms/internal/measurement/z1;

    .line 257
    :cond_2d
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->v:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/z1;->i0(J)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 258
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 259
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v9

    .line 260
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/c3;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_31

    .line 261
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_2e

    goto/16 :goto_18

    .line 262
    :cond_2e
    new-instance v14, Ljava/util/ArrayList;

    .line 263
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/google/android/gms/measurement/internal/c3;->Q:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v11, 0x0

    .line 264
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/a3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 265
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "measurement.id."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v12, :cond_2f

    .line 267
    :try_start_f
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2f

    .line 268
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v10, :cond_2f

    iget-object v11, v8, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 270
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v11

    .line 271
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v11

    const-string v12, "Too many experiment IDs. Number of IDs"

    .line 272
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_17

    :catch_4
    move-exception v0

    move-object v11, v0

    .line 273
    :try_start_10
    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 274
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v12

    .line 275
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v12

    const-string v13, "Experiment ID NumberFormatException"

    invoke-virtual {v12, v13, v11}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16

    .line 276
    :cond_30
    :goto_17
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_32

    :cond_31
    :goto_18
    const/4 v14, 0x0

    :cond_32
    if-eqz v14, :cond_33

    .line 277
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/measurement/z1;->h0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/z1;

    .line 278
    :cond_33
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 279
    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    .line 280
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/f;->c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/f;->k(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    .line 281
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 283
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v9

    if-eqz v9, :cond_35

    :cond_34
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 284
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 285
    invoke-virtual {v9, v11, v8}, Lcom/google/android/gms/measurement/internal/l8;->k(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)Landroid/util/Pair;

    move-result-object v9

    .line 286
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_35

    .line 287
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->r:Z

    if-eqz v11, :cond_35

    .line 288
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/measurement/z1;->G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 289
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_35

    .line 290
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/z1;->I(Z)Lcom/google/android/gms/internal/measurement/z1;

    :cond_35
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 291
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    .line 292
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/n5;->j()V

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/z1;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 293
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    .line 294
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/n5;->j()V

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/z1;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 295
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    .line 296
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m;->m()J

    move-result-wide v11

    long-to-int v9, v11

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/z1;->y(I)Lcom/google/android/gms/internal/measurement/z1;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 297
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    .line 298
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m;->n()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/z1;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/c3;->v0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v9

    if-nez v9, :cond_36

    .line 300
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:J

    invoke-virtual {v4, v12, v13}, Lcom/google/android/gms/internal/measurement/z1;->b0(J)Lcom/google/android/gms/internal/measurement/z1;

    :cond_36
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 301
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->i()Z

    move-result v9

    if-eqz v9, :cond_38

    .line 302
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v10}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 303
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    goto :goto_19

    .line 304
    :cond_37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    :goto_19
    const/4 v9, 0x0

    .line 305
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_38

    .line 306
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/z1;->c0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    :cond_38
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 307
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 308
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v9

    if-nez v9, :cond_3d

    new-instance v9, Lcom/google/android/gms/measurement/internal/d5;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 309
    iget-object v13, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-direct {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/d5;-><init>(Lcom/google/android/gms/measurement/internal/s4;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v10}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v12

    if-eqz v12, :cond_39

    .line 311
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/o9;->d(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    goto :goto_1a

    .line 312
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    .line 313
    :goto_1a
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->n:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/d5;->Z(Ljava/lang/String;)V

    .line 314
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/d5;->R(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v10}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 317
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v12

    if-eqz v12, :cond_3a

    goto :goto_1c

    :cond_3a
    :goto_1b
    const-wide/16 v12, 0x0

    goto :goto_1d

    :cond_3b
    :goto_1c
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 318
    iget-object v13, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/l8;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 319
    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/d5;->X(Ljava/lang/String;)V

    goto :goto_1b

    .line 320
    :goto_1d
    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/d5;->h(J)V

    .line 321
    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/d5;->b0(J)V

    .line 322
    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/d5;->d0(J)V

    .line 323
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/d5;->f0(Ljava/lang/String;)V

    .line 324
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->m:J

    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/d5;->h0(J)V

    .line 325
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/d5;->j0(Ljava/lang/String;)V

    .line 326
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->h:J

    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/d5;->a(J)V

    .line 327
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    invoke-virtual {v9, v12, v13}, Lcom/google/android/gms/measurement/internal/d5;->c(J)V

    .line 328
    iget-boolean v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/d5;->g(Z)V

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v11}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v11

    if-nez v11, :cond_3c

    .line 330
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:J

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/d5;->F(J)V

    .line 331
    :cond_3c
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->v:J

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/d5;->e(J)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 332
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 333
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/i;->d0(Lcom/google/android/gms/measurement/internal/d5;)V

    .line 334
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v10

    if-eqz v10, :cond_3e

    .line 336
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 337
    :cond_3e
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d5;->O()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3f

    .line 338
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d5;->O()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->K(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    .line 339
    :cond_3f
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d5;->Y()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_40

    .line 340
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/d5;->Y()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->X(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/z1;

    :cond_40
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 341
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 342
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/i;->V(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x0

    .line 343
    :goto_1e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v14, v8, :cond_41

    .line 344
    invoke-static {}, Lcom/google/android/gms/internal/measurement/k2;->J()Lcom/google/android/gms/internal/measurement/j2;

    move-result-object v8

    .line 345
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/s9;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/j2;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/j2;

    .line 346
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/s9;

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/s9;->d:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/j2;->t(J)Lcom/google/android/gms/internal/measurement/j2;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 347
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 348
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/s9;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/q9;->s(Lcom/google/android/gms/internal/measurement/j2;Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/z1;->A0(Lcom/google/android/gms/internal/measurement/j2;)Lcom/google/android/gms/internal/measurement/z1;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    :cond_41
    :try_start_11
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 350
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 351
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/a2;

    .line 352
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 353
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    .line 354
    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 356
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/o4;->i()[B

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 357
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 358
    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/q9;->G([B)J

    move-result-wide v10

    new-instance v12, Landroid/content/ContentValues;

    .line 359
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 360
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v31

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v15, v30

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "metadata"

    .line 362
    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 363
    :try_start_12
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v13, "raw_events_metadata"
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/4 v5, 0x4

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .line 364
    :try_start_13
    invoke-virtual {v9, v13, v4, v12, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 365
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v5, Lcom/google/android/gms/measurement/internal/p;

    .line 366
    invoke-direct {v5, v4}, Lcom/google/android/gms/measurement/internal/p;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 367
    :cond_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 368
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p;->a()Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    :goto_1f
    const/16 v17, 0x1

    goto :goto_20

    .line 370
    :cond_43
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 371
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 372
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/k4;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 373
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->h0()J

    move-result-wide v19

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v18, v4

    move-object/from16 v21, v5

    invoke-virtual/range {v18 .. v26}, Lcom/google/android/gms/measurement/internal/i;->e0(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v4

    if-eqz v2, :cond_44

    iget-wide v4, v4, Lcom/google/android/gms/measurement/internal/g;->e:J

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/c3;->p:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/measurement/internal/e;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)I

    move-result v2

    int-to-long v8, v2

    cmp-long v2, v4, v8

    if-gez v2, :cond_44

    goto :goto_1f

    :cond_44
    const/16 v17, 0x0

    .line 376
    :goto_20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 377
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    .line 378
    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 379
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/d9;->b:Lcom/google/android/gms/measurement/internal/o9;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/o9;->h:Lcom/google/android/gms/measurement/internal/q9;

    .line 380
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 381
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/q9;->u(Lcom/google/android/gms/measurement/internal/n;)Lcom/google/android/gms/internal/measurement/s1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/o4;->i()[B

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    .line 382
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 383
    invoke-virtual {v4, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 384
    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "timestamp"

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/n;->d:J

    .line 385
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "data"

    .line 387
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "realtime"

    .line 388
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 389
    :try_start_15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v5, 0x0

    .line 390
    invoke-virtual {v2, v6, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_45

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 391
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 392
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 393
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_23

    :cond_45
    const-wide/16 v4, 0x0

    .line 394
    :try_start_16
    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/o9;->o:J

    goto :goto_23

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 395
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 396
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 397
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 398
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_23

    :catch_6
    move-exception v0

    goto :goto_22

    :catch_7
    move-exception v0

    goto :goto_21

    :catch_8
    move-exception v0

    move-object/from16 v16, v4

    :goto_21
    move-object v2, v0

    .line 399
    :try_start_17
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 400
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 401
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    const-string v4, "Error storing raw event metadata. appId"

    .line 402
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/a2;->A()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 403
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    throw v2
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :catch_9
    move-exception v0

    move-object/from16 v16, v4

    :goto_22
    move-object v2, v0

    .line 405
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v3

    const-string v4, "Data loss. Failed to insert raw event metadata. appId"

    .line 407
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/z1;->B()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 408
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 409
    :goto_23
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 410
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 411
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 412
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 413
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 414
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->M()V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    .line 417
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v28

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 418
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 419
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 420
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 421
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 422
    throw v2

    .line 423
    :cond_46
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    return-void
.end method

.method final m(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->x:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->x:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 9
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 24
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/o9;->s(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method

.method final n(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 3
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/o9;->Q(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    return-void

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/u9;->q0(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v8, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v7

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    .line 9
    invoke-virtual {v7, v9, v4, v3}, Lcom/google/android/gms/measurement/internal/u9;->o(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/o9;->B:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/c3;->A0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v12

    const-string v9, "_ev"

    move-object v5, v0

    .line 13
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/u9;->z(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 14
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/u9;->v(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v13

    if-eqz v13, :cond_6

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    .line 17
    invoke-virtual {v7, v8, v4, v3}, Lcom/google/android/gms/measurement/internal/u9;->o(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v15

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 19
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_4

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 20
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v16, v6

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    .line 22
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->B:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/c3;->A0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v17

    const-string v14, "_ev"

    .line 24
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/gms/measurement/internal/u9;->z(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 25
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/u9;->w(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    .line 27
    :cond_7
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    const-string v6, "_sid"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 28
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzkl;->f:J

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzkl;->i:Ljava/lang/String;

    .line 29
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 30
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    const-string v7, "_sno"

    .line 31
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/i;->U(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s9;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    .line 32
    instance-of v10, v7, Ljava/lang/Long;

    if-eqz v10, :cond_8

    .line 33
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_9

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v7

    .line 35
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    const-string v10, "Retrieved last session number from database does not contain a valid (long) value"

    .line 36
    invoke-virtual {v7, v10, v6}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 37
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    const-string v7, "_s"

    .line 38
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/i;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/o;->c:J

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v4

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v4

    .line 41
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "Backfill the session number. Last used session number"

    invoke-virtual {v4, v12, v10}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const-wide/16 v6, 0x0

    .line 42
    :goto_2
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkl;

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "_sno"

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/o9;->n(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_b
    new-instance v4, Lcom/google/android/gms/measurement/internal/s9;

    .line 45
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 46
    invoke-static {v6}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzkl;->i:Ljava/lang/String;

    .line 47
    invoke-static {v6}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzkl;->f:J

    move-object v7, v4

    move-object v13, v3

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 50
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    .line 51
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Setting user property"

    .line 52
    invoke-virtual {v0, v7, v6, v3}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->M()V

    .line 55
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 57
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/i;->T(Lcom/google/android/gms/measurement/internal/s9;)Z

    move-result v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 59
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->N()V

    if-nez v0, :cond_c

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v3, "Too many unique user properties are set. Ignoring user property"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 62
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    .line 64
    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->B:Lcom/google/android/gms/measurement/internal/t9;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/c3;->A0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v14

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 67
    invoke-virtual/range {v7 .. v14}, Lcom/google/android/gms/measurement/internal/u9;->z(Lcom/google/android/gms/measurement/internal/t9;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 68
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :catchall_0
    move-exception v0

    .line 70
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 71
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 73
    throw v0
.end method

.method final o(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/o9;->Q(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    return-void

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkl;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 9
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/o9;->n(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    .line 14
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->M()V

    .line 18
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 20
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/i;->S(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->N()V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v1

    .line 28
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :catchall_0
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 35
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 36
    throw p1
.end method

.method final p()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/o9;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/o9;->q:I

    return-void
.end method

.method final q()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/o9;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/o9;->r:I

    return-void
.end method

.method final r()Lcom/google/android/gms/measurement/internal/s4;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    return-object v0
.end method

.method final s(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "com.android.vending"

    const-string v6, "_pfo"

    const-string v7, "_uwa"

    const-string v0, "app_id=?"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/o9;->Q(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v8

    if-eqz v8, :cond_28

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 6
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 7
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_0

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/d5;->Q()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 10
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/d5;->k(J)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 11
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 12
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/i;->d0(Lcom/google/android/gms/measurement/internal/d5;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->b:Lcom/google/android/gms/measurement/internal/k4;

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 14
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/k4;->n(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-boolean v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    if-nez v8, :cond_1

    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    return-void

    .line 17
    :cond_1
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->p:J

    cmp-long v8, v11, v9

    if-nez v8, :cond_2

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v11

    :cond_2
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 19
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->S()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m;->p()V

    .line 21
    iget v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->q:I

    const/4 v15, 0x1

    if-eqz v8, :cond_3

    if-eq v8, v15, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v13

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    .line 25
    invoke-virtual {v13, v9, v14, v8}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :cond_3
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 26
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/i;->M()V

    :try_start_0
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 28
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 29
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    const-string v13, "_npa"

    .line 30
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/i;->U(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s9;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v10, "auto"

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/s9;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v4, 0x1

    goto :goto_2

    .line 32
    :cond_5
    :goto_0
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/Boolean;

    if-eqz v10, :cond_8

    .line 33
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v19, "_npa"

    .line 34
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v15, v10, :cond_6

    const-wide/16 v20, 0x0

    goto :goto_1

    :cond_6
    const-wide/16 v20, 0x1

    :goto_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v20, "auto"

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const-wide/16 v3, 0x1

    move-object v13, v14

    move-object v3, v14

    const/4 v4, 0x0

    move-object/from16 v14, v19

    const/4 v4, 0x1

    move-wide v15, v11

    move-object/from16 v17, v10

    move-object/from16 v18, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_7

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkl;->g:Ljava/lang/Long;

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 36
    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/o9;->n(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2

    :cond_8
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v4, 0x1

    if-eqz v9, :cond_9

    .line 37
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v14, "_npa"

    const/16 v17, 0x0

    const-string v18, "auto"

    move-object v13, v3

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/o9;->o(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 39
    :cond_9
    :goto_2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 40
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 41
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v10

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->Q()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->S()Ljava/lang/String;

    move-result-object v9

    .line 45
    invoke-virtual {v10, v13, v14, v15, v9}, Lcom/google/android/gms/measurement/internal/u9;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    .line 47
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    const-string v10, "New GMP App Id passed in. Removing cached database data. appId"

    .line 48
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 49
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 50
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    .line 53
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 54
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/i;->P()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-array v13, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const-string v14, "events"

    .line 56
    invoke-virtual {v10, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string v15, "user_attributes"

    .line 57
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    .line 58
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    .line 59
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    .line 60
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    .line 61
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    .line 62
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    .line 63
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    .line 64
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "consent_settings"

    .line 65
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_a

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v10, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v10, v3, v13}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 68
    :try_start_2
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    .line 70
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    const-string v10, "Error deleting application data. appId, error"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 71
    invoke-virtual {v9, v10, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_3
    const/4 v3, 0x0

    :cond_b
    if-eqz v3, :cond_f

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v9

    const-wide/32 v13, -0x80000000

    cmp-long v0, v9, v13

    if-eqz v0, :cond_c

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v9

    move-object/from16 v23, v5

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->m:J

    cmp-long v0, v9, v4

    if-eqz v0, :cond_d

    const/4 v15, 0x1

    goto :goto_4

    :cond_c
    move-object/from16 v23, v5

    :cond_d
    const/4 v15, 0x0

    .line 74
    :goto_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->e0()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-nez v5, :cond_e

    if-eqz v0, :cond_e

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    :goto_5
    or-int/2addr v3, v15

    if-eqz v3, :cond_10

    new-instance v3, Landroid/os/Bundle;

    .line 77
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pv"

    .line 78
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_au"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 80
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/o9;->k0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_6

    :cond_f
    move-object/from16 v23, v5

    .line 81
    :cond_10
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    if-nez v8, :cond_11

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 83
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    const-string v4, "_f"

    .line 84
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/i;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    const/4 v15, 0x0

    goto :goto_7

    .line 85
    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 87
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    const-string v4, "_v"

    .line 88
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/i;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    const/4 v15, 0x1

    :goto_7
    if-nez v0, :cond_26

    const-wide/32 v3, 0x36ee80

    .line 89
    div-long v8, v11, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    mul-long v8, v8, v3

    const-string v3, "_dac"

    const-string v4, "_r"

    const-string v5, "_c"

    const-string v10, "_et"

    if-nez v15, :cond_24

    .line 90
    :try_start_3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v14, "_fot"

    .line 91
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/o9;->n(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->D()Lcom/google/android/gms/measurement/internal/h4;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/gms/measurement/internal/h4;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_12

    goto/16 :goto_9

    .line 96
    :cond_12
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 97
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 98
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/h4;->a()Z

    move-result v9

    if-nez v9, :cond_13

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->s()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v8, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    new-instance v9, Lcom/google/android/gms/measurement/internal/g4;

    .line 100
    invoke-direct {v9, v8, v0}, Lcom/google/android/gms/measurement/internal/g4;-><init>(Lcom/google/android/gms/measurement/internal/h4;Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    new-instance v0, Landroid/content/Intent;

    const-string v13, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 102
    invoke-direct {v0, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    move-object/from16 v15, v23

    .line 103
    invoke-direct {v13, v15, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v13

    .line 104
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    if-nez v13, :cond_14

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->q()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v8, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 107
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_14
    const/4 v14, 0x0

    .line 108
    invoke-virtual {v13, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_17

    .line 109
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_17

    .line 110
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 111
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v13, :cond_19

    .line 112
    iget-object v14, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 113
    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v13, :cond_16

    .line 114
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 115
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/h4;->a()Z

    move-result v13

    if-eqz v13, :cond_16

    new-instance v13, Landroid/content/Intent;

    .line 116
    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->b()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x1

    .line 118
    invoke-virtual {v0, v14, v13, v9, v15}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 119
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    .line 120
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->u()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    const-string v13, "Install Referrer Service is"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v14, "available"

    const-string v15, "not available"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v16, v14

    const/4 v14, 0x1

    if-eq v14, v0, :cond_15

    move-object v14, v15

    goto :goto_8

    :cond_15
    move-object/from16 v14, v16

    .line 121
    :goto_8
    :try_start_6
    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 122
    :try_start_7
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 123
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v8

    .line 124
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v8

    const-string v9, "Exception occurred while binding to Install Referrer Service"

    .line 125
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    .line 127
    :cond_16
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v8, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 130
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->s()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v8, "Play Service for fetching Install Referrer is unavailable on device"

    .line 133
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 134
    :cond_18
    :goto_9
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/h4;->a:Lcom/google/android/gms/measurement/internal/s4;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->q()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v8, "Install Referrer Reporter was called with invalid app package name"

    .line 137
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/m3;->a(Ljava/lang/String;)V

    .line 138
    :cond_19
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    new-instance v8, Landroid/os/Bundle;

    .line 140
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v13, 0x1

    .line 141
    invoke-virtual {v8, v5, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    invoke-virtual {v8, v4, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v4, 0x0

    .line 143
    invoke-virtual {v8, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    invoke-virtual {v8, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v9, v22

    .line 145
    invoke-virtual {v8, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v15, v21

    .line 146
    invoke-virtual {v8, v15, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v4, 0x1

    .line 147
    invoke-virtual {v8, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 148
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->s:Z

    if-eqz v0, :cond_1a

    .line 149
    invoke-virtual {v8, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    :cond_1a
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 151
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 152
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e9;->h()V

    const-string v4, "first_open_count"

    .line 155
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/i;->o(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v0

    const-string v7, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    invoke-virtual {v0, v7, v3}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v22, v10

    :cond_1b
    :goto_b
    const-wide/16 v9, 0x0

    goto/16 :goto_12

    .line 161
    :cond_1c
    :try_start_8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/android/gms/common/k/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/k/b;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/common/k/b;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v21, v15

    goto :goto_c

    :catch_2
    move-exception v0

    .line 164
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v13

    .line 165
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v13

    const-string v14, "Package info is null, first open report might be inaccurate. appId"

    move-object/from16 v21, v15

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 166
    invoke-virtual {v13, v14, v15, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_21

    .line 167
    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-eqz v17, :cond_21

    move-object/from16 v23, v9

    move-object/from16 v22, v10

    .line 168
    iget-wide v9, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v13, v9

    if-eqz v0, :cond_1f

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v9, Lcom/google/android/gms/measurement/internal/c3;->m0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-wide/16 v13, 0x0

    cmp-long v0, v4, v13

    if-nez v0, :cond_1d

    const-wide/16 v13, 0x1

    .line 170
    invoke-virtual {v8, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1d
    :goto_d
    const/4 v15, 0x0

    goto :goto_e

    :cond_1e
    const-wide/16 v13, 0x1

    .line 171
    invoke-virtual {v8, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    :cond_1f
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 172
    :goto_e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v14, "_fi"

    const/4 v7, 0x1

    if-eq v7, v15, :cond_20

    const-wide/16 v15, 0x0

    goto :goto_f

    :cond_20
    const-wide/16 v15, 0x1

    .line 173
    :goto_f
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-object/from16 v7, v21

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/o9;->n(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_10

    :cond_21
    move-object/from16 v23, v9

    move-object/from16 v22, v10

    move-object/from16 v7, v21

    const/4 v10, 0x0

    :goto_10
    :try_start_a
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->a()Landroid/content/Context;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/google/android/gms/common/k/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/k/b;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9}, Lcom/google/android/gms/common/k/b;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_11

    :catch_3
    move-exception v0

    .line 177
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v9

    .line 178
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v9

    const-string v13, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 179
    invoke-virtual {v9, v13, v3, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v9, v10

    :goto_11
    if-eqz v9, :cond_1b

    .line 180
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_22

    move-object/from16 v3, v23

    const-wide/16 v13, 0x1

    .line 181
    invoke-virtual {v8, v3, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 182
    :cond_22
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    const-wide/16 v9, 0x1

    .line 183
    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    :goto_12
    cmp-long v0, v4, v9

    if-ltz v0, :cond_23

    .line 184
    invoke-virtual {v8, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    :cond_23
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_f"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v8}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 186
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/o9;->j0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    move-object/from16 v4, v22

    goto :goto_13

    :cond_24
    move-object/from16 v22, v10

    .line 187
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v14, "_fvt"

    .line 188
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/o9;->n(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    new-instance v0, Landroid/os/Bundle;

    .line 192
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v6, 0x1

    .line 193
    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v4, v22

    .line 195
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    iget-boolean v5, v2, Lcom/google/android/gms/measurement/internal/zzp;->s:Z

    if-eqz v5, :cond_25

    .line 197
    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    :cond_25
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_v"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 199
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/o9;->j0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 200
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/c3;->V:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    .line 201
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    .line 202
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_fr"

    .line 203
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_e"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 204
    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 205
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/o9;->j0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_14

    .line 206
    :cond_26
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->l:Z

    if-eqz v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    .line 207
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_cd"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 209
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/o9;->j0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 210
    :cond_27
    :goto_14
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 211
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 212
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 213
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :catchall_0
    move-exception v0

    .line 215
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 216
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 217
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 218
    throw v0

    :cond_28
    return-void
.end method

.method final t(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/o9;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/o9;->u(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method

.method final u(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/o9;->Q(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->M()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/i;->Y(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 21
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->h:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->g:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->k:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->k:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->i:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->l:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->l:Lcom/google/android/gms/measurement/internal/zzas;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 23
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzkl;->f:J

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkl;->i:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    goto :goto_0

    .line 25
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->i:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 27
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:J

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->i:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Z

    const/4 p1, 0x1

    .line 29
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    new-instance v9, Lcom/google/android/gms/measurement/internal/s9;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->f:J

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/s9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 33
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/i;->T(Lcom/google/android/gms/measurement/internal/s9;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    .line 38
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 39
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/s9;->c:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/s9;->e:Ljava/lang/Object;

    .line 43
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 44
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->l:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->g:J

    .line 45
    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    .line 46
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/measurement/internal/o9;->l0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/i;->X(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 52
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 55
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 58
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->k0()Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/m3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 62
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :catchall_0
    move-exception p1

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 67
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 68
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 69
    throw p1
.end method

.method final v(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/o9;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/o9;->w(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method

.method final w(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/o9;->Q(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->M()V

    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/i;->Y(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->t()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 18
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/i;->Z(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/i;->S(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->n:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzas;->e:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->p0()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->d0()Lcom/google/android/gms/measurement/internal/u9;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->n:Lcom/google/android/gms/measurement/internal/zzas;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->n:Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzas;->g:J

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 27
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/u9;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/o9;->l0(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->H()Lcom/google/android/gms/measurement/internal/j3;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->f:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/j3;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->N()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->O()V

    return-void

    :catchall_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->O()V

    .line 42
    throw p1

    .line 43
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/o9;->y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;

    return-void
.end method

.method public final x()Lcom/google/android/gms/common/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s4;->x()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method final y(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/d5;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->f()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e0()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i;->c0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d5;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/f;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/c3;->y0:Lcom/google/android/gms/measurement/internal/a3;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    .line 10
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/f;->c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/f;->k(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 11
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ""

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/o9;->j:Lcom/google/android/gms/measurement/internal/l8;

    .line 14
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/l8;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/v9;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/c3;->n0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_12

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/measurement/internal/d5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 16
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/d5;-><init>(Lcom/google/android/gms/measurement/internal/s4;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/o9;->d(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/d5;->X(Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/d5;->X(Ljava/lang/String;)V

    goto :goto_3

    .line 24
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    if-eqz v5, :cond_8

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->W()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 28
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/d5;->X(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/o9;->d(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 36
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/o9;->d(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    .line 37
    :cond_9
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->R(Ljava/lang/String;)V

    .line 38
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->T(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/c3;->i0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 40
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->V(Ljava/lang/String;)V

    .line 41
    :cond_a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 42
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->Z(Ljava/lang/String;)V

    .line 43
    :cond_b
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->h:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_c

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->a(J)V

    .line 45
    :cond_c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 46
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->f0(Ljava/lang/String;)V

    .line 47
    :cond_d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->h0(J)V

    .line 48
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->j0(Ljava/lang/String;)V

    .line 50
    :cond_e
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->c(J)V

    .line 51
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->g(Z)V

    .line 52
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 53
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->D(Ljava/lang/String;)V

    .line 54
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/c3;->v0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 55
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->F(J)V

    .line 56
    :cond_10
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->r:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->H(Z)V

    .line 57
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->J(Ljava/lang/Boolean;)V

    .line 58
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->v:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->e(J)V

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->A()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 61
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/i;->d0(Lcom/google/android/gms/measurement/internal/d5;)V

    :cond_11
    return-object v0

    .line 62
    :cond_12
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v6

    invoke-virtual {v6, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 64
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/o9;->g0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    .line 65
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/f;->c(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/f;->k(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    :cond_13
    const/4 v6, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/android/gms/measurement/internal/d5;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/o9;->l:Lcom/google/android/gms/measurement/internal/s4;

    .line 66
    invoke-direct {v0, v6, v2}, Lcom/google/android/gms/measurement/internal/d5;-><init>(Lcom/google/android/gms/measurement/internal/s4;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 69
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/o9;->d(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    .line 70
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 71
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/d5;->X(Ljava/lang/String;)V

    goto :goto_4

    .line 72
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/d5;->X(Ljava/lang/String;)V

    :cond_16
    :goto_4
    const/4 v6, 0x1

    goto :goto_5

    .line 74
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 76
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->f()Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_18
    if-eqz v5, :cond_1a

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 78
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/d5;->X(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 81
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/o9;->d(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    goto :goto_4

    .line 82
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    goto :goto_4

    .line 83
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g9;->a()Z

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 86
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->h()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 87
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/o9;->d(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->P(Ljava/lang/String;)V

    goto :goto_4

    .line 88
    :cond_1b
    :goto_5
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 89
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->R(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 90
    :cond_1c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->S()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 91
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->T(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 92
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ia;->a()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->N()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/c3;->i0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 93
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->x:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->U()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 94
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->V(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 95
    :cond_1e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->n:Ljava/lang/String;

    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 97
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->Z(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 98
    :cond_1f
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->h:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->k0()J

    move-result-wide v10

    cmp-long v3, v1, v10

    if-eqz v3, :cond_20

    .line 99
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->h:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->a(J)V

    const/4 v6, 0x1

    .line 100
    :cond_20
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->e0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 102
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->f0(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 103
    :cond_21
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->m:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->g0()J

    move-result-wide v10

    cmp-long v3, v1, v10

    if-eqz v3, :cond_22

    .line 104
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->m:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->h0(J)V

    const/4 v6, 0x1

    .line 105
    :cond_22
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->i0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 106
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->j0(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 107
    :cond_23
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->b()J

    move-result-wide v10

    cmp-long v3, v1, v10

    if-eqz v3, :cond_24

    .line 108
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->i:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->c(J)V

    const/4 v6, 0x1

    .line 109
    :cond_24
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->f()Z

    move-result v2

    if-eq v1, v2, :cond_25

    .line 110
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->g(Z)V

    const/4 v6, 0x1

    .line 111
    :cond_25
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->j:Ljava/lang/String;

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 113
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->D(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 114
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/c3;->v0:Lcom/google/android/gms/measurement/internal/a3;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/e;->u(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/a3;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 115
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->E()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_27

    .line 116
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->F(J)V

    const/4 v6, 0x1

    .line 117
    :cond_27
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->r:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->G()Z

    move-result v2

    if-eq v1, v2, :cond_28

    .line 118
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->r:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->H(Z)V

    const/4 v6, 0x1

    .line 119
    :cond_28
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->I()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_29

    .line 120
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d5;->J(Ljava/lang/Boolean;)V

    goto :goto_6

    :cond_29
    move v9, v6

    .line 121
    :goto_6
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->v:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_2a

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d5;->d()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2a

    .line 123
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->v:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/d5;->e(J)V

    goto :goto_7

    :cond_2a
    if-eqz v9, :cond_2b

    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/o9;->d:Lcom/google/android/gms/measurement/internal/i;

    .line 124
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o9;->R(Lcom/google/android/gms/measurement/internal/e9;)Lcom/google/android/gms/measurement/internal/e9;

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/i;->d0(Lcom/google/android/gms/measurement/internal/d5;)V

    :cond_2b
    return-object v0
.end method

.method final z(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->b()Lcom/google/android/gms/measurement/internal/p4;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/k9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/k9;-><init>(Lcom/google/android/gms/measurement/internal/o9;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/p4;->n(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/o9;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/o3;->m()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/o3;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 6
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/m3;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
