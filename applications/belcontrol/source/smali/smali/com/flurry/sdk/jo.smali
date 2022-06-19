.class public Lcom/flurry/sdk/jo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/ly$a;


# static fields
.field public static final a:Ljava/lang/String; = "jo"

.field public static b:I = 0x64

.field public static c:I = 0xa

.field public static d:I = 0x3e8

.field public static e:I = 0x27100

.field public static f:I = 0x32


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private final G:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/lt;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flurry/sdk/ls;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/io/File;

.field public i:Lcom/flurry/sdk/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kn<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/jl;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:B

.field public n:Ljava/lang/Long;

.field public o:Z

.field public final p:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/ju;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/jl;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/jh;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/ji;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/jg;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/flurry/sdk/hy;

.field private z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->s:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->t:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->v:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->w:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->x:Ljava/util/List;

    new-instance v0, Lcom/flurry/sdk/hy;

    invoke-direct {v0}, Lcom/flurry/sdk/hy;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->y:Lcom/flurry/sdk/hy;

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/jo;->B:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/jo;->C:Z

    iput v1, p0, Lcom/flurry/sdk/jo;->D:I

    iput v1, p0, Lcom/flurry/sdk/jo;->E:I

    iput v1, p0, Lcom/flurry/sdk/jo;->F:I

    iput-boolean v0, p0, Lcom/flurry/sdk/jo;->o:Z

    new-instance v0, Lcom/flurry/sdk/jo$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jo$1;-><init>(Lcom/flurry/sdk/jo;)V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->p:Lcom/flurry/sdk/kp;

    new-instance v0, Lcom/flurry/sdk/jo$9;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/jo$9;-><init>(Lcom/flurry/sdk/jo;)V

    iput-object v0, p0, Lcom/flurry/sdk/jo;->G:Lcom/flurry/sdk/kp;

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.FlurrySessionEvent"

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/jo;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/jo;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic a(Lcom/flurry/sdk/jo;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/jo;->a(ZJ)V

    return-void
.end method

.method private declared-synchronized a(ZJ)V
    .locals 20

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Lcom/flurry/sdk/jo;->o:Z

    const/4 v2, 0x3

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string v3, "Analytics disabled, not sending agent report."

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/flurry/sdk/jo;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string v3, "generating agent report"

    invoke-static {v2, v0, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    :try_start_3
    new-instance v0, Lcom/flurry/sdk/jj;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v4

    iget-object v5, v4, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/kc;->g()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v1, Lcom/flurry/sdk/jo;->j:Z

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/jt;->c()Z

    move-result v8

    iget-wide v9, v1, Lcom/flurry/sdk/jo;->z:J

    iget-object v13, v1, Lcom/flurry/sdk/jo;->s:Ljava/util/List;

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v4

    iget-object v4, v4, Lcom/flurry/sdk/jt;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v14

    iget-object v4, v1, Lcom/flurry/sdk/jo;->y:Lcom/flurry/sdk/hy;

    invoke-virtual {v4}, Lcom/flurry/sdk/hy;->a()Ljava/util/Map;

    move-result-object v15

    iget-object v11, v1, Lcom/flurry/sdk/jo;->t:Ljava/util/Map;

    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v4

    invoke-virtual {v4}, Lcom/flurry/sdk/ki;->b()Ljava/util/HashMap;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object v4, v0

    move-object/from16 v16, v11

    move-wide/from16 v11, p2

    invoke-direct/range {v4 .. v19}, Lcom/flurry/sdk/jj;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V

    iget-object v3, v0, Lcom/flurry/sdk/jj;->a:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v4, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception while generating report: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v3, :cond_2

    sget-object v0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string v2, "Error generating report"

    invoke-static {v0, v2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "generated report of size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/flurry/sdk/jo;->s:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reports."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->b:Lcom/flurry/sdk/jk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/kh;->b()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v4

    iget-object v4, v4, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcom/flurry/sdk/lg;->b([BLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, v1, Lcom/flurry/sdk/jo;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, v1, Lcom/flurry/sdk/jo;->i:Lcom/flurry/sdk/kn;

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->b()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic b(Lcom/flurry/sdk/jo;)Lcom/flurry/sdk/kp;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/jo;->G:Lcom/flurry/sdk/kp;

    return-object p0
.end method

.method private declared-synchronized b(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jo;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ji;

    iget-boolean v2, v1, Lcom/flurry/sdk/ji;->b:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/flurry/sdk/ji;->c:Z

    if-nez v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/ji;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic c(Lcom/flurry/sdk/jo;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/jo;->e()V

    return-void
.end method

.method public static synthetic d(Lcom/flurry/sdk/jo;)V
    .locals 5

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.flurry.sdk.previous_successful_report"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/jo;->j:Z

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v1

    const-string v3, "com.flurry.sdk.initial_run_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/flurry/sdk/jo;->z:J

    const-string v1, "com.flurry.sdk.api_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/jo;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/flurry/sdk/jo;->z:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/sdk/jo;->A:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/jo;->A:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/sdk/jo;->z:J

    :cond_1
    return-void
.end method

.method private declared-synchronized e()V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string v1, "Loading persistent session report data."

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/jo;->i:Lcom/flurry/sdk/kn;

    invoke-virtual {v1}, Lcom/flurry/sdk/kn;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/jo;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/jo;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Legacy persistent agent data found, converting."

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/jo;->h:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/ia;->a(Ljava/io/File;)Lcom/flurry/sdk/jp;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/flurry/sdk/jp;->b:Z

    iget-wide v2, v0, Lcom/flurry/sdk/jp;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v2

    :cond_1
    iput-boolean v1, p0, Lcom/flurry/sdk/jo;->j:Z

    iput-wide v2, p0, Lcom/flurry/sdk/jo;->z:J

    invoke-direct {p0}, Lcom/flurry/sdk/jo;->f()V

    iget-object v0, v0, Lcom/flurry/sdk/jp;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/flurry/sdk/jo;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/jo;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/flurry/sdk/jo;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic e(Lcom/flurry/sdk/jo;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/jo;->f()V

    return-void
.end method

.method public static synthetic f(Lcom/flurry/sdk/jo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/jo;->s:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/sdk/jo;->j:Z

    const-string v2, "com.flurry.sdk.previous_successful_report"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-wide v1, p0, Lcom/flurry/sdk/jo;->z:J

    const-string v3, "com.flurry.sdk.initial_run_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    const-string v2, "com.flurry.sdk.api_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private declared-synchronized g()V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jo;->a(Z)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v3

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->f()J

    move-result-wide v5

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v0, v2, Lcom/flurry/sdk/kf;->f:J

    :cond_0
    move-wide v7, v0

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->h()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    iget-boolean v0, p0, Lcom/flurry/sdk/jo;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jo$2;

    invoke-direct {v1, p0, v3, v4}, Lcom/flurry/sdk/jo$2;-><init>(Lcom/flurry/sdk/jo;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jo$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jo$3;-><init>(Lcom/flurry/sdk/jo;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jt;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v10, Lcom/flurry/sdk/jo$4;

    move-object v1, v10

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/flurry/sdk/jo$4;-><init>(Lcom/flurry/sdk/jo;JJJI)V

    invoke-virtual {v0, v10}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic g(Lcom/flurry/sdk/jo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/flurry/sdk/jo;->o:Z

    return p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    const-string v0, "\ue8ffsid+Tumblr"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/flurry/sdk/jo;->a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;

    move-result-object p1

    const/4 p2, 0x5

    sget-object p3, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logEvent status for syndication:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;ZI)Lcom/flurry/android/FlurryEventRecordStatus;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Lcom/flurry/android/FlurryEventRecordStatus;"
        }
    .end annotation

    move-object v1, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventRecorded:Lcom/flurry/android/FlurryEventRecordStatus;

    iget-boolean v2, v1, Lcom/flurry/sdk/jo;->o:Z

    if-nez v2, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventAnalyticsDisabled:Lcom/flurry/android/FlurryEventRecordStatus;

    sget-object v2, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string v3, "Analytics has been disabled, not logging event."

    invoke-static {v2, v3}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->e()J

    move-result-wide v4

    sub-long v10, v2, v4

    invoke-static {p1}, Lcom/flurry/sdk/md;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventFailed:Lcom/flurry/android/FlurryEventRecordStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v3, v1, Lcom/flurry/sdk/jo;->v:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/jh;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/flurry/sdk/jo;->v:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    sget v5, Lcom/flurry/sdk/jo;->b:I

    if-ge v3, v5, :cond_2

    new-instance v3, Lcom/flurry/sdk/jh;

    invoke-direct {v3}, Lcom/flurry/sdk/jh;-><init>()V

    iput v4, v3, Lcom/flurry/sdk/jh;->a:I

    iget-object v4, v1, Lcom/flurry/sdk/jo;->v:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event count started: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Too many different events. Event not counted: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventUniqueCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_1

    :cond_3
    iget v5, v3, Lcom/flurry/sdk/jh;->a:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/flurry/sdk/jh;->a:I

    sget-object v3, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event count incremented: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v3, v4}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :goto_1
    iget-boolean v4, v1, Lcom/flurry/sdk/jo;->k:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/flurry/sdk/jo;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sget v6, Lcom/flurry/sdk/jo;->d:I

    if-ge v4, v6, :cond_7

    iget v4, v1, Lcom/flurry/sdk/jo;->D:I

    sget v6, Lcom/flurry/sdk/jo;->e:I

    if-ge v4, v6, :cond_7

    if-nez p2, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, p2

    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    sub-int v4, v4, p4

    sget v6, Lcom/flurry/sdk/jo;->c:I

    if-le v4, v6, :cond_5

    sget-object v0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "MaxEventParams exceeded: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    sub-int v3, v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventParamsCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_3

    :cond_5
    new-instance v4, Lcom/flurry/sdk/ji;

    iget-object v6, v1, Lcom/flurry/sdk/jo;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v7

    move-object v6, v4

    move-object v8, v2

    move-object v9, v3

    move/from16 v12, p3

    invoke-direct/range {v6 .. v12}, Lcom/flurry/sdk/ji;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    invoke-virtual {v4}, Lcom/flurry/sdk/ji;->b()[B

    move-result-object v6

    array-length v6, v6

    iget v7, v1, Lcom/flurry/sdk/jo;->D:I

    add-int/2addr v6, v7

    sget v7, Lcom/flurry/sdk/jo;->e:I

    if-gt v6, v7, :cond_6

    iget-object v5, v1, Lcom/flurry/sdk/jo;->w:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, v1, Lcom/flurry/sdk/jo;->D:I

    invoke-virtual {v4}, Lcom/flurry/sdk/ji;->b()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v5, v4

    iput v5, v1, Lcom/flurry/sdk/jo;->D:I

    iget-boolean v4, v1, Lcom/flurry/sdk/jo;->o:Z

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v4

    iget-object v4, v4, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v4

    new-instance v5, Lcom/flurry/sdk/jo$7;

    invoke-direct {v5, p0, v2, v3}, Lcom/flurry/sdk/jo$7;-><init>(Lcom/flurry/sdk/jo;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_6
    iput v7, v1, Lcom/flurry/sdk/jo;->D:I

    iput-boolean v5, v1, Lcom/flurry/sdk/jo;->C:Z

    sget-object v0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string v2, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/flurry/android/FlurryEventRecordStatus;->kFlurryEventLogCountExceeded:Lcom/flurry/android/FlurryEventRecordStatus;

    goto :goto_3

    :cond_7
    iput-boolean v5, v1, Lcom/flurry/sdk/jo;->C:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    :cond_8
    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JJJI)Lcom/flurry/sdk/jl;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/sdk/jm;

    invoke-direct {v0}, Lcom/flurry/sdk/jm;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/kc;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/jm;->a:Ljava/lang/String;

    iput-wide p1, v0, Lcom/flurry/sdk/jm;->b:J

    iput-wide p3, v0, Lcom/flurry/sdk/jm;->c:J

    iput-wide p5, v0, Lcom/flurry/sdk/jm;->d:J

    iget-object p1, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    iput-object p1, v0, Lcom/flurry/sdk/jm;->e:Ljava/util/Map;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/sdk/kf;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, v0, Lcom/flurry/sdk/jm;->f:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/flurry/sdk/kf;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iput-object p1, v0, Lcom/flurry/sdk/jm;->g:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->c()Lcom/flurry/sdk/kf;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/flurry/sdk/kf;->f()Ljava/util/Map;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, p2

    :goto_2
    iput-object p1, v0, Lcom/flurry/sdk/jm;->h:Ljava/util/Map;

    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    invoke-static {}, Lcom/flurry/sdk/jw;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/flurry/sdk/jm;->i:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/jw;->a()Lcom/flurry/sdk/jw;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/flurry/sdk/jm;->j:Ljava/lang/String;

    iput p7, v0, Lcom/flurry/sdk/jm;->k:I

    iget p1, p0, Lcom/flurry/sdk/jo;->B:I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/flurry/sdk/mb;->d()I

    move-result p1

    :goto_3
    iput p1, v0, Lcom/flurry/sdk/jm;->l:I

    iget-object p1, p0, Lcom/flurry/sdk/jo;->l:Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, v0, Lcom/flurry/sdk/jm;->m:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/jx;->a()Lcom/flurry/sdk/jx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/jx;->g()Landroid/location/Location;

    move-result-object p1

    iput-object p1, v0, Lcom/flurry/sdk/jm;->n:Landroid/location/Location;

    iget p1, p0, Lcom/flurry/sdk/jo;->F:I

    iput p1, v0, Lcom/flurry/sdk/jm;->o:I

    iget-byte p1, p0, Lcom/flurry/sdk/jo;->m:B

    iput-byte p1, v0, Lcom/flurry/sdk/jm;->p:B

    iget-object p1, p0, Lcom/flurry/sdk/jo;->n:Ljava/lang/Long;

    iput-object p1, v0, Lcom/flurry/sdk/jm;->q:Ljava/lang/Long;

    iget-object p1, p0, Lcom/flurry/sdk/jo;->v:Ljava/util/Map;

    iput-object p1, v0, Lcom/flurry/sdk/jm;->r:Ljava/util/Map;

    iget-object p1, p0, Lcom/flurry/sdk/jo;->w:Ljava/util/List;

    iput-object p1, v0, Lcom/flurry/sdk/jm;->s:Ljava/util/List;

    iget-boolean p1, p0, Lcom/flurry/sdk/jo;->C:Z

    iput-boolean p1, v0, Lcom/flurry/sdk/jm;->t:Z

    iget-object p1, p0, Lcom/flurry/sdk/jo;->x:Ljava/util/List;

    iput-object p1, v0, Lcom/flurry/sdk/jm;->v:Ljava/util/List;

    iget p1, p0, Lcom/flurry/sdk/jo;->E:I

    iput p1, v0, Lcom/flurry/sdk/jm;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Lcom/flurry/sdk/jl;

    invoke-direct {p1, v0}, Lcom/flurry/sdk/jl;-><init>(Lcom/flurry/sdk/jm;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p2, p1

    goto :goto_4

    :catch_0
    move-exception p1

    const/4 p3, 0x5

    :try_start_2
    sget-object p4, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "Error creating analytics session report: "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-nez p2, :cond_5

    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string p3, "New session report wasn\'t created"

    invoke-static {p1, p3}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string v2, "Saving persistent agent data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/jo;->i:Lcom/flurry/sdk/kn;

    iget-object v1, p0, Lcom/flurry/sdk/jo;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/jo;->p:Lcom/flurry/sdk/kp;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kq;->a(Lcom/flurry/sdk/kp;)V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->f()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/jo;->b(J)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jo$5;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jo$5;-><init>(Lcom/flurry/sdk/jo;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jt;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jo$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/jo$6;-><init>(Lcom/flurry/sdk/jo;J)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object p1

    const-string p2, "Gender"

    invoke-virtual {p1, p2, p0}, Lcom/flurry/sdk/ly;->b(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)Z

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object p1

    const-string p2, "UserId"

    invoke-virtual {p1, p2, p0}, Lcom/flurry/sdk/ly;->b(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)Z

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object p1

    const-string p2, "Age"

    invoke-virtual {p1, p2, p0}, Lcom/flurry/sdk/ly;->b(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)Z

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object p1

    const-string p2, "LogEvents"

    invoke-virtual {p1, p2, p0}, Lcom/flurry/sdk/ly;->b(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 7

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launch Options Bundle is present "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "null"

    :goto_1
    iget-object v4, p0, Lcom/flurry/sdk/jo;->t:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launch options Key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Its value: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "Gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "Age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "LogEvents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "analyticsEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "UserId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 p1, 0x6

    sget-object p2, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lcom/flurry/sdk/jo;->m:B

    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, Gender = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/flurry/sdk/jo;->m:B

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/flurry/sdk/jo;->n:Ljava/lang/Long;

    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, Birthdate = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/jo;->n:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/jo;->k:Z

    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, LogEvents = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/jo;->k:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/jo;->o:Z

    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/jo;->o:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/jo;->l:Ljava/lang/String;

    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, UserId = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/jo;->l:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x686fe59a -> :sswitch_4
        -0x66855b25 -> :sswitch_3
        -0x2bfdf2a3 -> :sswitch_2
        0x100df -> :sswitch_1
        0x7eeadee1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "uncaught"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/flurry/sdk/jo;->E:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/flurry/sdk/jo;->E:I

    iget-object v1, p0, Lcom/flurry/sdk/jo;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/flurry/sdk/jo;->f:I

    if-ge v1, v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v9, Lcom/flurry/sdk/jg;

    iget-object v1, p0, Lcom/flurry/sdk/jo;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v1, v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/flurry/sdk/jg;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/flurry/sdk/jo;->x:Ljava/util/List;

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error logged: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, v9, Lcom/flurry/sdk/jg;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    if-eqz v2, :cond_4

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/flurry/sdk/jo;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/jo;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jg;

    iget-object v1, v1, Lcom/flurry/sdk/jg;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "uncaught"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v10, Lcom/flurry/sdk/jg;

    iget-object v2, p0, Lcom/flurry/sdk/jo;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v2, v10

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/flurry/sdk/jg;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/flurry/sdk/jo;->x:Ljava/util/List;

    invoke-interface {p1, v0, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string p2, "Max errors logged. No more errors logged."

    invoke-static {p1, p2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/jo;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ji;

    iget-boolean v2, v1, Lcom/flurry/sdk/ji;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-wide v4, v1, Lcom/flurry/sdk/ji;->d:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/flurry/sdk/ji;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->e()J

    move-result-wide v6

    sub-long/2addr v4, v6

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget p1, p0, Lcom/flurry/sdk/jo;->D:I

    sget v0, Lcom/flurry/sdk/jo;->e:I

    if-ge p1, v0, :cond_4

    invoke-virtual {v1}, Lcom/flurry/sdk/ji;->b()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr p1, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/flurry/sdk/ji;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, p2}, Lcom/flurry/sdk/ji;->a(Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/ji;->b()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p2, p1

    sget v2, Lcom/flurry/sdk/jo;->e:I

    if-gt p2, v2, :cond_3

    invoke-virtual {v1}, Lcom/flurry/sdk/ji;->a()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    sget v2, Lcom/flurry/sdk/jo;->c:I

    if-le p2, v2, :cond_2

    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "MaxEventParams exceeded on endEvent: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/flurry/sdk/ji;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ji;->b(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/flurry/sdk/ji;->b()[B

    move-result-object p2

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/flurry/sdk/jo;->D:I

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ji;->b(Ljava/util/Map;)V

    iput-boolean v3, p0, Lcom/flurry/sdk/jo;->C:Z

    sget p1, Lcom/flurry/sdk/jo;->e:I

    iput p1, p0, Lcom/flurry/sdk/jo;->D:I

    sget-object p1, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    const-string p2, "Event Log size exceeded. No more event details logged."

    invoke-static {p1, p2}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {v1, v4, v5}, Lcom/flurry/sdk/ji;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Z)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "boot.time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    const-string v4, "disk.size.available.external"

    const-string v5, "disk.size.total.external"

    const-string v6, "disk.size.available.internal"

    const-string v7, "disk.size.total.internal"

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-static {}, Lcom/flurry/sdk/ka;->a()Lcom/flurry/sdk/ka;

    invoke-static {}, Lcom/flurry/sdk/ka;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier.name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    invoke-static {}, Lcom/flurry/sdk/ka;->a()Lcom/flurry/sdk/ka;

    invoke-static {}, Lcom/flurry/sdk/ka;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier.details"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "memory.available"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".start"

    const-string v4, ".end"

    if-eqz p1, :cond_2

    move-object v5, v3

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v5, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "memory.total"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    move-object v5, v3

    goto :goto_2

    :cond_3
    move-object v5, v4

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v5, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v6

    iget-object v6, v6, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, "status"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    if-ne v6, v0, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    const-string v6, "level"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "scale"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v6

    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_3

    :catch_1
    move-exception v5

    const/4 v6, -0x1

    :goto_3
    sget-object v7, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error getting battery status: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v7, v5}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v2, v6

    :cond_7
    const/4 v0, -0x1

    :goto_4
    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "battery.charging"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    move-object v6, v3

    goto :goto_5

    :cond_8
    move-object v6, v4

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/flurry/sdk/jo;->u:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "battery.remaining"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    move-object v3, v4

    :goto_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/mb;->d()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/jo;->B:I

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->c:Lcom/flurry/sdk/iu;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jo$15;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jo$15;-><init>(Lcom/flurry/sdk/jo;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jo;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/hx;->a()Lcom/flurry/sdk/hx;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/hx;->a:Lcom/flurry/sdk/is;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/jo$16;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/jo$16;-><init>(Lcom/flurry/sdk/jo;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/jo;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/flurry/sdk/jo;->F:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/jo;->F:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
