.class public final Lcom/google/android/gms/measurement/internal/jo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/fo;


# static fields
.field private static volatile k:Lcom/google/android/gms/measurement/internal/jo;


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

.field private final B:Lcom/google/android/gms/measurement/internal/jt;

.field final a:Lcom/google/android/gms/measurement/internal/ej;

.field b:Lcom/google/android/gms/measurement/internal/i;

.field c:Lcom/google/android/gms/measurement/internal/kj;

.field d:Lcom/google/android/gms/measurement/internal/ha;

.field e:Lcom/google/android/gms/measurement/internal/il;

.field final f:Lcom/google/android/gms/measurement/internal/es;

.field g:J

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field j:I

.field private final l:Lcom/google/android/gms/measurement/internal/du;

.field private m:Lcom/google/android/gms/measurement/internal/dw;

.field private n:Lcom/google/android/gms/measurement/internal/jc;

.field private final o:Lcom/google/android/gms/measurement/internal/jq;

.field private final p:Lcom/google/android/gms/measurement/internal/jg;

.field private q:Z

.field private r:Z

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
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jp;Lcom/google/android/gms/measurement/internal/es;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    new-instance p2, Lcom/google/android/gms/measurement/internal/jm;

    .line 1
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/jm;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->B:Lcom/google/android/gms/measurement/internal/jt;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/jp;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 3
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/es;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/es;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jo;->z:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/jg;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/jg;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->p:Lcom/google/android/gms/measurement/internal/jg;

    new-instance p2, Lcom/google/android/gms/measurement/internal/jq;

    .line 5
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/jq;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/je;->w()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    new-instance p2, Lcom/google/android/gms/measurement/internal/du;

    .line 7
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/du;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/je;->w()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->l:Lcom/google/android/gms/measurement/internal/du;

    new-instance p2, Lcom/google/android/gms/measurement/internal/ej;

    .line 9
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/ej;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/je;->w()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->A:Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/jh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/jh;-><init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/jp;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/je;->u()Z

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

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

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

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/jo;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/jo;->k:Lcom/google/android/gms/measurement/internal/jo;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/measurement/internal/jo;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/jo;->k:Lcom/google/android/gms/measurement/internal/jo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/jp;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/jp;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/jp;

    new-instance v1, Lcom/google/android/gms/measurement/internal/jo;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/jo;-><init>(Lcom/google/android/gms/measurement/internal/jp;Lcom/google/android/gms/measurement/internal/es;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/jo;->k:Lcom/google/android/gms/measurement/internal/jo;

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
    sget-object p0, Lcom/google/android/gms/measurement/internal/jo;->k:Lcom/google/android/gms/measurement/internal/jo;

    return-object p0
.end method

.method private a(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->q()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/bv;ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/bv;->a()Ljava/util/List;

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

    check-cast v2, Lcom/google/android/gms/internal/measurement/ca;

    .line 51190
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->e()Lcom/google/android/gms/internal/measurement/bz;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    int-to-long v1, p1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/bz;->a(J)Lcom/google/android/gms/internal/measurement/bz;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ca;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->e()Lcom/google/android/gms/internal/measurement/bz;

    move-result-object v0

    const-string v1, "_ev"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/bz;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/ca;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/bv;->a(Lcom/google/android/gms/internal/measurement/ca;)Lcom/google/android/gms/internal/measurement/bv;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/bv;->a(Lcom/google/android/gms/internal/measurement/ca;)Lcom/google/android/gms/internal/measurement/bv;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/bv;->a()Ljava/util/List;

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

    check-cast v2, Lcom/google/android/gms/internal/measurement/ca;

    .line 51191
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/bv;->b(I)Lcom/google/android/gms/internal/measurement/bv;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/cd;JZ)V
    .locals 10

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    const-string v1, "_lte"

    goto :goto_0

    :cond_0
    const-string v1, "_se"

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/i;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/js;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    if-nez v3, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/js;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v6

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/js;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_2
    :goto_1
    new-instance v9, Lcom/google/android/gms/measurement/internal/js;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v6

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/js;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 9
    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cp;->d()Lcom/google/android/gms/internal/measurement/co;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/co;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/co;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/co;->a(J)Lcom/google/android/gms/internal/measurement/co;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/co;->b(J)Lcom/google/android/gms/internal/measurement/co;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/cp;

    .line 14
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/cd;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 16
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/cd;->a(ILcom/google/android/gms/internal/measurement/cp;)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/cd;->a(Lcom/google/android/gms/internal/measurement/cp;)Lcom/google/android/gms/internal/measurement/cd;

    :goto_3
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 18
    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/js;)Z

    if-eq v0, p4, :cond_4

    const-string p1, "lifetime"

    goto :goto_4

    :cond_4
    const-string p1, "session-scoped"

    .line 19
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 51096
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 20
    iget-object p3, v9, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 21
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private a(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->ag:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->p:Lcom/google/android/gms/measurement/internal/jg;

    new-instance v1, Landroid/net/Uri$Builder;

    .line 9
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->d()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()Z

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 51108
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->ag:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->f()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->e()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->e()Ljava/lang/String;

    move-result-object v2

    .line 17
    :cond_4
    :goto_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/dc;->d:Lcom/google/android/gms/measurement/internal/da;

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/dc;->e:Lcom/google/android/gms/measurement/internal/da;

    .line 19
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "config/app/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 44
    :cond_5
    new-instance v2, Ljava/lang/String;

    .line 19
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_2
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->c()Ljava/lang/String;

    move-result-object v2

    const-string v4, "app_instance_id"

    invoke-virtual {v0, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "platform"

    const-string v4, "android"

    .line 22
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "gmp_version"

    const-string v4, "39065"

    .line 24
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 25
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 27
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51110
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Fetching remote configuration"

    .line 28
    invoke-virtual {v1, v2, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 30
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/ej;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 32
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/ej;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_6

    .line 33
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 34
    new-instance v3, Landroidx/b/a;

    invoke-direct {v3}, Landroidx/b/a;-><init>()V

    const-string v1, "If-Modified-Since"

    .line 35
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v9, v3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/jo;->l:Lcom/google/android/gms/measurement/internal/du;

    .line 36
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    new-instance v10, Lcom/google/android/gms/measurement/internal/jj;

    .line 37
    invoke-direct {v10, p0}, Lcom/google/android/gms/measurement/internal/jj;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 38
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/je;->v()V

    .line 40
    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {v10}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v5, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/dt;

    const/4 v8, 0x0

    move-object v4, v2

    .line 43
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/dt;-><init>(Lcom/google/android/gms/measurement/internal/du;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/dr;)V

    .line 44
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ep;->c(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 45
    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51111
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 48
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/je;->w()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/measurement/internal/d;

    .line 51188
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/il;

    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/il;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/je;->w()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    new-instance v0, Lcom/google/android/gms/measurement/internal/kj;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/kj;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/je;->w()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->c:Lcom/google/android/gms/measurement/internal/kj;

    new-instance v0, Lcom/google/android/gms/measurement/internal/ha;

    .line 9
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ha;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/je;->w()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->d:Lcom/google/android/gms/measurement/internal/ha;

    new-instance v0, Lcom/google/android/gms/measurement/internal/jc;

    .line 11
    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/jc;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/je;->w()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->n:Lcom/google/android/gms/measurement/internal/jc;

    .line 13
    new-instance v0, Lcom/google/android/gms/measurement/internal/dw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/dw;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->m:Lcom/google/android/gms/measurement/internal/dw;

    iget v0, p0, Lcom/google/android/gms/measurement/internal/jo;->i:I

    iget v1, p0, Lcom/google/android/gms/measurement/internal/jo;->j:I

    if-eq v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51189
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 15
    iget v1, p0, Lcom/google/android/gms/measurement/internal/jo;->i:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/measurement/internal/jo;->j:I

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Not all upload components initialized"

    .line 18
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    return-void
.end method

.method private final a(J)Z
    .locals 46

    move-object/from16 v1, p0

    const-string v2, "_sc"

    const-string v3, "_sn"

    const-string v4, "_npa"

    const-string v5, "_ai"

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i;->b()V

    :try_start_0
    new-instance v6, Lcom/google/android/gms/measurement/internal/jn;

    const/4 v13, 0x0

    .line 3
    invoke-direct {v6, v1, v13}, Lcom/google/android/gms/measurement/internal/jn;-><init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/jh;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 4
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/jo;->z:J

    move-wide/from16 v8, p1

    move-object v12, v6

    .line 5
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/i;->a(JJLcom/google/android/gms/measurement/internal/jn;)V

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/jn;->c:Ljava/util/List;

    if-eqz v7, :cond_69

    .line 6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_3c

    .line 10
    :cond_0
    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 11
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/gl;->m()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/cd;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->d()Lcom/google/android/gms/internal/measurement/cd;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51015
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 12
    sget-object v11, Lcom/google/android/gms/measurement/internal/dc;->T:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v9

    move-object/from16 v18, v13

    move-object/from16 v20, v18

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/jn;->c:Ljava/util/List;

    .line 13
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "_fr"

    const-string v13, "_et"

    move-object/from16 v22, v4

    const-string v4, "_e"

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    if-ge v14, v11, :cond_33

    :try_start_1
    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/jn;->c:Ljava/util/List;

    .line 14
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/bw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/gl;->m()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/bv;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 15
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51016
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    move/from16 v27, v14

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v2, v14}, Lcom/google/android/gms/measurement/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "_err"

    if-eqz v2, :cond_3

    .line 17
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51017
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Dropping blacklisted raw event. appId"

    .line 18
    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51018
    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 19
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 20
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v13

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 22
    invoke-virtual {v2, v4, v12, v13}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51019
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/ej;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51020
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 26
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/ej;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v28

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->B:Lcom/google/android/gms/measurement/internal/jt;

    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51021
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    const-string v32, "_ev"

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v33

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v11, Lcom/google/android/gms/measurement/internal/dc;->ay:Lcom/google/android/gms/measurement/internal/da;

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v11}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v35

    const/16 v31, 0xb

    const/16 v34, 0x0

    move-object/from16 v29, v2

    move-object/from16 v30, v4

    .line 32
    invoke-virtual/range {v28 .. v35}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/jt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    :goto_1
    move-object/from16 v28, v5

    move-wide/from16 v29, v15

    move-object/from16 v14, v23

    move/from16 v5, v27

    move/from16 v16, v9

    move v15, v10

    move-object/from16 v10, v24

    goto/16 :goto_1d

    .line 33
    :cond_3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/fq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/bv;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bv;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51022
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v14, "Renaming ad_impression to _ai"

    .line 36
    invoke-virtual {v2, v14}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/do;->ag_()Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x5

    .line 38
    invoke-static {v2, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 39
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->b()I

    move-result v14

    if-ge v2, v14, :cond_5

    const-string v14, "ad_platform"

    move-object/from16 v28, v5

    .line 40
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/bv;->a(I)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v5

    .line 51023
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 40
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 41
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/bv;->a(I)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v5

    .line 51024
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    .line 41
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "admob"

    .line 42
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/bv;->a(I)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v14

    .line 51025
    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    .line 42
    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v5

    .line 51026
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/do;->h:Lcom/google/android/gms/measurement/internal/dm;

    const-string v14, "AdMob ad impression logged from app. Potentially duplicative."

    .line 45
    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v28

    goto :goto_2

    :cond_5
    move-object/from16 v28, v5

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 46
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51027
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v5, v14}, Lcom/google/android/gms/measurement/internal/ej;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "_c"

    if-nez v2, :cond_a

    :try_start_3
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 48
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v14

    .line 50
    invoke-static {v14}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-wide/from16 v29, v15

    .line 51
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

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

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const-string v9, "_ug"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x2

    goto :goto_4

    :cond_8
    const-string v9, "_in"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v9, -0x1

    :goto_4
    if-eqz v9, :cond_b

    const/4 v14, 0x1

    if-eq v9, v14, :cond_b

    const/4 v14, 0x2

    if-eq v9, v14, :cond_b

    move/from16 v21, v8

    move-object/from16 v32, v12

    move-object/from16 v31, v13

    const/4 v2, 0x0

    move v12, v10

    goto/16 :goto_b

    :cond_a
    move-wide/from16 v29, v15

    move/from16 v16, v9

    :cond_b
    move/from16 v21, v8

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 52
    :goto_5
    :try_start_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->b()I

    move-result v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v31, v13

    const-string v13, "_r"

    if-ge v9, v8, :cond_e

    .line 53
    :try_start_5
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/bv;->a(I)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v8

    .line 51041
    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 53
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 54
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/bv;->a(I)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gl;->m()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/bz;

    const-wide/16 v13, 0x1

    .line 55
    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/bz;->a(J)Lcom/google/android/gms/internal/measurement/bz;

    .line 56
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ca;

    .line 57
    invoke-virtual {v3, v9, v8}, Lcom/google/android/gms/internal/measurement/bv;->a(ILcom/google/android/gms/internal/measurement/ca;)Lcom/google/android/gms/internal/measurement/bv;

    move-object/from16 v32, v12

    const/4 v14, 0x1

    goto :goto_6

    .line 58
    :cond_c
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/bv;->a(I)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v8

    .line 51042
    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 58
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 59
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/bv;->a(I)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gl;->m()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/bz;

    move-object/from16 v32, v12

    const-wide/16 v12, 0x1

    .line 60
    invoke-virtual {v8, v12, v13}, Lcom/google/android/gms/internal/measurement/bz;->a(J)Lcom/google/android/gms/internal/measurement/bz;

    .line 61
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ca;

    .line 62
    invoke-virtual {v3, v9, v8}, Lcom/google/android/gms/internal/measurement/bv;->a(ILcom/google/android/gms/internal/measurement/ca;)Lcom/google/android/gms/internal/measurement/bv;

    const/4 v15, 0x1

    goto :goto_6

    :cond_d
    move-object/from16 v32, v12

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v13, v31

    move-object/from16 v12, v32

    goto :goto_5

    :cond_e
    move-object/from16 v32, v12

    if-nez v14, :cond_f

    if-eqz v2, :cond_f

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v8

    .line 51043
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v9, "Marking event as conversion"

    .line 64
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 65
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v12

    .line 66
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 67
    invoke-virtual {v8, v9, v12}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->e()Lcom/google/android/gms/internal/measurement/bz;

    move-result-object v8

    .line 69
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    move v12, v10

    const-wide/16 v9, 0x1

    .line 70
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/bz;->a(J)Lcom/google/android/gms/internal/measurement/bz;

    .line 71
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/bv;->a(Lcom/google/android/gms/internal/measurement/bz;)Lcom/google/android/gms/internal/measurement/bv;

    goto :goto_7

    :cond_f
    move v12, v10

    :goto_7
    if-nez v15, :cond_10

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v8

    .line 51044
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v9, "Marking event as real-time"

    .line 73
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 74
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v10

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 76
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->e()Lcom/google/android/gms/internal/measurement/bz;

    move-result-object v8

    .line 78
    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    const-wide/16 v9, 0x1

    .line 79
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/bz;->a(J)Lcom/google/android/gms/internal/measurement/bz;

    .line 80
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/bv;->a(Lcom/google/android/gms/internal/measurement/bz;)Lcom/google/android/gms/internal/measurement/bv;

    :cond_10
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 81
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->p()J

    move-result-wide v34

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51045
    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    const/16 v37, 0x0

    const/16 v38, 0x1

    move-object/from16 v33, v8

    move-object/from16 v36, v9

    .line 84
    invoke-virtual/range {v33 .. v38}, Lcom/google/android/gms/measurement/internal/i;->a(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/g;->e:J

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v10

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51046
    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 85
    sget-object v15, Lcom/google/android/gms/measurement/internal/dc;->n:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v10, v14, v15}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)I

    move-result v10

    int-to-long v14, v10

    cmp-long v10, v8, v14

    if-lez v10, :cond_11

    .line 86
    invoke-static {v3, v13}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    const/16 v19, 0x1

    .line 87
    :goto_8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    if-eqz v2, :cond_18

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 88
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->p()J

    move-result-wide v34

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51047
    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    const/16 v37, 0x1

    const/16 v38, 0x0

    move-object/from16 v33, v8

    move-object/from16 v36, v9

    .line 91
    invoke-virtual/range {v33 .. v38}, Lcom/google/android/gms/measurement/internal/i;->a(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/g;->c:J

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v10

    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51048
    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 92
    sget-object v14, Lcom/google/android/gms/measurement/internal/dc;->m:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)I

    move-result v10

    int-to-long v13, v10

    cmp-long v10, v8, v13

    if-lez v10, :cond_18

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v8

    .line 51049
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v9, "Too many conversions. Not logging as conversion. appId"

    .line 94
    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51050
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 95
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 96
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v13, 0x0

    .line 97
    :goto_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->b()I

    move-result v14

    if-ge v8, v14, :cond_14

    .line 98
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/measurement/bv;->a(I)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v14

    .line 51051
    iget-object v15, v14, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 99
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 100
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/gl;->m()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/bz;

    move-object v13, v10

    move v10, v8

    goto :goto_a

    .line 51052
    :cond_12
    iget-object v14, v14, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 101
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const/4 v9, 0x1

    :cond_13
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_14
    if-eqz v9, :cond_16

    if-eqz v13, :cond_15

    .line 111
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/bv;->b(I)Lcom/google/android/gms/internal/measurement/bv;

    goto :goto_b

    :cond_15
    const/4 v13, 0x0

    :cond_16
    if-eqz v13, :cond_17

    .line 102
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/gi;->z()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/bz;

    .line 103
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    const-wide/16 v13, 0xa

    .line 104
    invoke-virtual {v8, v13, v14}, Lcom/google/android/gms/internal/measurement/bz;->a(J)Lcom/google/android/gms/internal/measurement/bz;

    .line 105
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ca;

    .line 106
    invoke-virtual {v3, v10, v8}, Lcom/google/android/gms/internal/measurement/bv;->a(ILcom/google/android/gms/internal/measurement/ca;)Lcom/google/android/gms/internal/measurement/bv;

    goto :goto_b

    .line 107
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v8

    .line 51053
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v9, "Did not find conversion parameter. appId"

    .line 108
    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51054
    iget-object v10, v10, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 109
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 110
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_b
    if-eqz v2, :cond_20

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->a()Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 113
    :goto_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v13, "currency"

    const-string v14, "value"

    if-ge v8, v11, :cond_1b

    .line 114
    :try_start_6
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/ca;

    .line 51028
    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 114
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    move v9, v8

    goto :goto_d

    .line 115
    :cond_19
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/ca;

    .line 51029
    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 115
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    move v10, v8

    :cond_1a
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_1b
    const/4 v8, -0x1

    if-ne v9, v8, :cond_1c

    goto/16 :goto_11

    .line 116
    :cond_1c
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ca;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ca;->b()Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/ca;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ca;->c()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51038
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->h:Lcom/google/android/gms/measurement/internal/dm;

    const-string v8, "Value must be specified with a numeric type."

    .line 129
    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/bv;->b(I)Lcom/google/android/gms/internal/measurement/bv;

    .line 131
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 132
    invoke-static {v3, v2, v14}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/bv;ILjava/lang/String;)V

    goto :goto_10

    :cond_1d
    const/4 v8, -0x1

    if-ne v10, v8, :cond_1e

    goto :goto_f

    .line 117
    :cond_1e
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ca;

    .line 51040
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1f

    const/4 v10, 0x0

    .line 119
    :goto_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_21

    .line 120
    invoke-virtual {v2, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    .line 121
    invoke-static {v11}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 122
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_e

    .line 123
    :cond_1f
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51039
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->h:Lcom/google/android/gms/measurement/internal/dm;

    const-string v10, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 125
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/bv;->b(I)Lcom/google/android/gms/internal/measurement/bv;

    .line 127
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 128
    invoke-static {v3, v2, v13}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/bv;ILjava/lang/String;)V

    goto :goto_11

    :cond_20
    :goto_10
    const/4 v8, -0x1

    .line 133
    :cond_21
    :goto_11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v9, 0x3e8

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 134
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 135
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/bw;

    move-object/from16 v5, v32

    invoke-static {v2, v5}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v2

    if-nez v2, :cond_24

    if-eqz v20, :cond_23

    .line 136
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v25

    sub-long v13, v13, v25

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v2, v13, v9

    if-gtz v2, :cond_23

    .line 137
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/internal/measurement/gi;->z()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/bv;

    .line 138
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/bv;Lcom/google/android/gms/internal/measurement/bv;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 139
    invoke-virtual {v7, v12, v2}, Lcom/google/android/gms/internal/measurement/cd;->a(ILcom/google/android/gms/internal/measurement/bv;)Lcom/google/android/gms/internal/measurement/cd;

    const/4 v2, 0x0

    const/16 v20, 0x0

    goto :goto_12

    :cond_22
    move-object v2, v3

    move/from16 v21, v17

    :goto_12
    move-object/from16 v18, v2

    move v15, v12

    move/from16 v8, v21

    goto :goto_13

    :cond_23
    move-object/from16 v18, v3

    move v15, v12

    move/from16 v8, v17

    :goto_13
    move-object/from16 v14, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v31

    goto/16 :goto_1b

    :cond_24
    move v15, v12

    move/from16 v5, v21

    move-object/from16 v14, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v31

    goto/16 :goto_1a

    :cond_25
    const-string v2, "_vs"

    .line 140
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 141
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 142
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/bw;

    move-object/from16 v11, v31

    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v2

    if-nez v2, :cond_28

    if-eqz v18, :cond_27

    .line 143
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v25

    sub-long v13, v13, v25

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v2, v13, v9

    if-gtz v2, :cond_27

    .line 144
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/gi;->z()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/bv;

    .line 145
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/bv;Lcom/google/android/gms/internal/measurement/bv;)Z

    move-result v5

    if-eqz v5, :cond_26

    move/from16 v5, v21

    .line 146
    invoke-virtual {v7, v5, v2}, Lcom/google/android/gms/internal/measurement/cd;->a(ILcom/google/android/gms/internal/measurement/bv;)Lcom/google/android/gms/internal/measurement/cd;

    move v10, v12

    const/4 v2, 0x0

    const/16 v18, 0x0

    goto :goto_14

    :cond_26
    move/from16 v5, v21

    move-object v2, v3

    move/from16 v10, v17

    :goto_14
    move-object/from16 v20, v2

    move v8, v5

    move v15, v10

    goto :goto_15

    :cond_27
    move/from16 v5, v21

    move-object/from16 v20, v3

    move v8, v5

    move/from16 v15, v17

    :goto_15
    move-object/from16 v14, v23

    move-object/from16 v10, v24

    goto/16 :goto_1b

    :cond_28
    move/from16 v5, v21

    goto/16 :goto_19

    :cond_29
    move/from16 v5, v21

    move-object/from16 v11, v31

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v9, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51034
    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 148
    sget-object v10, Lcom/google/android/gms/measurement/internal/dc;->aj:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "_ab"

    .line 149
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 150
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 151
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v2

    if-nez v2, :cond_2f

    if-eqz v18, :cond_2f

    .line 152
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v13

    sub-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v13, 0xfa0

    cmp-long v2, v9, v13

    if-gtz v2, :cond_2f

    .line 153
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/measurement/gi;->z()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/bv;

    .line 154
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/internal/measurement/bv;Lcom/google/android/gms/internal/measurement/bv;)V

    .line 155
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 156
    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 157
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 158
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/bw;

    move-object/from16 v10, v24

    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v9

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 159
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/bw;

    move-object/from16 v14, v23

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v13

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 161
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 162
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/bw;

    const-string v8, "_si"

    invoke-static {v15, v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v8

    if-eqz v9, :cond_2a

    .line 51035
    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    goto :goto_16

    :cond_2a
    const-string v9, ""

    .line 163
    :goto_16
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2b

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 164
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 165
    invoke-static {v3, v10, v9}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    if-eqz v13, :cond_2c

    .line 51036
    iget-object v9, v13, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    goto :goto_17

    :cond_2c
    const-string v9, ""

    .line 166
    :goto_17
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2d

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 167
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 168
    invoke-static {v3, v14, v9}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2d
    if-eqz v8, :cond_2e

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 169
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    const-string v9, "_si"

    move v15, v12

    .line 51037
    iget-wide v12, v8, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    .line 170
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3, v9, v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    :cond_2e
    move v15, v12

    .line 171
    :goto_18
    invoke-virtual {v7, v5, v2}, Lcom/google/android/gms/internal/measurement/cd;->a(ILcom/google/android/gms/internal/measurement/bv;)Lcom/google/android/gms/internal/measurement/cd;

    move v8, v5

    const/16 v18, 0x0

    goto :goto_1b

    :cond_2f
    :goto_19
    move v15, v12

    move-object/from16 v14, v23

    move-object/from16 v10, v24

    :goto_1a
    move v8, v5

    :goto_1b
    if-nez v16, :cond_32

    .line 172
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 173
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/bv;->b()I

    move-result v2

    if-nez v2, :cond_30

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51030
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Engagement event does not contain any parameters. appId"

    .line 182
    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51031
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 183
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 184
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c

    .line 186
    :cond_30
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 174
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 175
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/jq;->b(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_31

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51032
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Engagement event does not include duration. appId"

    .line 177
    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51033
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 178
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 179
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1c

    .line 180
    :cond_31
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v4, v29, v4

    move-wide/from16 v29, v4

    .line 184
    :cond_32
    :goto_1c
    iget-object v2, v6, Lcom/google/android/gms/measurement/internal/jn;->c:Ljava/util/List;

    .line 185
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/bw;

    move/from16 v5, v27

    invoke-interface {v2, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v17, v17, 0x1

    .line 186
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/cd;->a(Lcom/google/android/gms/internal/measurement/bv;)Lcom/google/android/gms/internal/measurement/cd;

    :goto_1d
    add-int/lit8 v2, v5, 0x1

    move-object v3, v10

    move v10, v15

    move/from16 v9, v16

    move-object/from16 v4, v22

    move-object/from16 v5, v28

    move-wide/from16 v15, v29

    const/4 v13, 0x0

    move-object/from16 v44, v14

    move v14, v2

    move-object/from16 v2, v44

    goto/16 :goto_0

    :cond_33
    move-object v5, v12

    move-object v11, v13

    move-wide/from16 v29, v15

    move/from16 v16, v9

    if-eqz v16, :cond_38

    move/from16 v3, v17

    move-wide/from16 v15, v29

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v3, :cond_37

    .line 187
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/cd;->a(I)Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v8

    .line 51055
    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/bw;->zzf:Ljava/lang/String;

    .line 188
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 189
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 190
    invoke-static {v8, v5}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v9

    if-eqz v9, :cond_34

    .line 196
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/cd;->b(I)Lcom/google/android/gms/internal/measurement/cd;

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    :cond_34
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 191
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 192
    invoke-static {v8, v11}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v8

    if-eqz v8, :cond_36

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/ca;->b()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 51056
    iget-wide v8, v8, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    .line 193
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_1f

    :cond_35
    const/4 v8, 0x0

    :goto_1f
    if-eqz v8, :cond_36

    .line 194
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-lez v14, :cond_36

    .line 195
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v15, v8

    :cond_36
    :goto_20
    const/4 v8, 0x1

    add-int/2addr v2, v8

    goto :goto_1e

    :cond_37
    move-wide v2, v15

    goto :goto_21

    :cond_38
    move-wide/from16 v2, v29

    :goto_21
    const/4 v4, 0x0

    .line 197
    invoke-direct {v1, v7, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/cd;JZ)V

    .line 198
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v8, "_se"

    if-eqz v5, :cond_3a

    :try_start_7
    const-string v5, "_s"

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/bw;

    .line 51057
    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/bw;->zzf:Ljava/lang/String;

    .line 199
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 200
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 201
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v5

    .line 202
    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    const-string v4, "_sid"

    .line 203
    invoke-static {v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/cd;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3b

    const/4 v4, 0x1

    .line 204
    invoke-direct {v1, v7, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/internal/measurement/cd;JZ)V

    goto :goto_22

    .line 205
    :cond_3b
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/cd;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3c

    .line 206
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/cd;->d(I)Lcom/google/android/gms/internal/measurement/cd;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51092
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Session engagement user property is in the bundle without session ID. appId"

    .line 208
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51093
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 209
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 210
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    :cond_3c
    :goto_22
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 211
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 51058
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Checking account type status for ad personalization signals"

    .line 213
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 214
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 215
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/ej;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 216
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 217
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v3

    if-eqz v3, :cond_3f

    .line 218
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->x()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 219
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/m;->ab_()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 221
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 51059
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Turning off ad personalization due to account type"

    .line 222
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cp;->d()Lcom/google/android/gms/internal/measurement/co;

    move-result-object v3

    move-object/from16 v4, v22

    .line 224
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/co;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/co;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    .line 51060
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/m;->b:J

    .line 226
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/measurement/co;->a(J)Lcom/google/android/gms/internal/measurement/co;

    const-wide/16 v8, 0x1

    .line 227
    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/measurement/co;->b(J)Lcom/google/android/gms/internal/measurement/co;

    .line 228
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/cp;

    const/4 v3, 0x0

    .line 229
    :goto_23
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->f()I

    move-result v5

    if-ge v3, v5, :cond_3e

    .line 230
    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/cd;->c(I)Lcom/google/android/gms/internal/measurement/cp;

    move-result-object v5

    .line 51061
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 233
    invoke-virtual {v7, v3, v2}, Lcom/google/android/gms/internal/measurement/cd;->a(ILcom/google/android/gms/internal/measurement/cp;)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_24

    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 232
    :cond_3e
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/cd;->a(Lcom/google/android/gms/internal/measurement/cp;)Lcom/google/android/gms/internal/measurement/cd;

    :cond_3f
    :goto_24
    const-wide v2, 0x7fffffffffffffffL

    .line 234
    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/cd;->b(J)Lcom/google/android/gms/internal/measurement/cd;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/measurement/cd;->c(J)Lcom/google/android/gms/internal/measurement/cd;

    const/4 v2, 0x0

    .line 235
    :goto_25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->c()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 236
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/cd;->a(I)Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v3

    .line 51062
    iget-wide v4, v3, Lcom/google/android/gms/internal/measurement/bw;->zzg:J

    .line 237
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->g()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-gez v10, :cond_40

    .line 51063
    iget-wide v4, v3, Lcom/google/android/gms/internal/measurement/bw;->zzg:J

    .line 238
    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->b(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 51064
    :cond_40
    iget-wide v4, v3, Lcom/google/android/gms/internal/measurement/bw;->zzg:J

    .line 239
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->h()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-lez v10, :cond_41

    .line 51065
    iget-wide v3, v3, Lcom/google/android/gms/internal/measurement/bw;->zzg:J

    .line 240
    invoke-virtual {v7, v3, v4}, Lcom/google/android/gms/internal/measurement/cd;->c(J)Lcom/google/android/gms/internal/measurement/cd;

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 241
    :cond_42
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->t()Lcom/google/android/gms/internal/measurement/cd;

    .line 242
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->s()Lcom/google/android/gms/internal/measurement/cd;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->c:Lcom/google/android/gms/measurement/internal/kj;

    .line 243
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 244
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v9

    .line 245
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->b()Ljava/util/List;

    move-result-object v10

    .line 246
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->e()Ljava/util/List;

    move-result-object v11

    .line 247
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 248
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->h()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 249
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/measurement/internal/kj;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    .line 250
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/cd;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/cd;

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v3, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51066
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    const-string v4, "1"

    .line 251
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    const-string v5, "measurement.event_sampling_enabled"

    .line 51067
    invoke-interface {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 251
    new-instance v2, Ljava/util/HashMap;

    .line 252
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 253
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/ju;->l()Ljava/security/SecureRandom;

    move-result-object v4

    const/4 v5, 0x0

    .line 255
    :goto_26
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->c()I

    move-result v8

    if-ge v5, v8, :cond_58

    .line 256
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/cd;->a(I)Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gl;->m()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/bv;

    .line 257
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const-string v10, "_sr"

    if-eqz v9, :cond_47

    :try_start_8
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 324
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 325
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/bw;

    const-string v11, "_en"

    invoke-static {v9, v11}, Lcom/google/android/gms/measurement/internal/jq;->b(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 326
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/o;

    if-nez v11, :cond_43

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 327
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51068
    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 328
    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 329
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v11

    if-eqz v11, :cond_43

    .line 330
    invoke-interface {v2, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    if-eqz v11, :cond_46

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->i:Ljava/lang/Long;

    if-nez v9, :cond_46

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->j:Ljava/lang/Long;

    if-eqz v9, :cond_44

    .line 331
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v9, v12, v14

    if-lez v9, :cond_44

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 332
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->j:Ljava/lang/Long;

    .line 333
    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_44
    iget-object v9, v11, Lcom/google/android/gms/measurement/internal/o;->k:Ljava/lang/Boolean;

    if-eqz v9, :cond_45

    .line 334
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_45

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 335
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    const-string v9, "_efs"

    const-wide/16 v10, 0x1

    .line 336
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    :cond_45
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/bw;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_46
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/measurement/cd;->a(ILcom/google/android/gms/internal/measurement/bv;)Lcom/google/android/gms/internal/measurement/cd;

    :goto_27
    move-object/from16 p2, v4

    move v4, v5

    move-object/from16 v20, v6

    goto/16 :goto_30

    :cond_47
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 258
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51069
    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    const-string v12, "measurement.account.time_zone_offset_minutes"

    .line 260
    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 261
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v13, :cond_48

    .line 262
    :try_start_9
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_28

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 405
    :try_start_a
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 263
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v9

    .line 51094
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v13, "Unable to parse timezone offset. appId"

    .line 264
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 265
    invoke-virtual {v9, v13, v11, v12}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    const-wide/16 v11, 0x0

    .line 266
    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v13

    invoke-static {v13, v14, v11, v12}, Lcom/google/android/gms/measurement/internal/ju;->a(JJ)J

    move-result-wide v13

    .line 267
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/bw;

    move-wide/from16 v17, v11

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    .line 268
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4b

    .line 51070
    iget-object v9, v9, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 269
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_29
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/ca;

    move-object/from16 p2, v9

    .line 51071
    iget-object v9, v15, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 270
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    move-wide/from16 v22, v13

    .line 51072
    iget-wide v12, v15, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    .line 271
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    goto :goto_2a

    :cond_49
    const/4 v9, 0x1

    goto :goto_2b

    :cond_4a
    move-object/from16 v9, p2

    goto :goto_29

    :cond_4b
    move-wide/from16 v22, v13

    :goto_2a
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 272
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51073
    iget-object v11, v11, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 273
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/measurement/internal/ej;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    :goto_2b
    if-gtz v9, :cond_4c

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v10

    .line 51074
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v11, "Sample rate must be positive. event, rate"

    .line 276
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/bw;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/measurement/cd;->a(ILcom/google/android/gms/internal/measurement/bv;)Lcom/google/android/gms/internal/measurement/cd;

    goto/16 :goto_27

    .line 279
    :cond_4c
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/o;

    if-nez v11, :cond_4d

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 280
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51075
    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 281
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v11

    if-nez v11, :cond_4d

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v11

    .line 51076
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v12, "Event being bundled has no eventAggregate. appId, eventName"

    .line 283
    iget-object v13, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51077
    iget-object v13, v13, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 285
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v14

    .line 286
    invoke-virtual {v11, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Lcom/google/android/gms/measurement/internal/o;

    iget-object v12, v6, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51078
    iget-object v12, v12, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 288
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v29

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    const-wide/16 v34, 0x1

    .line 289
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v36

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    invoke-direct/range {v27 .. v43}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :cond_4d
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 290
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 291
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/bw;

    const-string v13, "_eid"

    invoke-static {v12, v13}, Lcom/google/android/gms/measurement/internal/jq;->b(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_4e

    const/4 v13, 0x1

    goto :goto_2c

    :cond_4e
    const/4 v13, 0x0

    .line 292
    :goto_2c
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x1

    if-ne v9, v14, :cond_51

    .line 293
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/bw;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
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

    .line 295
    invoke-virtual {v11, v9, v9, v9}, Lcom/google/android/gms/measurement/internal/o;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v10

    .line 296
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_50
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/measurement/cd;->a(ILcom/google/android/gms/internal/measurement/bv;)Lcom/google/android/gms/internal/measurement/cd;

    goto/16 :goto_27

    .line 298
    :cond_51
    invoke-virtual {v4, v9}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_53

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 299
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    int-to-long v14, v9

    .line 300
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/bw;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_52

    const/4 v10, 0x0

    .line 303
    invoke-virtual {v11, v10, v9, v10}, Lcom/google/android/gms/measurement/internal/o;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v11

    .line 304
    :cond_52
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v9

    .line 305
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v12

    move-wide/from16 v14, v22

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/measurement/internal/o;->a(JJ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v10

    .line 306
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p2, v4

    move v4, v5

    move-object/from16 v20, v6

    goto/16 :goto_2f

    :cond_53
    move-object/from16 p2, v4

    move-wide/from16 v14, v22

    .line 307
    iget-object v4, v11, Lcom/google/android/gms/measurement/internal/o;->h:Ljava/lang/Long;

    if-eqz v4, :cond_54

    .line 308
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-wide/from16 v44, v16

    move/from16 v16, v5

    move-wide/from16 v4, v44

    goto :goto_2d

    .line 309
    :cond_54
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move/from16 v16, v5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->g()J

    move-result-wide v4

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    move-wide/from16 v6, v17

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/ju;->a(JJ)J

    move-result-wide v4

    :goto_2d
    cmp-long v6, v4, v14

    if-eqz v6, :cond_56

    .line 308
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 310
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    const-string v4, "_efs"

    const-wide/16 v5, 0x1

    .line 311
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v8, v4, v7}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 312
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    int-to-long v5, v9

    .line 313
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v8, v10, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/bw;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_55

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    .line 316
    invoke-virtual {v11, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/o;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v11

    .line 317
    :cond_55
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v4

    .line 318
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->f()J

    move-result-wide v5

    invoke-virtual {v11, v5, v6, v14, v15}, Lcom/google/android/gms/measurement/internal/o;->a(JJ)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v5

    .line 319
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 320
    :cond_56
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 321
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v11, v12, v5, v5}, Lcom/google/android/gms/measurement/internal/o;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v6

    .line 322
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    :goto_2e
    move/from16 v4, v16

    move-object/from16 v7, v22

    .line 323
    :goto_2f
    invoke-virtual {v7, v4, v8}, Lcom/google/android/gms/internal/measurement/cd;->a(ILcom/google/android/gms/internal/measurement/bv;)Lcom/google/android/gms/internal/measurement/cd;

    :goto_30
    add-int/lit8 v5, v4, 0x1

    move-object/from16 v4, p2

    move-object/from16 v6, v20

    goto/16 :goto_26

    :cond_58
    move-object/from16 v20, v6

    .line 339
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->c()I

    move-result v5

    if-ge v4, v5, :cond_59

    .line 340
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->d()Lcom/google/android/gms/internal/measurement/cd;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/measurement/cd;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/cd;

    .line 341
    :cond_59
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 342
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 343
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/o;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/o;)V

    goto :goto_31

    :cond_5a
    move-object/from16 v2, v20

    goto :goto_32

    :cond_5b
    move-object v2, v6

    :goto_32
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51079
    iget-object v3, v3, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 344
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 345
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 346
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v4

    if-nez v4, :cond_5c

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 51080
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Bundling raw events w/o app info. appId"

    .line 348
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51081
    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 349
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 350
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_37

    .line 351
    :cond_5c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->c()I

    move-result v5

    if-lez v5, :cond_61

    .line 352
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->j()J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v10, v5, v8

    if-eqz v10, :cond_5d

    .line 353
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/cd;->e(J)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_33

    .line 354
    :cond_5d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->j()Lcom/google/android/gms/internal/measurement/cd;

    .line 355
    :goto_33
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->i()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_5e

    goto :goto_34

    :cond_5e
    move-wide v5, v8

    :goto_34
    cmp-long v8, v5, v10

    if-eqz v8, :cond_5f

    .line 356
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/measurement/cd;->d(J)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_35

    .line 357
    :cond_5f
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->i()Lcom/google/android/gms/internal/measurement/cd;

    .line 358
    :goto_35
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->u()V

    .line 359
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fd;->r()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/cd;->f(I)Lcom/google/android/gms/internal/measurement/cd;

    .line 360
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->g()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/fd;->a(J)V

    .line 361
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->h()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/fd;->b(J)V

    .line 362
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/fd;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 51089
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v5

    .line 51090
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/fd;->i:Ljava/lang/String;

    const/4 v6, 0x0

    .line 51091
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/fd;->i(Ljava/lang/String;)V

    if-eqz v5, :cond_60

    .line 363
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/cd;->i(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_36

    .line 364
    :cond_60
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->q()Lcom/google/android/gms/internal/measurement/cd;

    .line 363
    :goto_36
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 365
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 366
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 367
    :cond_61
    :goto_37
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/cd;->c()I

    move-result v4

    if-lez v4, :cond_65

    .line 368
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 369
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51083
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 370
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ej;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v4

    if-eqz v4, :cond_63

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bj;->a()Z

    move-result v5

    if-nez v5, :cond_62

    goto :goto_38

    .line 51088
    :cond_62
    iget-wide v4, v4, Lcom/google/android/gms/internal/measurement/bj;->zze:J

    .line 377
    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->h(J)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_39

    .line 370
    :cond_63
    :goto_38
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51084
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ce;->zzE:Ljava/lang/String;

    .line 371
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_64

    const-wide/16 v4, -0x1

    .line 372
    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->h(J)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_39

    .line 373
    :cond_64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 51086
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Did not find measurement config or missing version info. appId"

    .line 374
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/internal/measurement/ce;

    .line 51087
    iget-object v6, v6, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 375
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 376
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    :goto_39
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 378
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 379
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ce;

    move/from16 v8, v19

    invoke-virtual {v4, v5, v8}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/internal/measurement/ce;Z)Z

    :cond_65
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 380
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jn;->b:Ljava/util/List;

    .line 381
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 383
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/je;->v()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    .line 384
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 385
    :goto_3a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_67

    if-eqz v6, :cond_66

    const-string v7, ","

    .line 386
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_66
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_67
    const-string v6, ")"

    .line 388
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 390
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 391
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_68

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 392
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 51085
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 394
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 395
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 396
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_68
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 397
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 398
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

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

    .line 399
    invoke-virtual {v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3b

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 265
    :try_start_c
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 400
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51095
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Failed to remove unused event metadata. appId"

    .line 401
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 402
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 399
    :goto_3b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 403
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 404
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    const/4 v2, 0x1

    return v2

    .line 6
    :cond_69
    :goto_3c
    :try_start_d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 210
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 405
    throw v2
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/bv;Lcom/google/android/gms/internal/measurement/bv;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 51098
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/bw;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 51097
    :cond_1
    iget-object v1, v2, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/internal/measurement/bv;Lcom/google/android/gms/internal/measurement/bv;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/jo;)Lcom/google/android/gms/measurement/internal/es;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    return-object p0
.end method

.method private final b(Lcom/google/android/gms/measurement/internal/fd;)Ljava/lang/Boolean;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 51127
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 51128
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->k()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 11
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final b(Lcom/google/android/gms/internal/measurement/bv;Lcom/google/android/gms/internal/measurement/bv;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/bv;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ca;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51099
    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    goto :goto_0

    .line 51100
    :cond_0
    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/bw;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51101
    iget-wide v6, v0, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_1

    .line 51102
    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    add-long/2addr v2, v4

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    const-wide/16 v0, 0x1

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dp;->a(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/dp;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/dp;->d:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 5
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/i;->e(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/e;->a(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/dp;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/dp;->a()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->ab:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v1, "_cis"

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v1, "gclid"

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkl;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method private c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 6
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 7
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v11, :cond_46

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 10
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 11
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/ej;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v11, :cond_4

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 19000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 13
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 16
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 18
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/ej;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 20
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/ej;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/jo;->B:Lcom/google/android/gms/measurement/internal/jt;

    const/16 v3, 0xb

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const/16 v17, 0x0

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->ay:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v4, v14, v5}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v18

    const-string v15, "_ev"

    move-object v13, v10

    move v14, v3

    move-object/from16 v16, v2

    .line 33
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/jt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 20
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 22
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->t()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->s()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    .line 27
    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->y:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 20000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Fetching config for blacklisted app"

    .line 28
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 29
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/fd;)V

    :cond_3
    return-void

    .line 34
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/dp;->a(Lcom/google/android/gms/measurement/internal/zzas;)Lcom/google/android/gms/measurement/internal/dp;

    move-result-object v2

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v11

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/e;->a(Ljava/lang/String;)I

    move-result v12

    .line 37
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/dp;I)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dp;->a()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/do;->ag_()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    .line 40
    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v11

    .line 21000
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 42
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v12

    .line 44
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/dj;->af_()Z

    move-result v16

    if-nez v16, :cond_5

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 76
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "origin="

    .line 47
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 48
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",name="

    .line 49
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 44
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 50
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",params="

    .line 51
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v14, :cond_6

    const/4 v12, 0x0

    goto :goto_1

    .line 44
    :cond_6
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/dj;->af_()Z

    move-result v17

    if-nez v17, :cond_7

    .line 52
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 53
    :cond_7
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v14

    .line 44
    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/dj;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v12

    .line 54
    :goto_1
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    const-string v13, "Logging event"

    .line 44
    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 56
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 57
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/i;->b()V

    .line 58
    :try_start_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    const-string v11, "ecommerce_purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 59
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "refund"

    const/16 v28, 0x1

    if-nez v11, :cond_a

    :try_start_1
    const-string v11, "purchase"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 60
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 61
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

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 62
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    goto :goto_6

    :cond_b
    move-wide/from16 v29, v8

    move-object/from16 v31, v15

    :goto_5
    const/4 v8, 0x0

    goto/16 :goto_f

    :cond_c
    :goto_6
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v14, "currency"

    .line 63
    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "value"

    if-eqz v11, :cond_f

    :try_start_2
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 64
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide v20, 0x412e848000000000L    # 1000000.0

    mul-double v18, v18, v20

    const-wide/16 v22, 0x0

    cmpl-double v11, v18, v22

    if-nez v11, :cond_d

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 65
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v22, v15

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    mul-double v18, v14, v20

    goto :goto_7

    :cond_d
    move-object/from16 v22, v15

    :goto_7
    const-wide/high16 v14, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v11, v18, v14

    if-gtz v11, :cond_e

    const-wide/high16 v14, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v11, v18, v14

    if-ltz v11, :cond_e

    .line 74
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 75
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    neg-long v14, v14

    goto :goto_8

    .line 66
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 35000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Data lost. Currency value is too big. appId"

    .line 67
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 69
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 70
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :cond_f
    move-object/from16 v22, v15

    :try_start_3
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 76
    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/zzaq;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 77
    :cond_10
    :goto_8
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 78
    invoke-virtual {v13, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "[A-Z]{3}"

    .line 79
    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "_ltv_"

    .line 80
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_9
    move-object v13, v11

    goto :goto_a

    .line 98
    :cond_11
    new-instance v11, Ljava/lang/String;

    .line 80
    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_a
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 81
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 82
    invoke-virtual {v11, v10, v13}, Lcom/google/android/gms/measurement/internal/i;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/js;

    move-result-object v11

    if-eqz v11, :cond_13

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    .line 83
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_12

    goto :goto_c

    .line 96
    :cond_12
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v18, Lcom/google/android/gms/measurement/internal/js;

    move-object/from16 v19, v13

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v20

    add-long/2addr v11, v14

    .line 98
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v11, v18

    move-object v12, v10

    const/4 v15, 0x2

    move-wide/from16 v29, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v14, v19

    move-object/from16 v31, v22

    const/4 v9, 0x2

    move-wide/from16 v15, v20

    move-object/from16 v17, v23

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/js;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_b
    move-object/from16 v9, v18

    goto :goto_e

    :cond_13
    :goto_c
    move-wide/from16 v29, v8

    move-object/from16 v19, v13

    move-object/from16 v31, v22

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 83
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 84
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v12

    .line 86
    sget-object v13, Lcom/google/android/gms/measurement/internal/dc;->D:Lcom/google/android/gms/measurement/internal/da;

    .line 85
    invoke-virtual {v12, v10, v13}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 87
    invoke-static {v10}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 89
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/je;->v()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :try_start_4
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    aput-object v10, v9, v8

    aput-object v10, v9, v28

    .line 91
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x2

    aput-object v12, v9, v16

    const-string v12, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 92
    invoke-virtual {v13, v12, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_d

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 384
    :try_start_5
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 93
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v11

    .line 36000
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v12, "Error pruning currencies. appId"

    .line 94
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v9}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    :goto_d
    new-instance v18, Lcom/google/android/gms/measurement/internal/js;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v11, v18

    move-object v12, v10

    move-object/from16 v14, v19

    move-wide/from16 v15, v16

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/js;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_b

    :goto_e
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 99
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 100
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/js;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v11

    .line 22000
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    .line 102
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 103
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v14

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    .line 104
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    .line 105
    invoke-virtual {v11, v12, v13, v14, v9}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/jo;->B:Lcom/google/android/gms/measurement/internal/jt;

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    sget-object v13, Lcom/google/android/gms/measurement/internal/dc;->ay:Lcom/google/android/gms/measurement/internal/da;

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v13}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v18

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 108
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/jt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_f

    :cond_14
    move-wide/from16 v29, v8

    move-object/from16 v31, v22

    goto/16 :goto_5

    :cond_15
    :goto_f
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 109
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;)Z

    move-result v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    move-object/from16 v12, v31

    .line 110
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-nez v11, :cond_16

    const-wide/16 v16, 0x0

    goto :goto_11

    .line 179
    :cond_16
    new-instance v12, Lcom/google/android/gms/measurement/internal/p;

    .line 112
    invoke-direct {v12, v11}, Lcom/google/android/gms/measurement/internal/p;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    const-wide/16 v16, 0x0

    .line 113
    :cond_17
    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 114
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p;->a()Ljava/lang/String;

    move-result-object v13

    .line 115
    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 116
    instance-of v14, v13, [Landroid/os/Parcelable;

    if-eqz v14, :cond_17

    .line 117
    check-cast v13, [Landroid/os/Parcelable;

    array-length v13, v13

    int-to-long v13, v13

    add-long v16, v16, v13

    goto :goto_10

    :cond_18
    :goto_11
    const-wide/16 v24, 0x1

    add-long v15, v16, v24

    .line 111
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 118
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->p()J

    move-result-wide v12

    const/16 v17, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v10

    move/from16 v18, v9

    move/from16 v19, v20

    move/from16 v20, v23

    .line 120
    invoke-virtual/range {v11 .. v21}, Lcom/google/android/gms/measurement/internal/i;->a(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v11

    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/g;->b:J

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    .line 122
    sget-object v14, Lcom/google/android/gms/measurement/internal/dc;->j:Lcom/google/android/gms/measurement/internal/da;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

    cmp-long v2, v12, v24

    if-nez v2, :cond_19

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 23000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 124
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/g;->b:J

    .line 125
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 126
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 127
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :cond_1a
    if-eqz v21, :cond_1c

    :try_start_6
    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/g;->a:J

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    sget-object v14, Lcom/google/android/gms/measurement/internal/dc;->l:Lcom/google/android/gms/measurement/internal/da;

    const/4 v15, 0x0

    .line 130
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

    cmp-long v3, v12, v24

    if-nez v3, :cond_1b

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 24000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 376
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/g;->a:J

    .line 377
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 378
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/jo;->B:Lcom/google/android/gms/measurement/internal/jt;

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/dc;->ay:Lcom/google/android/gms/measurement/internal/da;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v18

    const/16 v14, 0x10

    const/16 v17, 0x0

    move-object v13, v10

    move-object/from16 v16, v2

    .line 381
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/jt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 382
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 383
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :cond_1c
    const v12, 0xf4240

    if-eqz v23, :cond_1e

    :try_start_7
    iget-wide v13, v11, Lcom/google/android/gms/measurement/internal/g;->d:J

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v15

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->k:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)I

    move-result v8

    .line 132
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 133
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v13, v8

    const-wide/16 v8, 0x0

    cmp-long v15, v13, v8

    if-lez v15, :cond_1e

    cmp-long v2, v13, v24

    if-nez v2, :cond_1d

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 25000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Too many error events logged. appId, count"

    .line 370
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/g;->d:J

    .line 371
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 372
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 373
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 374
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :cond_1e
    :try_start_8
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 134
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v8

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v9

    const-string v11, "_o"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    invoke-virtual {v9, v8, v11, v13}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/ju;->f(Ljava/lang/String;)Z

    move-result v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v15, "_r"

    if-eqz v9, :cond_1f

    .line 137
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v9

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "_dbg"

    invoke-virtual {v9, v8, v13, v11}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v9

    invoke-virtual {v9, v8, v15, v11}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    const-string v9, "_s"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 139
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 140
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 141
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 142
    invoke-virtual {v9, v11, v7}, Lcom/google/android/gms/measurement/internal/i;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/js;

    move-result-object v9

    if-eqz v9, :cond_20

    iget-object v11, v9, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    .line 143
    instance-of v11, v11, Ljava/lang/Long;

    if-eqz v11, :cond_20

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v11

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    invoke-virtual {v11, v8, v7, v9}, Lcom/google/android/gms/measurement/internal/ju;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_20
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 145
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 146
    invoke-static {v10}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 148
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/je;->v()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 149
    :try_start_a
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 26000
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 150
    sget-object v13, Lcom/google/android/gms/measurement/internal/dc;->o:Lcom/google/android/gms/measurement/internal/da;

    .line 151
    invoke-virtual {v11, v10, v13}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)I

    move-result v11

    .line 152
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v14, 0x0

    .line 153
    :try_start_b
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 151
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    aput-object v10, v12, v14

    aput-object v11, v12, v28

    const-string v11, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 154
    invoke-virtual {v9, v6, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    int-to-long v11, v7

    goto :goto_13

    :catch_1
    move-exception v0

    goto :goto_12

    :catch_2
    move-exception v0

    const/4 v14, 0x0

    :goto_12
    move-object v9, v0

    .line 94
    :try_start_c
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 155
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v7

    .line 37000
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v11, "Error deleting over the limit events. appId"

    .line 156
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 157
    invoke-virtual {v7, v11, v12, v9}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v11, 0x0

    :goto_13
    const-wide/16 v16, 0x0

    cmp-long v7, v11, v16

    if-lez v7, :cond_21

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v7

    .line 27000
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    .line 159
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 160
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 161
    invoke-virtual {v7, v9, v13, v11}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    new-instance v7, Lcom/google/android/gms/measurement/internal/n;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const-wide/16 v18, 0x0

    move-object v11, v7

    const/4 v2, 0x0

    move-object v14, v10

    move-object v2, v15

    move-object v15, v9

    move-wide/from16 v16, v4

    move-object/from16 v20, v8

    .line 162
    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/es;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 163
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 164
    invoke-virtual {v4, v10, v5}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v4

    if-nez v4, :cond_23

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 165
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 166
    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/i;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v11, v4, v8

    if-ltz v11, :cond_22

    if-eqz v21, :cond_22

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 28000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    .line 170
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 171
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v5

    iget-object v6, v7, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 172
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 174
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/jo;->B:Lcom/google/android/gms/measurement/internal/jt;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->ay:Lcom/google/android/gms/measurement/internal/da;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v18

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 177
    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/jt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :cond_22
    :try_start_d
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

    .line 168
    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_14

    .line 207
    :cond_23
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/o;->f:J

    .line 178
    invoke-virtual {v7, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/n;->a(Lcom/google/android/gms/measurement/internal/es;J)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v7

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/n;->d:J

    .line 179
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/o;->a(J)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v4

    .line 168
    :goto_14
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 180
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 181
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/o;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 184
    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 186
    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 187
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    .line 188
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ce;->c()Lcom/google/android/gms/internal/measurement/cd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/cd;->a()Lcom/google/android/gms/internal/measurement/cd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/cd;->k()Lcom/google/android/gms/internal/measurement/cd;

    .line 189
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 190
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->e(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 191
    :cond_24
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 192
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->d(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 193
    :cond_25
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 194
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->f(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 195
    :cond_26
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    const-wide/32 v10, -0x80000000

    cmp-long v5, v8, v10

    if-eqz v5, :cond_27

    long-to-int v5, v8

    .line 196
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->g(I)Lcom/google/android/gms/internal/measurement/cd;

    .line 197
    :cond_27
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/cd;->f(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 198
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 199
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->j(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 200
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 201
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 202
    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 203
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/f;->b(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    .line 204
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 205
    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->ag:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 208
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/cd;->r()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 209
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 210
    :cond_2a
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/cd;->r()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 211
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/cd;->w()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 212
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 213
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    goto :goto_15

    .line 206
    :cond_2b
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/cd;->r()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 207
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->l(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 214
    :cond_2c
    :goto_15
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_2d

    .line 215
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/cd;->g(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 216
    :cond_2d
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/cd;->j(J)Lcom/google/android/gms/internal/measurement/cd;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 217
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/jq;->f:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 29000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 219
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/dc;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_31

    .line 220
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v9

    if-nez v9, :cond_2e

    goto/16 :goto_18

    .line 260
    :cond_2e
    new-instance v14, Ljava/util/ArrayList;

    .line 221
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->O:Lcom/google/android/gms/measurement/internal/da;

    const/4 v10, 0x0

    .line 222
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 223
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2f
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "measurement.id."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v11, :cond_2f

    .line 225
    :try_start_e
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_2f

    .line 226
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v9, :cond_2f

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 228
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v10

    .line 34000
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v11, "Too many experiment IDs. Number of IDs"

    .line 230
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_17

    :catch_3
    move-exception v0

    move-object v10, v0

    .line 361
    :try_start_f
    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 231
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v11

    .line 42000
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v12, "Experiment ID NumberFormatException"

    .line 232
    invoke-virtual {v11, v12, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_16

    .line 233
    :cond_30
    :goto_17
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_32

    :cond_31
    :goto_18
    const/4 v14, 0x0

    :cond_32
    if-eqz v14, :cond_33

    .line 234
    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/measurement/cd;->d(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/cd;

    .line 235
    :cond_33
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 236
    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 237
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/f;->b(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    .line 238
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 240
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v8

    if-eqz v8, :cond_35

    :cond_34
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 241
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 242
    invoke-virtual {v8, v9, v5}, Lcom/google/android/gms/measurement/internal/il;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)Landroid/util/Pair;

    move-result-object v8

    .line 243
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_35

    .line 244
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    if-eqz v9, :cond_35

    .line 245
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/cd;->g(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 246
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_35

    .line 247
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/cd;->a(Z)Lcom/google/android/gms/internal/measurement/cd;

    :cond_35
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 248
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 249
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fn;->g()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/cd;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 250
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 251
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fn;->g()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/cd;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 252
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 253
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m;->Z_()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/cd;->e(I)Lcom/google/android/gms/internal/measurement/cd;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 254
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 255
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/m;->aa_()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/measurement/cd;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->at:Lcom/google/android/gms/measurement/internal/da;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 257
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/measurement/cd;->i(J)Lcom/google/android/gms/internal/measurement/cd;

    :cond_36
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 258
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->r()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 259
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v8

    if-eqz v8, :cond_37

    .line 261
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    goto :goto_19

    .line 260
    :cond_37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    .line 262
    :goto_19
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_38

    .line 263
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/cd;->u()Lcom/google/android/gms/internal/measurement/cd;

    :cond_38
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 264
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 265
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v8

    if-nez v8, :cond_3d

    new-instance v8, Lcom/google/android/gms/measurement/internal/fd;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 266
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;-><init>(Lcom/google/android/gms/measurement/internal/es;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 269
    invoke-direct {v1, v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    goto :goto_1a

    .line 268
    :cond_39
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->q()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    .line 270
    :goto_1a
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/fd;->f(Ljava/lang/String;)V

    .line 271
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/fd;->b(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 274
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v9

    if-eqz v9, :cond_3a

    goto :goto_1c

    :cond_3a
    :goto_1b
    const-wide/16 v9, 0x0

    goto :goto_1d

    :cond_3b
    :goto_1c
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 275
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/il;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 276
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/fd;->e(Ljava/lang/String;)V

    goto :goto_1b

    .line 277
    :goto_1d
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;->g(J)V

    .line 278
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;->a(J)V

    .line 279
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;->b(J)V

    .line 280
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/fd;->g(Ljava/lang/String;)V

    .line 281
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;->c(J)V

    .line 282
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/fd;->h(Ljava/lang/String;)V

    .line 283
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;->d(J)V

    .line 284
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;->e(J)V

    .line 285
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/fd;->a(Z)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/dc;->at:Lcom/google/android/gms/measurement/internal/da;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v9

    if-nez v9, :cond_3c

    .line 287
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;->j(J)V

    .line 288
    :cond_3c
    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;->f(J)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 289
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 290
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 291
    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 293
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 294
    :cond_3e
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fd;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 295
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fd;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    .line 296
    :cond_3f
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fd;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 297
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fd;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->k(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/cd;

    :cond_40
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 298
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 299
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v14, 0x0

    .line 300
    :goto_1e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_41

    .line 301
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cp;->d()Lcom/google/android/gms/internal/measurement/co;

    move-result-object v5

    .line 302
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/js;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/co;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/co;

    .line 303
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/js;

    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/js;->d:J

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/measurement/co;->a(J)Lcom/google/android/gms/internal/measurement/co;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 304
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 305
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/js;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/co;Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cd;->a(Lcom/google/android/gms/internal/measurement/co;)Lcom/google/android/gms/internal/measurement/cd;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    :cond_41
    :try_start_10
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 307
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 308
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/ce;

    .line 309
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 310
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/je;->v()V

    .line 311
    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30000
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 312
    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ey;->j()[B

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 314
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 315
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/jq;->a([B)J

    move-result-wide v9

    new-instance v11, Landroid/content/ContentValues;

    .line 316
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 31000
    iget-object v12, v5, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    move-object/from16 v13, v32

    .line 317
    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v14, v31

    invoke-virtual {v11, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "metadata"

    .line 319
    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 320
    :try_start_11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v12, "raw_events_metadata"
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v15, 0x4

    move-object/from16 v16, v4

    const/4 v4, 0x0

    .line 321
    :try_start_12
    invoke-virtual {v8, v12, v4, v11, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_6
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 331
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v5, Lcom/google/android/gms/measurement/internal/p;

    .line 332
    invoke-direct {v5, v4}, Lcom/google/android/gms/measurement/internal/p;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 333
    :cond_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 334
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p;->a()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    :goto_1f
    const/16 v33, 0x1

    goto :goto_20

    .line 368
    :cond_43
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 336
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 337
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ej;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 338
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->p()J

    move-result-wide v16

    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v4

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/i;->a(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/g;

    move-result-object v4

    if-eqz v2, :cond_44

    iget-wide v4, v4, Lcom/google/android/gms/measurement/internal/g;->e:J

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/measurement/internal/dc;->n:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v2, v8, v11}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)I

    move-result v2

    int-to-long v11, v2

    cmp-long v2, v4, v11

    if-gez v2, :cond_44

    goto :goto_1f

    :cond_44
    const/16 v33, 0x0

    .line 341
    :goto_20
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 342
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/je;->v()V

    .line 343
    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 344
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 345
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 346
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/measurement/internal/n;)Lcom/google/android/gms/internal/measurement/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ey;->j()[B

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    .line 347
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    .line 348
    invoke-virtual {v4, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "name"

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    .line 349
    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "timestamp"

    iget-wide v11, v7, Lcom/google/android/gms/measurement/internal/n;->d:J

    .line 350
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 351
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "data"

    .line 352
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "realtime"

    .line 353
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 354
    :try_start_14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v5, 0x0

    .line 355
    invoke-virtual {v2, v6, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v2, v4, v8

    if-nez v2, :cond_45

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 356
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 32000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Failed to insert raw event (got -1). appId"

    .line 357
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 358
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_23

    :cond_45
    const-wide/16 v4, 0x0

    .line 368
    :try_start_15
    iput-wide v4, v1, Lcom/google/android/gms/measurement/internal/jo;->g:J

    goto :goto_23

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 326
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 359
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 41000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Error storing raw event. appId"

    .line 360
    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 361
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_23

    :catch_5
    move-exception v0

    goto :goto_22

    :catch_6
    move-exception v0

    goto :goto_21

    :catch_7
    move-exception v0

    move-object/from16 v16, v4

    :goto_21
    move-object v2, v0

    .line 330
    :try_start_16
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 322
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 39000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Error storing raw event metadata. appId"

    .line 40000
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 324
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 325
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    throw v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :catch_8
    move-exception v0

    move-object/from16 v16, v4

    :goto_22
    move-object v2, v0

    .line 327
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 38000
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Data loss. Failed to insert raw event metadata. appId"

    .line 329
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/measurement/cd;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 330
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    :goto_23
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 362
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 363
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 72
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 33000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 367
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v29

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 368
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 385
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 72
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 384
    throw v2

    .line 385
    :cond_46
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    return-void
.end method

.method private final e(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->ag:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2

    .line 2
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

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

.method private o()Lcom/google/android/gms/measurement/internal/dw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->m:Lcom/google/android/gms/measurement/internal/dw;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private p()J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/je;->v()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/ea;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ju;->l()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/il;->e:Lcom/google/android/gms/measurement/internal/ea;

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

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

.method private q()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ju;->l()Ljava/security/SecureRandom;

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

.method private final r()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->f()Ljava/lang/String;

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

.method private final s()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->t:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51126
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Stopping uploading service(s)"

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->h:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 9
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

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->h:Ljava/util/List;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51125
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 3
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/jo;->t:Z

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    .line 6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 7
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private t()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->af:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->v:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51142
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 51139
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    .line 7
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 8
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->w:Ljava/nio/channels/FileChannel;

    .line 9
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->v:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51140
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    return v1

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51141
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Storage concurrent data access panic"

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51145
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Storage lock already acquired"

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51144
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Failed to access storage lock file"

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51143
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Failed to acquire storage lock"

    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final W_()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final X_()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final Y_()Lcom/google/android/gms/common/util/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/es;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    return-object v0
.end method

.method final a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;
    .locals 6

    sget-object v0, Lcom/google/android/gms/measurement/internal/f;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->A:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/f;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/je;->v()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

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

    .line 13
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "G1"

    .line 18
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Database error"

    .line 15
    invoke-virtual {v0, v1, v5, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v3, :cond_3

    .line 12
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 17
    :cond_3
    throw p1

    :cond_4
    return-object v0
.end method

.method final a(ILjava/lang/Throwable;[B)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->x:Ljava/util/List;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->x:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0xc8

    const/16 v4, 0xcc

    if-eq p1, v3, :cond_1

    if-ne p1, v4, :cond_6

    const/16 p1, 0xcc

    :cond_1
    if-nez p2, :cond_6

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/il;->c:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/measurement/internal/ea;

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 51103
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Successful upload. Got network response. code, size"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v5, p1, p3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->b()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/je;->v()V

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    .line 18
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v5, "queue"

    const-string v6, "rowid=?"

    .line 19
    invoke-virtual {v1, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    const-string v5, "Deleted fewer rows from queue than expected"

    invoke-direct {v1, v5}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v1

    .line 33
    :try_start_5
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p3

    .line 51107
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Failed to delete a bundle in a queue table"

    .line 22
    invoke-virtual {p3, v5, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p3

    .line 34
    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->y:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 24
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    throw p3

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->y:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->l:Lcom/google/android/gms/measurement/internal/du;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/du;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->r()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->l()V

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 46
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/jo;->z:J

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 32
    :goto_1
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/jo;->g:J

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 27
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 34
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p1

    .line 35
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 51105
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string p3, "Database error while trying to delete uploaded bundles"

    .line 35
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/jo;->g:J

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 51106
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "Disable upload, time"

    .line 37
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/jo;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 38
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p3

    .line 51104
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Network upload failed. Will retry later. code, error"

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 41
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 42
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/il;->b:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 44
    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/util/List;)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->m()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 32
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->t:Z

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->s()V

    return-void

    :catchall_1
    move-exception p1

    .line 45
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->t:Z

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->s()V

    .line 47
    throw p1
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 8
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->b()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/i;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51180
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 19
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 21
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzh:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 26
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:J

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzf:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    goto :goto_0

    .line 41
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzf:Ljava/lang/String;

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 24
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzf:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    const/4 p1, 0x1

    .line 27
    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    new-instance v9, Lcom/google/android/gms/measurement/internal/js;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:J

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/js;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 31
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/js;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51181
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "User property updated immediately"

    .line 33
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    .line 36
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51184
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "(2)Too many active user properties, ignoring"

    .line 38
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    .line 41
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz p1, :cond_6

    .line 36
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzd:J

    .line 42
    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    .line 43
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 51182
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "Conditional property added"

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 48
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 49
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 52
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 51183
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "Too many conditional properties, ignoring"

    .line 53
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 54
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 55
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 57
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :catchall_0
    move-exception p1

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 60
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 62
    throw p1
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 5
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 6
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 7
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    return-void

    .line 11
    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzt:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 12
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    .line 14
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzas;

    .line 15
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 18000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    .line 109
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzas;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 110
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 15
    :cond_3
    :goto_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->b()V

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 18
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/je;->v()V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v13, 0x1

    cmp-long v9, v11, v5

    if-gez v9, :cond_4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 22
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 11000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Invalid time querying timed out conditional properties"

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 24
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 25
    invoke-virtual {v4, v5, v6, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 27
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 28
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 29
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

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 12000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v10, "User property timed out"

    .line 31
    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 32
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v15

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 33
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v15, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 34
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 35
    invoke-virtual {v6, v10, v14, v13, v15}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzg:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v6, :cond_6

    new-instance v10, Lcom/google/android/gms/measurement/internal/zzas;

    .line 36
    invoke-direct {v10, v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-direct {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_6
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 37
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 38
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v3, v5}, Lcom/google/android/gms/measurement/internal/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    goto :goto_2

    :cond_7
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 39
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 40
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 42
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/je;->v()V

    if-gez v9, :cond_8

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 43
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 13000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Invalid time querying expired conditional properties"

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 45
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 46
    invoke-virtual {v4, v5, v6, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_8
    new-array v5, v8, [Ljava/lang/String;

    aput-object v3, v5, v7

    .line 48
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v5, v10

    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 49
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 47
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    .line 50
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
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

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v10

    .line 14000
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v13, "User property expired"

    .line 53
    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 54
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v15

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 55
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v15, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 56
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 57
    invoke-virtual {v10, v13, v14, v8, v15}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 58
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v10, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 59
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v3, v10}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v8, :cond_a

    .line 60
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 61
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 62
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v8, v3, v6}, Lcom/google/android/gms/measurement/internal/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto :goto_4

    .line 63
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

    .line 64
    invoke-direct {v6, v5, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-direct {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_5

    :cond_c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 65
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 66
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    .line 67
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 70
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/je;->v()V

    if-gez v9, :cond_d

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 71
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v6

    .line 15000
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 72
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 73
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v4

    .line 74
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 76
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_6

    :cond_d
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v5, v6, v3

    .line 78
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v6, v5

    const-string v3, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 79
    invoke-virtual {v4, v3, v6}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 77
    :goto_6
    new-instance v13, Ljava/util/ArrayList;

    .line 80
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
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

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    new-instance v15, Lcom/google/android/gms/measurement/internal/js;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 82
    invoke-static {v5}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    .line 83
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v15

    move-wide v8, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/js;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 84
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 85
    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/js;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 16000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "User property triggered"

    .line 87
    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 88
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    .line 89
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    .line 90
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 91
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 17000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Too many active user properties, ignoring"

    .line 92
    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 93
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    .line 94
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v15, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    .line 95
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    :goto_8
    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzi:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v4, :cond_10

    .line 96
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkl;

    .line 97
    invoke-direct {v4, v15}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/js;)V

    iput-object v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 98
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 99
    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/zzaa;)Z

    goto/16 :goto_7

    .line 100
    :cond_11
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 101
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

    .line 102
    invoke-direct {v4, v3, v11, v12}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Lcom/google/android/gms/measurement/internal/zzas;J)V

    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_9

    :cond_12
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 103
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :catchall_0
    move-exception v0

    .line 110
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 105
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 107
    throw v0
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/fd;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    .line 6
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 9000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 10000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 31
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 32
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzp;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->d()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->k()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v6

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->m()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->n()J

    move-result-wide v9

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->o()J

    move-result-wide v11

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->q()Z

    move-result v16

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->h()Ljava/lang/String;

    move-result-object v17

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->w()J

    move-result-wide v24

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->x()Z

    move-result v22

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->e()Ljava/lang/String;

    move-result-object v26

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->y()Ljava/lang/Boolean;

    move-result-object v27

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->p()J

    move-result-wide v28

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->z()Ljava/util/List;

    move-result-object v30

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->ag:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v13, v15, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_3

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v13

    .line 26
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v15, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v2, v13, v15}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 27
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->a()Ljava/lang/String;

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

    .line 28
    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 4
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 8000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "No app data available; dropping event"

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 3
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    return-void

    .line 6
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x1

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v8, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    .line 9
    invoke-static {v7, v4, v3}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/jo;->B:Lcom/google/android/gms/measurement/internal/jt;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->ay:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v12

    const-string v9, "_ev"

    move-object v5, v0

    .line 13
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/jt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 14
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/ju;->b(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v13

    if-eqz v13, :cond_6

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    .line 17
    invoke-static {v7, v4, v3}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v15

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->B:Lcom/google/android/gms/measurement/internal/jt;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->ay:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v17

    const-string v14, "_ev"

    .line 24
    invoke-virtual/range {v10 .. v17}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/jt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    return-void

    .line 25
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzkl;->zza()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/ju;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    .line 27
    :cond_7
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    const-string v6, "_sid"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 28
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:J

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzf:Ljava/lang/String;

    .line 29
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 30
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    const-string v7, "_sno"

    .line 31
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/i;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/js;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    .line 32
    instance-of v10, v7, Ljava/lang/Long;

    if-eqz v10, :cond_8

    .line 41
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_9

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v7

    .line 51150
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 34
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    const-string v10, "Retrieved last session number from database does not contain a valid (long) value"

    .line 35
    invoke-virtual {v7, v10, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 36
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    const-string v7, "_s"

    .line 37
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/o;->c:J

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 51151
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "Backfill the session number. Last used session number"

    invoke-virtual {v4, v12, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const-wide/16 v6, 0x0

    .line 41
    :goto_2
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkl;

    const-wide/16 v12, 0x1

    add-long/2addr v6, v12

    .line 42
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "_sno"

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_b
    new-instance v4, Lcom/google/android/gms/measurement/internal/js;

    .line 44
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 45
    invoke-static {v6}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzf:Ljava/lang/String;

    .line 46
    invoke-static {v6}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzc:J

    move-object v7, v4

    move-object v13, v3

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/js;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51148
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 48
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 49
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    .line 50
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Setting user property"

    .line 51
    invoke-virtual {v0, v7, v6, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    .line 54
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 56
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/js;)Z

    move-result v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 57
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 58
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->U_()V

    if-nez v0, :cond_c

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51149
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Too many unique user properties are set. Ignoring user property"

    .line 60
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 61
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    .line 63
    invoke-virtual {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->B:Lcom/google/android/gms/measurement/internal/jt;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->ay:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v0, v5, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v14

    const/16 v10, 0x9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 66
    invoke-virtual/range {v7 .. v14}, Lcom/google/android/gms/measurement/internal/ju;->a(Lcom/google/android/gms/measurement/internal/jt;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :catchall_0
    move-exception v0

    .line 40
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 67
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 69
    throw v0
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    const-string v0, "app_id=?"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->x:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->x:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/je;->v()V

    .line 8
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

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

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51146
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Reset analytics data. app, records"

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 25
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51147
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 22
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 23
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method

.method final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 7
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
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51112
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 4
    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

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
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 51113
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x194

    const/4 v6, 0x0

    if-nez v3, :cond_7

    if-ne p2, v5, :cond_4

    goto :goto_1

    .line 38
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/fd;->i(J)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 39
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 40
    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p4

    .line 51116
    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string p5, "Fetching config failed. code, error"

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 42
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 51117
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/ej;->b:Ljava/util/Map;

    .line 51118
    invoke-interface {p3, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 44
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/measurement/internal/ea;

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 46
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/il;->b:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    .line 47
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    goto/16 :goto_7

    :cond_7
    :goto_1
    if-eqz p5, :cond_8

    const-string p3, "Last-Modified"

    .line 12
    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    goto :goto_2

    :cond_8
    move-object p3, v6

    :goto_2
    if-eqz p3, :cond_9

    .line 13
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_9

    .line 14
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_3

    :cond_9
    move-object p3, v6

    :goto_3
    if-eq p2, v5, :cond_b

    if-ne p2, v4, :cond_a

    goto :goto_5

    .line 33
    :cond_a
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 22
    invoke-static {p5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 23
    invoke-virtual {p5, p1, p4, p3}, Lcom/google/android/gms/measurement/internal/ej;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_c

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 20
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->V_()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->s()V

    return-void

    .line 14
    :cond_b
    :goto_5
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 16
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/ej;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object p3

    if-nez p3, :cond_c

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 17
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 18
    invoke-virtual {p3, p1, v6, v6}, Lcom/google/android/gms/measurement/internal/ej;->a(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p3, :cond_c

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 24
    :cond_c
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/fd;->h(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 25
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 26
    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/fd;)V

    if-ne p2, v5, :cond_d

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 51114
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->h:Lcom/google/android/gms/measurement/internal/dm;

    const-string p3, "Config not found. Using empty config. appId"

    .line 29
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 30
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 51115
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 33
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :goto_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->l:Lcom/google/android/gms/measurement/internal/du;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/du;->b()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->r()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->l()V

    goto :goto_7

    .line 36
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 11
    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 51
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 50
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 47
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->s:Z

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->s()V

    .line 51
    throw p1
.end method

.method final a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/f;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->A:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 7
    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    .line 6
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/je;->v()V

    new-instance v1, Landroid/content/ContentValues;

    .line 12
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 13
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/f;->a()Ljava/lang/String;

    move-result-object p2

    const-string v3, "consent_state"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v3, "consent_settings"

    const/4 v4, 0x5

    .line 16
    invoke-virtual {p2, v3, v2, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 5000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    .line 22
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    return-object v0
.end method

.method final b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 5
    :cond_0
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/fd;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51179
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 28
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    .line 29
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 7
    :cond_2
    :goto_0
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzp;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->d()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->k()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v6

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->m()Ljava/lang/String;

    move-result-object v8

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->n()J

    move-result-wide v9

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->o()J

    move-result-wide v15

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->q()Z

    move-result v13

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->h()Ljava/lang/String;

    move-result-object v17

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->w()J

    move-result-wide v23

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->x()Z

    move-result v21

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->e()Ljava/lang/String;

    move-result-object v25

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->y()Ljava/lang/Boolean;

    move-result-object v26

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->p()J

    move-result-wide v27

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->z()Ljava/util/List;

    move-result-object v29

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/dc;->ag:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->f()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_1

    :cond_3
    move-object/from16 v31, v3

    .line 24
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v11, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v1, v3, v11}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->a()Ljava/lang/String;

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

    .line 26
    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v30

    .line 4
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51178
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "No app data available; dropping"

    .line 4
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method

.method final b(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 7
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/i;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51185
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Removing conditional user property"

    .line 16
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 18
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zze:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzas;->zzb:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zzf()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzk:Lcom/google/android/gms/measurement/internal/zzas;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzas;->zzd:J

    const/4 v8, 0x1

    .line 27
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 51186
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Conditional user property doesn\'t exist"

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :catchall_0
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 38
    throw p1

    .line 39
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    return-void
.end method

.method final b(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    return-void

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 51152
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    .line 29
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkl;

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 31
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

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

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51153
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v1

    .line 10
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->b()V

    .line 14
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 16
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 17
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->U_()V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 51154
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "User property removed"

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v1

    .line 24
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zzb:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :catchall_0
    move-exception p1

    .line 25
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 26
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 28
    throw p1
.end method

.method final b(Lcom/google/android/gms/measurement/internal/zzp;)V
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
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/jo;->e(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v8

    if-eqz v8, :cond_26

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 6
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 7
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_0

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fd;->d()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 10
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/fd;->h(J)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 11
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 12
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/fd;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->a:Lcom/google/android/gms/measurement/internal/ej;

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 14
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 51155
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/ej;->a:Ljava/util/Map;

    .line 51156
    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-boolean v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    if-nez v8, :cond_1

    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    return-void

    .line 17
    :cond_1
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzm:J

    cmp-long v8, v11, v9

    if-nez v8, :cond_2

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v11

    :cond_2
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 19
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->n()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v8

    .line 51157
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    const/4 v15, 0x0

    iput-object v15, v8, Lcom/google/android/gms/measurement/internal/m;->a:Ljava/lang/Boolean;

    iput-wide v9, v8, Lcom/google/android/gms/measurement/internal/m;->b:J

    .line 21
    iget v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzn:I

    const/4 v14, 0x1

    if-eqz v8, :cond_3

    if-eq v8, v14, :cond_3

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v13

    .line 51158
    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 23
    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    .line 25
    invoke-virtual {v13, v9, v15, v8}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :cond_3
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 26
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/i;->b()V

    :try_start_0
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 28
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 29
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v13, "_npa"

    .line 30
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/i;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/js;

    move-result-object v9

    if-eqz v9, :cond_5

    const-string v13, "auto"

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/js;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    move-object/from16 v22, v3

    goto :goto_2

    .line 32
    :cond_5
    :goto_0
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    if-eqz v10, :cond_8

    .line 33
    new-instance v13, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v19, "_npa"

    .line 34
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v14, 0x1

    if-eq v14, v10, :cond_6

    const-wide/16 v22, 0x0

    goto :goto_1

    :cond_6
    const-wide/16 v22, 0x1

    :goto_1
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v18, "auto"

    move-object/from16 v22, v3

    move-object v15, v13

    const/4 v3, 0x0

    move-object v13, v15

    const/4 v3, 0x1

    move-object/from16 v14, v19

    move-object v3, v15

    move-wide v15, v11

    move-object/from16 v17, v10

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_7

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/js;->e:Ljava/lang/Object;

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkl;->zzd:Ljava/lang/Long;

    .line 35
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 36
    :cond_7
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2

    :cond_8
    move-object/from16 v22, v3

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
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 36
    :cond_9
    :goto_2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 39
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 40
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    .line 42
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/fd;->d()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    .line 43
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/fd;->e()Ljava/lang/String;

    move-result-object v13

    .line 44
    invoke-static {v3, v9, v10, v13}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 51159
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v9, "New GMP App Id passed in. Removing cached database data. appId"

    .line 47
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 48
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 49
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 50
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v9

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/je;->v()V

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 53
    invoke-static {v9}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v9, v14, v13

    const-string v13, "events"

    .line 55
    invoke-virtual {v10, v13, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    const-string v15, "user_attributes"

    .line 56
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "conditional_properties"

    .line 57
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "apps"

    .line 58
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "raw_events"

    .line 59
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "raw_events_metadata"

    .line 60
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "event_filters"

    .line 61
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "property_filters"

    .line 62
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "audience_filter_values"

    .line 63
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v13, v15

    const-string v15, "consent_settings"

    .line 64
    invoke-virtual {v10, v15, v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v13, v0

    if-lez v13, :cond_a

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51160
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v10, "Deleted application data. app, records"

    .line 66
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v10, v9, v13}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 203
    :try_start_2
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 51174
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v10, "Error deleting application data. appId, error"

    .line 68
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 69
    invoke-virtual {v3, v10, v9, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    :goto_3
    const/4 v15, 0x0

    :cond_b
    if-eqz v15, :cond_e

    .line 70
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v9

    const-wide/32 v13, -0x80000000

    cmp-long v0, v9, v13

    if-eqz v0, :cond_c

    .line 71
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v9

    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    cmp-long v0, v9, v13

    if-eqz v0, :cond_c

    const/4 v14, 0x1

    goto :goto_4

    :cond_c
    const/4 v14, 0x0

    .line 72
    :goto_4
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/fd;->k()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v9

    const-wide/32 v15, -0x80000000

    cmp-long v3, v9, v15

    if-nez v3, :cond_d

    if-eqz v0, :cond_d

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :goto_5
    or-int/2addr v3, v14

    if-eqz v3, :cond_e

    new-instance v3, Landroid/os/Bundle;

    .line 75
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v9, "_pv"

    .line 76
    invoke-virtual {v3, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_au"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 78
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 79
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;

    if-nez v8, :cond_f

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 80
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 81
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v8, "_f"

    .line 82
    invoke-virtual {v0, v3, v8}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    const/4 v14, 0x0

    goto :goto_6

    .line 198
    :cond_f
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 84
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const-string v8, "_v"

    .line 85
    invoke-virtual {v0, v3, v8}, Lcom/google/android/gms/measurement/internal/i;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    const/4 v14, 0x1

    :goto_6
    if-nez v0, :cond_24

    const-wide/32 v8, 0x36ee80

    .line 82
    div-long v15, v11, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v4

    const-wide/16 v3, 0x1

    add-long/2addr v15, v3

    mul-long v15, v15, v8

    const-string v8, "_dac"

    const-string v9, "_r"

    const-string v13, "_c"

    const-string v3, "_et"

    if-nez v14, :cond_22

    .line 86
    :try_start_3
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v14, "_fot"

    .line 87
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v4, v13

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 51161
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->l:Lcom/google/android/gms/measurement/internal/eh;

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/measurement/internal/eh;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_10

    goto/16 :goto_8

    .line 158
    :cond_10
    iget-object v14, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 95
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 96
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/eh;->a()Z

    move-result v14

    if-nez v14, :cond_11

    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51167
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->i:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Install Referrer Reporter is not available"

    .line 97
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    move-wide/from16 v20, v11

    goto/16 :goto_9

    :cond_11
    new-instance v14, Lcom/google/android/gms/measurement/internal/eg;

    .line 98
    invoke-direct {v14, v13, v0}, Lcom/google/android/gms/measurement/internal/eg;-><init>(Lcom/google/android/gms/measurement/internal/eh;Ljava/lang/String;)V

    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    new-instance v0, Landroid/content/Intent;

    const-string v15, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 100
    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v15, Landroid/content/ComponentName;

    move-wide/from16 v20, v11

    const-string v11, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 101
    invoke-direct {v15, v5, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 51168
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 102
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    if-nez v11, :cond_12

    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51169
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->g:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 105
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_12
    const/4 v12, 0x0

    .line 106
    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_15

    .line 107
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_15

    .line 111
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 112
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_17

    .line 113
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 114
    iget-object v11, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v11, :cond_14

    .line 115
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 96
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/eh;->a()Z

    move-result v5

    if-eqz v5, :cond_14

    new-instance v5, Landroid/content/Intent;

    .line 119
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v11, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 51170
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    const/4 v12, 0x1

    .line 121
    invoke-virtual {v0, v11, v5, v14, v12}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 122
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v5

    .line 51171
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v11, "Install Referrer Service is"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v12, v0, :cond_13

    const-string v0, "not available"

    goto :goto_7

    :cond_13
    const-string v0, "available"

    .line 124
    :goto_7
    :try_start_5
    invoke-virtual {v5, v11, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v0

    .line 165
    :try_start_6
    iget-object v5, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 125
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v5

    .line 51177
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v11, "Exception occurred while binding to Install Referrer Service"

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v5, v11, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    .line 124
    :cond_14
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 116
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51172
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 118
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51173
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->i:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Play Service for fetching Install Referrer is unavailable on device"

    .line 110
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_9

    :cond_16
    :goto_8
    move-wide/from16 v20, v11

    .line 91
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/eh;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 92
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51162
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->g:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Install Referrer Reporter was called with invalid app package name"

    .line 94
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 129
    :cond_17
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    new-instance v5, Landroid/os/Bundle;

    .line 131
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v11, 0x1

    .line 132
    invoke-virtual {v5, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 133
    invoke-virtual {v5, v9, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    .line 134
    invoke-virtual {v5, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 135
    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 136
    invoke-virtual {v5, v10, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v4, v22

    .line 137
    invoke-virtual {v5, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x1

    .line 138
    invoke-virtual {v5, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 139
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v0, :cond_18

    .line 140
    invoke-virtual {v5, v8, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 141
    :cond_18
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 142
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 143
    invoke-static {v8}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/je;->v()V

    .line 146
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/i;->c(Ljava/lang/String;)J

    move-result-wide v11

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 51163
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51164
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    .line 171
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 172
    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v22, v3

    :cond_19
    :goto_a
    const-wide/16 v3, 0x0

    goto/16 :goto_11

    .line 202
    :cond_1a
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 51165
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 150
    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/common/d/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    :catch_2
    move-exception v0

    .line 151
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v9

    .line 51175
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v13, "Package info is null, first open report might be inaccurate. appId"

    .line 152
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 153
    invoke-virtual {v9, v13, v14, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x0

    :goto_b
    if-eqz v15, :cond_1f

    .line 154
    iget-wide v13, v15, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v16, 0x0

    cmp-long v0, v13, v16

    if-eqz v0, :cond_1f

    .line 155
    iget-wide v13, v15, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v22, v3

    move-object v9, v4

    iget-wide v3, v15, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v13, v3

    if-eqz v0, :cond_1d

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->ak:Lcom/google/android/gms/measurement/internal/da;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-nez v0, :cond_1b

    const-wide/16 v13, 0x1

    .line 157
    invoke-virtual {v5, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1b
    :goto_c
    const/4 v14, 0x0

    goto :goto_d

    :cond_1c
    const-wide/16 v13, 0x1

    .line 158
    invoke-virtual {v5, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_c

    :cond_1d
    const/4 v4, 0x0

    const/4 v14, 0x1

    .line 157
    :goto_d
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v3, "_fi"

    const/4 v7, 0x1

    if-eq v7, v14, :cond_1e

    const-wide/16 v14, 0x0

    goto :goto_e

    :cond_1e
    const-wide/16 v14, 0x1

    .line 159
    :goto_e
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-object v14, v3

    move-wide/from16 v15, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_f

    :cond_1f
    move-object/from16 v22, v3

    move-object v9, v4

    const/4 v4, 0x0

    :goto_f
    :try_start_9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 51166
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 162
    invoke-static {v0}, Lcom/google/android/gms/common/d/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/d/b;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3}, Lcom/google/android/gms/common/d/b;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_10

    :catch_3
    move-exception v0

    .line 163
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 51176
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v7, "Application info is null, first open report might be inaccurate. appId"

    .line 164
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 165
    invoke-virtual {v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v15, v4

    :goto_10
    if-eqz v15, :cond_19

    .line 166
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_20

    const-wide/16 v3, 0x1

    .line 167
    invoke-virtual {v5, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 168
    :cond_20
    iget v0, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_19

    const-wide/16 v3, 0x1

    .line 169
    invoke-virtual {v5, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_a

    :goto_11
    cmp-long v0, v11, v3

    if-ltz v0, :cond_21

    .line 173
    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 174
    :cond_21
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_f"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v5}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 175
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    move-object/from16 v3, v22

    goto :goto_12

    :cond_22
    move-object/from16 v22, v3

    move-wide/from16 v20, v11

    move-object v4, v13

    .line 176
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkl;

    const-string v14, "_fvt"

    .line 177
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide/from16 v15, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    new-instance v0, Landroid/os/Bundle;

    .line 181
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    .line 182
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 183
    invoke-virtual {v0, v9, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v3, v22

    .line 184
    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzp:Z

    if-eqz v4, :cond_23

    .line 186
    invoke-virtual {v0, v8, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    :cond_23
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_v"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v4

    move-wide/from16 v17, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 188
    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 189
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->T:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    .line 190
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v4, 0x1

    .line 191
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_fr"

    .line 192
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_e"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 193
    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 194
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_13

    :cond_24
    move-wide/from16 v20, v11

    .line 195
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->zzi:Z

    if-eqz v0, :cond_25

    new-instance v0, Landroid/os/Bundle;

    .line 196
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzas;

    const-string v14, "_cd"

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Landroid/os/Bundle;)V

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;J)V

    .line 198
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 194
    :cond_25
    :goto_13
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 199
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 200
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->U_()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 201
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    return-void

    :catchall_0
    move-exception v0

    .line 38
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 201
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 202
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->V_()V

    .line 203
    throw v0

    :cond_26
    return-void
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/do;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/es;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    return-object v0
.end method

.method final c(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/fd;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/f;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/f;->b(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 14
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/il;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kn;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->al:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v3

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_12

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/measurement/internal/fd;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 80
    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-direct {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/fd;-><init>(Lcom/google/android/gms/measurement/internal/es;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    .line 86
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 87
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fd;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 82
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fd;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    sget-object v7, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    if-eqz v2, :cond_8

    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 97
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fd;->e(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 100
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 92
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 96
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    .line 101
    :cond_9
    :goto_2
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->b(Ljava/lang/String;)V

    .line 102
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->c(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->ag:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 104
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->d(Ljava/lang/String;)V

    .line 105
    :cond_a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 106
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->f(Ljava/lang/String;)V

    .line 107
    :cond_b
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_c

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->d(J)V

    .line 109
    :cond_c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 110
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->g(Ljava/lang/String;)V

    .line 111
    :cond_d
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->c(J)V

    .line 112
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->h(Ljava/lang/String;)V

    .line 114
    :cond_e
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->e(J)V

    .line 115
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Z)V

    .line 116
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 117
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->i(Ljava/lang/String;)V

    .line 118
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->at:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 119
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->j(J)V

    .line 120
    :cond_10
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->b(Z)V

    .line 121
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/Boolean;)V

    .line 122
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->f(J)V

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->a()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 124
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/fd;)V

    :cond_11
    return-object v0

    .line 16
    :cond_12
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/f;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v7, v4, v8}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 18
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    .line 19
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/f;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/f;->b(Lcom/google/android/gms/measurement/internal/f;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v3

    :cond_13
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_17

    new-instance v0, Lcom/google/android/gms/measurement/internal/fd;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 20
    invoke-direct {v0, v7, v1}, Lcom/google/android/gms/measurement/internal/fd;-><init>(Lcom/google/android/gms/measurement/internal/es;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v7, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v1, v4, v7}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 25
    invoke-direct {p0, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    .line 26
    :cond_14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 27
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fd;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 22
    :cond_15
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fd;->e(Ljava/lang/String;)V

    :cond_16
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 28
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v1, v4, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 30
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_18
    if-eqz v2, :cond_1a

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 37
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fd;->e(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 41
    invoke-direct {p0, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :cond_19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 36
    invoke-direct {p0, v3}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 42
    :cond_1b
    :goto_4
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 43
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->b(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 44
    :cond_1c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 45
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->c(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 46
    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/la;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->ag:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 47
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 48
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->d(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 49
    :cond_1e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 51
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->f(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 52
    :cond_1f
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->n()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_20

    .line 53
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->d(J)V

    const/4 v7, 0x1

    .line 54
    :cond_20
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 56
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->g(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 57
    :cond_21
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->l()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_22

    .line 58
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->c(J)V

    const/4 v7, 0x1

    .line 59
    :cond_22
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 60
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->h(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 61
    :cond_23
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->o()J

    move-result-wide v9

    cmp-long v3, v1, v9

    if-eqz v3, :cond_24

    .line 62
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->e(J)V

    const/4 v7, 0x1

    .line 63
    :cond_24
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->q()Z

    move-result v2

    if-eq v1, v2, :cond_25

    .line 64
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Z)V

    const/4 v7, 0x1

    .line 65
    :cond_25
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 67
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->i(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 68
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->at:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 69
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->w()J

    move-result-wide v3

    cmp-long v9, v1, v3

    if-eqz v9, :cond_27

    .line 70
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->j(J)V

    const/4 v7, 0x1

    .line 71
    :cond_27
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->x()Z

    move-result v2

    if-eq v1, v2, :cond_28

    .line 72
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->b(Z)V

    const/4 v7, 0x1

    .line 73
    :cond_28
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->y()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_29

    .line 74
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzr:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Ljava/lang/Boolean;)V

    goto :goto_5

    :cond_29
    move v8, v7

    .line 75
    :goto_5
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_2a

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->p()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2a

    .line 77
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/fd;->f(J)V

    goto :goto_6

    :cond_2a
    if-eqz v8, :cond_2b

    :goto_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/i;->a(Lcom/google/android/gms/measurement/internal/fd;)V

    :cond_2b
    return-object v0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/ep;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/es;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    return-object v0
.end method

.method final d(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/jk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/jk;-><init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

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
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51187
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 6
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/du;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->l:Lcom/google/android/gms/measurement/internal/du;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/measurement/internal/jq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/ju;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/es;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    return-object v0
.end method

.method final i()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final l()V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    const/4 v3, 0x0

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->m()Lcom/google/android/gms/measurement/internal/ik;

    move-result-object v0

    .line 44000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ik;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 45000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    .line 8
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->s()V

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 46000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Upload called in the client side when service should be used"

    .line 178
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    goto :goto_0

    .line 8
    :cond_1
    :try_start_2
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/jo;->g:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    goto :goto_0

    .line 10
    :cond_2
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->x:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 47000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Uploading requested multiple times"

    .line 11
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    goto :goto_0

    .line 8
    :cond_3
    :try_start_4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->l:Lcom/google/android/gms/measurement/internal/du;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/du;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 48000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Network not connected, ignoring upload request"

    .line 14
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->m()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    goto :goto_0

    .line 16
    :cond_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v4

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/measurement/internal/dc;->P:Lcom/google/android/gms/measurement/internal/da;

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)I

    move-result v0

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/e;->h()J

    move-result-wide v10

    sub-long v10, v4, v10

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_5

    .line 19
    invoke-direct {v1, v10, v11}, Lcom/google/android/gms/measurement/internal/jo;->a(J)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/il;->c:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_6

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 49000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v4, v10

    .line 23
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 24
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->f()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v7, -0x1

    if-nez v0, :cond_2b

    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/jo;->z:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_a

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 28
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 29
    :try_start_6
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v11, "select rowid from raw_events order by rowid desc limit 1;"

    .line 30
    invoke-virtual {v0, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 31
    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v0, :cond_7

    if-eqz v11, :cond_8

    .line 32
    :goto_2
    :try_start_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_4

    .line 33
    :cond_7
    :try_start_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v11, :cond_8

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

    .line 179
    :goto_3
    :try_start_a
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v10

    .line 51008
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v12, "Error querying raw events"

    .line 35
    invoke-virtual {v10, v12, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v11, :cond_8

    goto :goto_2

    .line 32
    :cond_8
    :goto_4
    :try_start_b
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/jo;->z:J

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v9, v11

    :goto_5
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 36
    :cond_9
    throw v0

    .line 37
    :cond_a
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v7, Lcom/google/android/gms/measurement/internal/dc;->f:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)I

    move-result v0

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/dc;->g:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/e;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)I

    move-result v7

    .line 39
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 40
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 41
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 42
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/je;->v()V

    if-lez v0, :cond_b

    const/4 v10, 0x1

    goto :goto_7

    :cond_b
    const/4 v10, 0x0

    .line 43
    :goto_7
    invoke-static {v10}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    if-lez v7, :cond_c

    const/4 v10, 0x1

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    .line 44
    :goto_8
    invoke-static {v10}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    .line 45
    invoke-static {v6}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 46
    :try_start_c
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

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

    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 48
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 49
    :try_start_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_e

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v11, :cond_d

    .line 51
    :try_start_e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_d
    move-wide/from16 v20, v4

    goto/16 :goto_10

    .line 139
    :cond_e
    :try_start_f
    new-instance v12, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 53
    :goto_9
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 54
    :try_start_10
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 55
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    new-instance v9, Ljava/io/ByteArrayInputStream;

    .line 56
    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    .line 57
    invoke-direct {v0, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v10, 0x400

    new-array v10, v10, [B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-wide/from16 v20, v4

    .line 59
    :goto_a
    :try_start_12
    invoke-virtual {v0, v10}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_11

    .line 61
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 62
    invoke-virtual {v9}, Ljava/io/ByteArrayInputStream;->close()V

    .line 63
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 64
    :try_start_13
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    array-length v2, v0
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    add-int/2addr v2, v13

    if-le v2, v7, :cond_f

    goto/16 :goto_e

    .line 65
    :cond_f
    :try_start_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ce;->c()Lcom/google/android/gms/internal/measurement/cd;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/hn;[B)Lcom/google/android/gms/internal/measurement/hn;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/cd;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    const/4 v3, 0x2

    .line 69
    :try_start_15
    invoke-interface {v11, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 70
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/cd;->h(I)Lcom/google/android/gms/internal/measurement/cd;

    .line 71
    :cond_10
    array-length v0, v0

    add-int/2addr v13, v0

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ce;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :catch_2
    move-exception v0

    .line 75
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51013
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Failed to merge queued bundle. appId"

    .line 67
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 68
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto :goto_d

    :cond_11
    const/4 v5, 0x0

    .line 60
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

    .line 78
    :goto_b
    :try_start_17
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 73
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51012
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Failed to ungzip content"

    .line 74
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
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

    .line 157
    :goto_c
    :try_start_18
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51011
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Failed to unzip queued bundle. appId"

    .line 77
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 78
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :goto_d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-eqz v0, :cond_13

    if-le v13, v7, :cond_12

    goto :goto_e

    :cond_12
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    goto/16 :goto_9

    :cond_13
    :goto_e
    if-eqz v11, :cond_14

    .line 51
    :try_start_19
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :cond_14
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

    .line 36
    :goto_f
    :try_start_1a
    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 80
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51009
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Error querying bundles. appId"

    .line 81
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    if-eqz v11, :cond_15

    .line 51
    :try_start_1b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_15
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 87
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 88
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 89
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ce;

    .line 50000
    iget-object v4, v3, Lcom/google/android/gms/internal/measurement/ce;->zzy:Ljava/lang/String;

    .line 90
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 51000
    iget-object v2, v3, Lcom/google/android/gms/internal/measurement/ce;->zzy:Ljava/lang/String;

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    :goto_11
    if-eqz v2, :cond_1b

    const/4 v3, 0x0

    .line 92
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1b

    .line 93
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/ce;

    .line 51001
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/ce;->zzy:Ljava/lang/String;

    .line 94
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_13

    .line 51002
    :cond_19
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/ce;->zzy:Ljava/lang/String;

    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x0

    .line 96
    invoke-interface {v0, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_14

    :cond_1a
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 97
    :cond_1b
    :goto_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cc;->a()Lcom/google/android/gms/internal/measurement/cb;

    move-result-object v2

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 99
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/e;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 101
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 103
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    const/4 v5, 0x1

    goto :goto_15

    :cond_1d
    const/4 v5, 0x0

    .line 104
    :goto_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 106
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/f;->b()Z

    move-result v7

    if-eqz v7, :cond_1e

    goto :goto_16

    :cond_1e
    const/4 v7, 0x0

    goto :goto_17

    :cond_1f
    :goto_16
    const/4 v7, 0x1

    .line 107
    :goto_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 109
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/f;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/f;->c()Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_18

    :cond_20
    const/4 v8, 0x0

    goto :goto_19

    :cond_21
    :goto_18
    const/4 v8, 0x1

    :goto_19
    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v3, :cond_26

    .line 110
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/ce;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/gl;->m()Lcom/google/android/gms/internal/measurement/gi;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/cd;

    .line 111
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/cd;->m()Lcom/google/android/gms/internal/measurement/cd;

    move-wide/from16 v11, v20

    .line 113
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/cd;->a(J)Lcom/google/android/gms/internal/measurement/cd;

    const/4 v13, 0x0

    .line 115
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/measurement/cd;->b(Z)Lcom/google/android/gms/internal/measurement/cd;

    if-nez v5, :cond_22

    .line 116
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/cd;->v()Lcom/google/android/gms/internal/measurement/cd;

    .line 117
    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v15, 0x0

    invoke-virtual {v13, v15, v14}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v13

    if-eqz v13, :cond_24

    if-nez v7, :cond_23

    .line 119
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/cd;->n()Lcom/google/android/gms/internal/measurement/cd;

    .line 120
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/cd;->o()Lcom/google/android/gms/internal/measurement/cd;

    :cond_23
    if-nez v8, :cond_24

    .line 121
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/cd;->p()Lcom/google/android/gms/internal/measurement/cd;

    .line 122
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/measurement/internal/dc;->V:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v13, v6, v14}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 123
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/ce;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/ey;->j()[B

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 124
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 125
    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/jq;->a([B)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/cd;->k(J)Lcom/google/android/gms/internal/measurement/cd;

    .line 126
    :cond_25
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/cb;->a(Lcom/google/android/gms/internal/measurement/cd;)Lcom/google/android/gms/internal/measurement/cb;

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v20, v11

    goto :goto_1a

    :cond_26
    move-wide/from16 v11, v20

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/do;->ag_()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    .line 128
    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 129
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 130
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/cc;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/cc;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_27
    const/4 v0, 0x0

    :goto_1b
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 131
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 132
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/cc;

    .line 133
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ey;->j()[B

    move-result-object v14

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->p:Lcom/google/android/gms/measurement/internal/da;

    const/4 v9, 0x0

    .line 135
    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    .line 136
    :try_start_1c
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/jo;->x:Ljava/util/List;

    if-eqz v7, :cond_28

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 51004
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v7, "Set uploading progress before finishing the previous upload"

    .line 138
    invoke-virtual {v4, v7}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    goto :goto_1c

    .line 8
    :cond_28
    new-instance v7, Ljava/util/ArrayList;

    .line 139
    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v1, Lcom/google/android/gms/measurement/internal/jo;->x:Ljava/util/List;

    .line 138
    :goto_1c
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 140
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v4, v11, v12}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    const-string v4, "?"

    if-lez v3, :cond_29

    .line 141
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/cb;->a()Lcom/google/android/gms/internal/measurement/ce;

    move-result-object v2

    .line 51005
    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    .line 142
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51006
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Uploading data. app, uncompressed size, data"

    .line 143
    array-length v7, v14

    .line 144
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v3, v4, v7, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/jo;->t:Z

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/jo;->l:Lcom/google/android/gms/measurement/internal/du;

    .line 145
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    new-instance v0, Lcom/google/android/gms/measurement/internal/ji;

    .line 146
    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/measurement/internal/ji;-><init>(Lcom/google/android/gms/measurement/internal/jo;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 148
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/je;->v()V

    .line 149
    invoke-static {v13}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {v14}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v11, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 152
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/dt;

    const/4 v15, 0x0

    move-object v10, v3

    move-object v12, v6

    move-object/from16 v16, v0

    .line 153
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/dt;-><init>(Lcom/google/android/gms/measurement/internal/du;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/dr;)V

    .line 154
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ep;->c(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Ljava/net/MalformedURLException; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    goto/16 :goto_21

    .line 155
    :catch_a
    :try_start_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51010
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Failed to parse upload URL. Not uploading. appId"

    .line 156
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 157
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_21

    :catchall_3
    move-exception v0

    move-object v9, v11

    :goto_1d
    if-eqz v9, :cond_2a

    .line 51
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_2a
    throw v0

    :cond_2b
    move-wide v11, v4

    .line 32
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/jo;->z:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 158
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/e;->h()J

    move-result-wide v3

    sub-long v4, v11, v3

    .line 160
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 161
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/je;->v()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 162
    :try_start_1e
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 163
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 164
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e .. :try_end_1e} :catch_c
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 165
    :try_start_1f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51007
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "No expired configs for apps with pending events"

    .line 167
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_b
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    if-eqz v4, :cond_2d

    .line 168
    :goto_1e
    :try_start_20
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    goto :goto_20

    :cond_2c
    const/4 v3, 0x0

    .line 169
    :try_start_21
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    if-eqz v4, :cond_2d

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

    .line 68
    :goto_1f
    :try_start_22
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51014
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Error selecting expired configs"

    .line 171
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    if-eqz v4, :cond_2d

    goto :goto_1e

    .line 173
    :cond_2d
    :goto_20
    :try_start_23
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 174
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 175
    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/i;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 176
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/fd;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    :cond_2e
    :goto_21
    const/4 v2, 0x0

    .line 154
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v9, v4

    :goto_22
    if-eqz v9, :cond_2f

    .line 168
    :try_start_24
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_2f
    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    .line 168
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/jo;->u:Z

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->s()V

    .line 179
    throw v0
.end method

.method final m()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/jo;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const-wide/32 v1, 0x36ee80

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/jo;->g:J

    sub-long/2addr v5, v7

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v3

    .line 51119
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 8
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dw;->b()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->n:Lcom/google/android/gms/measurement/internal/jc;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jc;->b()V

    return-void

    :cond_0
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/jo;->g:J

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->w()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->r()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_4

    .line 17
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    .line 19
    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->z:Lcom/google/android/gms/measurement/internal/da;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->l()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 20
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    :cond_4
    :goto_0
    if-eqz v10, :cond_6

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    const-string v11, "debug.firebase.analytics.app"

    .line 51121
    invoke-virtual {v5, v11}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->u:Lcom/google/android/gms/measurement/internal/da;

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->t:Lcom/google/android/gms/measurement/internal/da;

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->s:Lcom/google/android/gms/measurement/internal/da;

    .line 29
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 27
    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/il;->c:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 31
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/il;->d:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v15

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 32
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    move/from16 v17, v10

    .line 33
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->i()J

    move-result-wide v9

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/jo;->b:Lcom/google/android/gms/measurement/internal/i;

    .line 34
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    move-wide/from16 v18, v7

    .line 35
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/i;->j()J

    move-result-wide v6

    .line 36
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_8

    :cond_7
    move-wide v7, v3

    goto/16 :goto_3

    :cond_8
    sub-long/2addr v5, v1

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v13, v1

    .line 38
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sub-long/2addr v15, v1

    .line 39
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v1, v9

    sub-long/2addr v1, v7

    .line 40
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v7, v5, v18

    if-eqz v17, :cond_9

    cmp-long v13, v1, v3

    if-lez v13, :cond_9

    .line 41
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v11

    :cond_9
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 42
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 43
    invoke-virtual {v13, v1, v2, v11, v12}, Lcom/google/android/gms/measurement/internal/jq;->a(JJ)Z

    move-result v13

    if-nez v13, :cond_a

    add-long v7, v1, v11

    :cond_a
    cmp-long v1, v9, v3

    if-eqz v1, :cond_b

    cmp-long v1, v9, v5

    if-ltz v1, :cond_b

    const/4 v1, 0x0

    .line 44
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    const/16 v2, 0x14

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->B:Lcom/google/android/gms/measurement/internal/da;

    const/4 v6, 0x0

    .line 45
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->A:Lcom/google/android/gms/measurement/internal/da;

    .line 47
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 36
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->l:Lcom/google/android/gms/measurement/internal/du;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/du;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 50
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/il;->b:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ea;->a()J

    move-result-wide v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->q:Lcom/google/android/gms/measurement/internal/da;

    const/4 v6, 0x0

    .line 52
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/jo;->o:Lcom/google/android/gms/measurement/internal/jq;

    .line 53
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 54
    invoke-virtual {v9, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/jq;->a(JJ)Z

    move-result v9

    if-nez v9, :cond_c

    add-long/2addr v1, v5

    .line 55
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 56
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dw;->b()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    sub-long/2addr v7, v1

    cmp-long v1, v7, v3

    if-gtz v1, :cond_d

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->v:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/da;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->e:Lcom/google/android/gms/measurement/internal/il;

    .line 60
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/il;->c:Lcom/google/android/gms/measurement/internal/ea;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    .line 61
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51122
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 61
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->n:Lcom/google/android/gms/measurement/internal/jc;

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 63
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/jc;->a(J)V

    return-void

    .line 64
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51123
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "No network"

    .line 64
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dw;->a()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->n:Lcom/google/android/gms/measurement/internal/jc;

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jc;->b()V

    return-void

    .line 68
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51124
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Next upload time is 0"

    .line 68
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dw;->b()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->n:Lcom/google/android/gms/measurement/internal/jc;

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jc;->b()V

    return-void

    .line 13
    :cond_10
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51120
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Nothing to upload or uploading impossible"

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dw;->b()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jo;->n:Lcom/google/android/gms/measurement/internal/jc;

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/je;)Lcom/google/android/gms/measurement/internal/je;

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jc;->b()V

    return-void
.end method

.method final n()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->i()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->r:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/jo;->r:Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jo;->t()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->w:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

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

    .line 7
    :cond_0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 8
    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 9
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v7

    .line 51135
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v8, "Unexpected data length. Bytes read"

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v7

    .line 51137
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v8, "Failed to read from channel"

    .line 13
    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51129
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->o()Lcom/google/android/gms/measurement/internal/dg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dg;->h()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    if-le v6, v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51130
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 20
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    if-ge v6, v1, :cond_9

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/jo;->w:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    if-eqz v7, :cond_8

    .line 22
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    .line 24
    :cond_5
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    :try_start_1
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/measurement/internal/dc;->ap:Lcom/google/android/gms/measurement/internal/da;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-gt v5, v8, :cond_6

    .line 29
    invoke-virtual {v7, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 30
    :cond_6
    invoke-virtual {v7, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 31
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 32
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51133
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Error writing to channel. Bytes written"

    .line 33
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51134
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 42
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v2

    .line 51136
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "Failed to write to channel"

    .line 34
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 23
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51131
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    .line 35
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51132
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 39
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
