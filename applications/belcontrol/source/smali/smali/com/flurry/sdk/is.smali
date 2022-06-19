.class public Lcom/flurry/sdk/is;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/ly$a;


# static fields
.field private static final a:Ljava/lang/String; = "is"


# instance fields
.field private final b:Lcom/flurry/sdk/ky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ky<",
            "Lcom/flurry/sdk/ie;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/flurry/sdk/ky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ky<",
            "Lcom/flurry/sdk/if;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/flurry/sdk/ir;

.field private final e:Lcom/flurry/sdk/kl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kl<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/ii;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iz;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/flurry/sdk/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kn<",
            "Lcom/flurry/sdk/iq;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/flurry/sdk/kn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kn<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iz;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:J

.field private o:Z

.field private p:Lcom/flurry/sdk/if;

.field private q:Z

.field private final r:Ljava/lang/Runnable;

.field private final s:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/ju;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/jv;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/jy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/flurry/sdk/ky;

    new-instance v1, Lcom/flurry/sdk/je;

    invoke-direct {v1}, Lcom/flurry/sdk/je;-><init>()V

    const-string v2, "proton config request"

    invoke-direct {v0, v2, v1}, Lcom/flurry/sdk/ky;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lo;)V

    iput-object v0, p0, Lcom/flurry/sdk/is;->b:Lcom/flurry/sdk/ky;

    new-instance v0, Lcom/flurry/sdk/ky;

    new-instance v1, Lcom/flurry/sdk/jf;

    invoke-direct {v1}, Lcom/flurry/sdk/jf;-><init>()V

    const-string v2, "proton config response"

    invoke-direct {v0, v2, v1}, Lcom/flurry/sdk/ky;-><init>(Ljava/lang/String;Lcom/flurry/sdk/lo;)V

    iput-object v0, p0, Lcom/flurry/sdk/is;->c:Lcom/flurry/sdk/ky;

    new-instance v0, Lcom/flurry/sdk/ir;

    invoke-direct {v0}, Lcom/flurry/sdk/ir;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/is;->d:Lcom/flurry/sdk/ir;

    new-instance v0, Lcom/flurry/sdk/kl;

    invoke-direct {v0}, Lcom/flurry/sdk/kl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/is;->e:Lcom/flurry/sdk/kl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/is;->f:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/is;->k:Z

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/flurry/sdk/is;->m:J

    new-instance v1, Lcom/flurry/sdk/is$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/is$1;-><init>(Lcom/flurry/sdk/is;)V

    iput-object v1, p0, Lcom/flurry/sdk/is;->r:Ljava/lang/Runnable;

    new-instance v1, Lcom/flurry/sdk/is$4;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/is$4;-><init>(Lcom/flurry/sdk/is;)V

    iput-object v1, p0, Lcom/flurry/sdk/is;->s:Lcom/flurry/sdk/kp;

    new-instance v2, Lcom/flurry/sdk/is$5;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/is$5;-><init>(Lcom/flurry/sdk/is;)V

    iput-object v2, p0, Lcom/flurry/sdk/is;->t:Lcom/flurry/sdk/kp;

    new-instance v3, Lcom/flurry/sdk/is$6;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/is$6;-><init>(Lcom/flurry/sdk/is;)V

    iput-object v3, p0, Lcom/flurry/sdk/is;->u:Lcom/flurry/sdk/kp;

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v4

    const-string v5, "ProtonEnabled"

    invoke-virtual {v4, v5}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, p0, Lcom/flurry/sdk/is;->i:Z

    invoke-virtual {v4, v5, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    sget-object v5, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "initSettings, protonEnabled = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/flurry/sdk/is;->i:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v7, v5, v6}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "ProtonConfigUrl"

    invoke-virtual {v4, v6}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/flurry/sdk/is;->j:Ljava/lang/String;

    invoke-virtual {v4, v6, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "initSettings, protonConfigUrl = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/flurry/sdk/is;->j:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "analyticsEnabled"

    invoke-virtual {v4, v6}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/flurry/sdk/is;->k:Z

    invoke-virtual {v4, v6, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "initSettings, AnalyticsEnabled = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/flurry/sdk/is;->k:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v5, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v4

    const-string v5, "com.flurry.android.sdk.IdProviderFinishedEvent"

    invoke-virtual {v4, v5, v1}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v1

    const-string v4, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    invoke-virtual {v1, v4, v2}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object v1

    const-string v2, "com.flurry.android.sdk.NetworkStateEvent"

    invoke-virtual {v1, v2, v3}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    new-instance v2, Lcom/flurry/sdk/kn;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".yflurryprotonconfig."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v5

    iget-object v5, v5, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/flurry/sdk/md;->i(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v7, 0x10

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Lcom/flurry/sdk/is$7;

    invoke-direct {v5, p0}, Lcom/flurry/sdk/is$7;-><init>(Lcom/flurry/sdk/is;)V

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    iput-object v2, p0, Lcom/flurry/sdk/is;->g:Lcom/flurry/sdk/kn;

    new-instance v2, Lcom/flurry/sdk/kn;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".yflurryprotonreport."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v5

    iget-object v5, v5, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    invoke-static {v5}, Lcom/flurry/sdk/md;->i(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Lcom/flurry/sdk/is$8;

    invoke-direct {v3, p0}, Lcom/flurry/sdk/is$8;-><init>(Lcom/flurry/sdk/is;)V

    invoke-direct {v2, v1, v4, v0, v3}, Lcom/flurry/sdk/kn;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/lr;)V

    iput-object v2, p0, Lcom/flurry/sdk/is;->h:Lcom/flurry/sdk/kn;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/is$9;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/is$9;-><init>(Lcom/flurry/sdk/is;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/is$10;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/is$10;-><init>(Lcom/flurry/sdk/is;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/is;J)J
    .locals 0

    iput-wide p1, p0, Lcom/flurry/sdk/is;->m:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/flurry/sdk/is;Lcom/flurry/sdk/if;)Lcom/flurry/sdk/if;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    return-object p1
.end method

.method private declared-synchronized a(JZ[B)V
    .locals 3

    monitor-enter p0

    if-nez p4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v2, "Saving proton config response"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/iq;

    invoke-direct {v0}, Lcom/flurry/sdk/iq;-><init>()V

    iput-wide p1, v0, Lcom/flurry/sdk/iq;->a:J

    iput-boolean p3, v0, Lcom/flurry/sdk/iq;->b:Z

    iput-object p4, v0, Lcom/flurry/sdk/iq;->c:[B

    iget-object p1, p0, Lcom/flurry/sdk/is;->g:Lcom/flurry/sdk/kn;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kn;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lcom/flurry/sdk/is;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/is;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/is;JZ[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/is;->a(JZ[B)V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/is;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/is;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/if;)Z
    .locals 0

    invoke-static {p0}, Lcom/flurry/sdk/is;->b(Lcom/flurry/sdk/if;)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/flurry/sdk/is;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/flurry/sdk/is;->o:Z

    return p1
.end method

.method public static synthetic b(Lcom/flurry/sdk/is;J)J
    .locals 0

    iput-wide p1, p0, Lcom/flurry/sdk/is;->n:J

    return-wide p1
.end method

.method private declared-synchronized b(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/is;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iz;

    iget-wide v1, v1, Lcom/flurry/sdk/iz;->a:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
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

.method public static synthetic b(Lcom/flurry/sdk/is;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/is;->l()V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 33
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event triggered: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x3

    invoke-static {v11, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/flurry/sdk/is;->k:Z

    if-nez v4, :cond_0

    const-string v0, "Analytics and pulse have been disabled."

    invoke-static {v3, v0}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v4, v1, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    if-nez v4, :cond_1

    const-string v0, "Config response is empty. No events to fire."

    invoke-static {v11, v3, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v4, v1, Lcom/flurry/sdk/is;->e:Lcom/flurry/sdk/kl;

    invoke-virtual {v4, v0}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, "No events to fire. Returning."

    invoke-static {v11, v3, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_4

    const-string v0, "No events to fire. Returning."

    invoke-static {v11, v3, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    :goto_0
    const/4 v9, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v12, 0x26750b2e

    const/4 v13, 0x2

    if-eq v10, v12, :cond_8

    const v12, 0x51bea0f9

    if-eq v10, v12, :cond_7

    const v12, 0x5e26fdf5

    if-eq v10, v12, :cond_6

    goto :goto_1

    :cond_6
    const-string v10, "flurry.session_start"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x0

    goto :goto_1

    :cond_7
    const-string v10, "flurry.app_install"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x2

    goto :goto_1

    :cond_8
    const-string v10, "flurry.session_end"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v9, 0x1

    :cond_9
    :goto_1
    if-eqz v9, :cond_c

    if-eq v9, v7, :cond_b

    if-eq v9, v13, :cond_a

    sget-object v9, Lcom/flurry/sdk/jd;->d:Lcom/flurry/sdk/jd;

    goto :goto_2

    :cond_a
    sget-object v9, Lcom/flurry/sdk/jd;->a:Lcom/flurry/sdk/jd;

    goto :goto_2

    :cond_b
    sget-object v9, Lcom/flurry/sdk/jd;->c:Lcom/flurry/sdk/jd;

    goto :goto_2

    :cond_c
    sget-object v9, Lcom/flurry/sdk/jd;->b:Lcom/flurry/sdk/jd;

    :goto_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/flurry/sdk/ii;

    instance-of v13, v12, Lcom/flurry/sdk/ij;

    if-eqz v13, :cond_14

    sget-object v13, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v14, "Event contains triggers."

    const/4 v15, 0x4

    invoke-static {v15, v13, v14}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v14, v12

    check-cast v14, Lcom/flurry/sdk/ij;

    iget-object v14, v14, Lcom/flurry/sdk/ij;->d:[Ljava/lang/String;

    if-nez v14, :cond_d

    const-string v3, "Template does not contain trigger values. Firing."

    :goto_4
    invoke-static {v15, v13, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    array-length v3, v14

    if-nez v3, :cond_e

    const-string v3, "Template does not contain trigger values. Firing."

    goto :goto_4

    :cond_e
    if-nez v2, :cond_f

    const-string v3, "Publisher has not passed in params list. Not firing."

    invoke-static {v15, v13, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const/4 v3, 0x0

    :goto_5
    move-object v7, v12

    check-cast v7, Lcom/flurry/sdk/ij;

    iget-object v7, v7, Lcom/flurry/sdk/ij;->c:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_10

    const-string v3, "Publisher params has no value associated with proton key. Not firing."

    invoke-static {v15, v13, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_3

    :cond_10
    array-length v13, v14

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v13, :cond_12

    aget-object v15, v14, v11

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v3, 0x1

    goto :goto_7

    :cond_11
    add-int/lit8 v11, v11, 0x1

    const/4 v15, 0x4

    goto :goto_6

    :cond_12
    :goto_7
    if-nez v3, :cond_13

    sget-object v3, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v7, "Publisher params list does not match proton param values. Not firing."

    const/4 v11, 0x4

    :goto_8
    invoke-static {v11, v3, v7}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_13
    sget-object v3, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v7, "Publisher params match proton values. Firing."

    const/4 v11, 0x4

    invoke-static {v11, v3, v7}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v3, v12, Lcom/flurry/sdk/ii;->b:Lcom/flurry/sdk/ic;

    if-nez v3, :cond_15

    sget-object v3, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v7, "Template is empty. Not firing current event."

    const/4 v11, 0x3

    goto :goto_8

    :goto_9
    const/4 v7, 0x1

    const/4 v11, 0x3

    goto :goto_3

    :cond_15
    sget-object v7, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Creating callback report for partner: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v3, Lcom/flurry/sdk/ic;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v12, v7, v11}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v11, "event_name"

    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "event_time_millis"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v1, Lcom/flurry/sdk/is;->d:Lcom/flurry/sdk/ir;

    iget-object v12, v3, Lcom/flurry/sdk/ic;->e:Ljava/lang/String;

    invoke-virtual {v11, v12, v7}, Lcom/flurry/sdk/ir;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v20

    const/4 v11, 0x0

    iget-object v12, v3, Lcom/flurry/sdk/ic;->f:Ljava/lang/String;

    if-eqz v12, :cond_16

    iget-object v11, v1, Lcom/flurry/sdk/is;->d:Lcom/flurry/sdk/ir;

    invoke-virtual {v11, v12, v7}, Lcom/flurry/sdk/ir;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v29, v7

    goto :goto_a

    :cond_16
    move-object/from16 v29, v11

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0xf731400

    add-long v21, v11, v13

    new-instance v7, Lcom/flurry/sdk/iv;

    iget-object v11, v3, Lcom/flurry/sdk/ic;->b:Ljava/lang/String;

    iget-wide v12, v3, Lcom/flurry/sdk/ic;->a:J

    iget-object v14, v1, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    iget-object v14, v14, Lcom/flurry/sdk/if;->e:Lcom/flurry/sdk/id;

    iget v14, v14, Lcom/flurry/sdk/id;->b:I

    iget v15, v3, Lcom/flurry/sdk/ic;->g:I

    iget-object v2, v3, Lcom/flurry/sdk/ic;->d:Lcom/flurry/sdk/jc;

    move-object/from16 v30, v4

    iget-object v4, v3, Lcom/flurry/sdk/ic;->j:Ljava/util/Map;

    move-wide/from16 v31, v5

    iget v5, v3, Lcom/flurry/sdk/ic;->i:I

    iget v6, v3, Lcom/flurry/sdk/ic;->h:I

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    move-wide/from16 v18, v12

    move/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v25, v2

    move-object/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    invoke-direct/range {v16 .. v29}, Lcom/flurry/sdk/iv;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/flurry/sdk/jc;Ljava/util/Map;IILjava/lang/String;)V

    iget-wide v2, v3, Lcom/flurry/sdk/ic;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    move-object/from16 v4, v30

    move-wide/from16 v5, v31

    goto/16 :goto_9

    :cond_17
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_19

    new-instance v11, Lcom/flurry/sdk/iz;

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v5

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->g()J

    move-result-wide v12

    move-object v2, v11

    move-object/from16 v3, p1

    move v4, v8

    move-wide v7, v12

    invoke-direct/range {v2 .. v10}, Lcom/flurry/sdk/iz;-><init>(Ljava/lang/String;ZJJLcom/flurry/sdk/jd;Ljava/util/Map;)V

    const-string v2, "flurry.session_end"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Storing Pulse callbacks for event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3, v2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/flurry/sdk/is;->f:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_18
    :try_start_6
    sget-object v2, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Firing Pulse callbacks for event: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3, v2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iz;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Lcom/flurry/sdk/if;)Z
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/if;->e:Lcom/flurry/sdk/id;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, ""

    if-eqz v1, :cond_6

    iget-object v5, v1, Lcom/flurry/sdk/id;->a:Ljava/util/List;

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v1, Lcom/flurry/sdk/id;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    iget-object v6, v1, Lcom/flurry/sdk/id;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/flurry/sdk/ic;

    if-eqz v6, :cond_5

    iget-object v7, v6, Lcom/flurry/sdk/ic;->b:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-wide v7, v6, Lcom/flurry/sdk/ic;->a:J

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_4

    iget-object v7, v6, Lcom/flurry/sdk/ic;->e:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v6, v6, Lcom/flurry/sdk/ic;->c:Ljava/util/List;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/flurry/sdk/ii;

    iget-object v8, v7, Lcom/flurry/sdk/ii;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v6, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v7, "An event is missing a name"

    :goto_1
    invoke-static {v2, v6, v7}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    instance-of v8, v7, Lcom/flurry/sdk/ij;

    if-eqz v8, :cond_1

    check-cast v7, Lcom/flurry/sdk/ij;

    iget-object v7, v7, Lcom/flurry/sdk/ij;->c:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v6, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v7, "An event trigger is missing a param name"

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_5

    :cond_4
    sget-object v1, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v5, "A callback template is missing required values"

    invoke-static {v2, v1, v5}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/flurry/sdk/if;->e:Lcom/flurry/sdk/id;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/flurry/sdk/id;->e:Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    return v3

    :cond_8
    :goto_4
    sget-object p0, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v1, "Config response is missing required values."

    invoke-static {v2, p0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static synthetic c(Lcom/flurry/sdk/is;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/is;->m()V

    return-void
.end method

.method public static synthetic d(Lcom/flurry/sdk/is;)Lcom/flurry/sdk/ky;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/is;->c:Lcom/flurry/sdk/ky;

    return-object p0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 15

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/is;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    iget-boolean v0, p0, Lcom/flurry/sdk/is;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jt;->b()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/sdk/jt;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    const/4 v5, 0x3

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/flurry/sdk/is;->o:Z

    const/4 v6, 0x0

    if-eq v4, v2, :cond_4

    sget-object v3, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v4, "Limit ad tracking value has changed, purging"

    invoke-static {v5, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/flurry/sdk/is;->n:J

    iget-object v4, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    iget-wide v11, v4, Lcom/flurry/sdk/if;->b:J

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    add-long/2addr v9, v11

    cmp-long v4, v7, v9

    if-gez v4, :cond_6

    sget-object v0, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v1, "Cached Proton config valid, no need to refresh"

    invoke-static {v5, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/is;->q:Z

    if-nez v0, :cond_5

    iput-boolean v3, p0, Lcom/flurry/sdk/is;->q:Z

    const-string v0, "flurry.session_start"

    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/is;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, p0, Lcom/flurry/sdk/is;->n:J

    iget-object v9, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    iget-wide v9, v9, Lcom/flurry/sdk/if;->c:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v9, v10}, Ljava/lang/Long;->signum(J)I

    mul-long v9, v9, v13

    add-long/2addr v7, v9

    cmp-long v9, v3, v7

    if-ltz v9, :cond_7

    :try_start_5
    sget-object v3, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v4, "Cached Proton config expired, purging"

    invoke-static {v5, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    iget-object v3, p0, Lcom/flurry/sdk/is;->e:Lcom/flurry/sdk/kl;

    invoke-virtual {v3}, Lcom/flurry/sdk/kl;->a()V

    :cond_7
    :goto_1
    invoke-static {}, Lcom/flurry/sdk/ke;->a()Lcom/flurry/sdk/ke;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/flurry/sdk/kt;->a(Ljava/lang/Object;)V

    sget-object v3, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v4, "Requesting proton config"

    invoke-static {v5, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/flurry/sdk/is;->f()[B

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_8

    monitor-exit p0

    return-void

    :cond_8
    :try_start_6
    new-instance v4, Lcom/flurry/sdk/la;

    invoke-direct {v4}, Lcom/flurry/sdk/la;-><init>()V

    iget-object v5, p0, Lcom/flurry/sdk/is;->j:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "https://proton.flurry.com/sdk/v1/config"

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/flurry/sdk/is;->j:Ljava/lang/String;

    :goto_2
    iput-object v5, v4, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    const/16 v5, 0x1388

    iput v5, v4, Lcom/flurry/sdk/mg;->u:I

    sget-object v5, Lcom/flurry/sdk/lc$a;->c:Lcom/flurry/sdk/lc$a;

    iput-object v5, v4, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    const-string v5, "application/x-flurry;version=2"

    const-string v6, "application/x-flurry;version=2"

    invoke-static {v3}, Lcom/flurry/sdk/ky;->a([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Type"

    invoke-virtual {v4, v8, v5}, Lcom/flurry/sdk/lc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Accept"

    invoke-virtual {v4, v5, v6}, Lcom/flurry/sdk/lc;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "FM-Checksum"

    invoke-virtual {v4, v5, v7}, Lcom/flurry/sdk/lc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/flurry/sdk/lk;

    invoke-direct {v5}, Lcom/flurry/sdk/lk;-><init>()V

    iput-object v5, v4, Lcom/flurry/sdk/la;->c:Lcom/flurry/sdk/lo;

    new-instance v5, Lcom/flurry/sdk/lk;

    invoke-direct {v5}, Lcom/flurry/sdk/lk;-><init>()V

    iput-object v5, v4, Lcom/flurry/sdk/la;->d:Lcom/flurry/sdk/lo;

    iput-object v3, v4, Lcom/flurry/sdk/la;->b:Ljava/lang/Object;

    new-instance v3, Lcom/flurry/sdk/is$11;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/flurry/sdk/is$11;-><init>(Lcom/flurry/sdk/is;JZ)V

    iput-object v3, v4, Lcom/flurry/sdk/la;->a:Lcom/flurry/sdk/la$a;

    invoke-static {}, Lcom/flurry/sdk/ke;->a()Lcom/flurry/sdk/ke;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/flurry/sdk/kt;->a(Ljava/lang/Object;Lcom/flurry/sdk/mg;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic e(Lcom/flurry/sdk/is;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/is;->g()V

    return-void
.end method

.method public static synthetic f(Lcom/flurry/sdk/is;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/flurry/sdk/is;->q:Z

    return p0
.end method

.method private f()[B
    .locals 6

    :try_start_0
    new-instance v0, Lcom/flurry/sdk/ie;

    invoke-direct {v0}, Lcom/flurry/sdk/ie;-><init>()V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/flurry/sdk/ie;->a:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/flurry/sdk/ma;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/ie;->b:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/flurry/sdk/ma;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/ie;->c:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/kh;->b()I

    move-result v1

    iput v1, v0, Lcom/flurry/sdk/ie;->d:I

    const/4 v1, 0x3

    iput v1, v0, Lcom/flurry/sdk/ie;->e:I

    invoke-static {}, Lcom/flurry/sdk/kc;->a()Lcom/flurry/sdk/kc;

    invoke-static {}, Lcom/flurry/sdk/kc;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/sdk/ie;->f:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/jt;->c()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/flurry/sdk/ie;->g:Z

    new-instance v1, Lcom/flurry/sdk/ih;

    invoke-direct {v1}, Lcom/flurry/sdk/ih;-><init>()V

    iput-object v1, v0, Lcom/flurry/sdk/ie;->h:Lcom/flurry/sdk/ih;

    new-instance v2, Lcom/flurry/sdk/ib;

    invoke-direct {v2}, Lcom/flurry/sdk/ib;-><init>()V

    iput-object v2, v1, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ib;

    iget-object v1, v0, Lcom/flurry/sdk/ie;->h:Lcom/flurry/sdk/ih;

    iget-object v1, v1, Lcom/flurry/sdk/ih;->a:Lcom/flurry/sdk/ib;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ib;->a:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ib;->b:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ib;->c:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ib;->d:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ib;->e:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/sdk/ib;->f:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/flurry/sdk/ie;->i:Ljava/util/List;

    invoke-static {}, Lcom/flurry/sdk/jt;->a()Lcom/flurry/sdk/jt;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/sdk/jt;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Lcom/flurry/sdk/ig;

    invoke-direct {v3}, Lcom/flurry/sdk/ig;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/kb;

    iget v4, v4, Lcom/flurry/sdk/kb;->c:I

    iput v4, v3, Lcom/flurry/sdk/ig;->a:I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/kb;

    iget-boolean v4, v4, Lcom/flurry/sdk/kb;->d:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lcom/flurry/sdk/ig;->b:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/flurry/sdk/md;->b([B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/flurry/sdk/ig;->b:Ljava/lang/String;

    :goto_2
    iget-object v2, v0, Lcom/flurry/sdk/ie;->i:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/flurry/sdk/jx;->a()Lcom/flurry/sdk/jx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/jx;->g()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/flurry/sdk/jx;->d()I

    move-result v2

    new-instance v3, Lcom/flurry/sdk/il;

    invoke-direct {v3}, Lcom/flurry/sdk/il;-><init>()V

    iput-object v3, v0, Lcom/flurry/sdk/ie;->j:Lcom/flurry/sdk/il;

    new-instance v4, Lcom/flurry/sdk/ik;

    invoke-direct {v4}, Lcom/flurry/sdk/ik;-><init>()V

    iput-object v4, v3, Lcom/flurry/sdk/il;->a:Lcom/flurry/sdk/ik;

    iget-object v3, v0, Lcom/flurry/sdk/ie;->j:Lcom/flurry/sdk/il;

    iget-object v3, v3, Lcom/flurry/sdk/il;->a:Lcom/flurry/sdk/ik;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lcom/flurry/sdk/md;->a(DI)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/ik;->a:D

    iget-object v3, v0, Lcom/flurry/sdk/ie;->j:Lcom/flurry/sdk/il;

    iget-object v3, v3, Lcom/flurry/sdk/il;->a:Lcom/flurry/sdk/ik;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lcom/flurry/sdk/md;->a(DI)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/flurry/sdk/ik;->b:D

    iget-object v3, v0, Lcom/flurry/sdk/ie;->j:Lcom/flurry/sdk/il;

    iget-object v3, v3, Lcom/flurry/sdk/il;->a:Lcom/flurry/sdk/ik;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2}, Lcom/flurry/sdk/md;->a(DI)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v3, Lcom/flurry/sdk/ik;->c:F

    :cond_3
    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v1

    const-string v2, "UserId"

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/flurry/sdk/io;

    invoke-direct {v2}, Lcom/flurry/sdk/io;-><init>()V

    iput-object v2, v0, Lcom/flurry/sdk/ie;->k:Lcom/flurry/sdk/io;

    iput-object v1, v2, Lcom/flurry/sdk/io;->a:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/flurry/sdk/is;->b:Lcom/flurry/sdk/ky;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ky;->a(Ljava/lang/Object;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proton config request failed with exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private g()V
    .locals 6

    iget-object v0, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "Processing config response"

    invoke-static {v1, v0, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    iget-object v0, v0, Lcom/flurry/sdk/if;->e:Lcom/flurry/sdk/id;

    iget v0, v0, Lcom/flurry/sdk/id;->c:I

    invoke-static {v0}, Lcom/flurry/sdk/iy;->a(I)V

    iget-object v0, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    iget-object v0, v0, Lcom/flurry/sdk/if;->e:Lcom/flurry/sdk/id;

    iget v0, v0, Lcom/flurry/sdk/id;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/flurry/sdk/iy;->b(I)V

    invoke-static {}, Lcom/flurry/sdk/ja;->a()Lcom/flurry/sdk/ja;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    iget-object v2, v2, Lcom/flurry/sdk/if;->e:Lcom/flurry/sdk/id;

    iget-object v2, v2, Lcom/flurry/sdk/id;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, ".do"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/flurry/sdk/ja;->a:Ljava/lang/String;

    const-string v4, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v1, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object v2, v0, Lcom/flurry/sdk/ja;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/flurry/sdk/is;->i:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    iget-object v1, v1, Lcom/flurry/sdk/if;->f:Lcom/flurry/sdk/ip;

    iget-boolean v1, v1, Lcom/flurry/sdk/ip;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "analyticsEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/is;->e:Lcom/flurry/sdk/kl;

    invoke-virtual {v0}, Lcom/flurry/sdk/kl;->a()V

    iget-object v0, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    iget-object v0, v0, Lcom/flurry/sdk/if;->e:Lcom/flurry/sdk/id;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, v0, Lcom/flurry/sdk/id;->a:Ljava/util/List;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/ic;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/flurry/sdk/ic;->c:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flurry/sdk/ii;

    if-eqz v3, :cond_6

    iget-object v4, v3, Lcom/flurry/sdk/ii;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iput-object v1, v3, Lcom/flurry/sdk/ii;->b:Lcom/flurry/sdk/ic;

    iget-object v4, p0, Lcom/flurry/sdk/is;->e:Lcom/flurry/sdk/kl;

    iget-object v5, v3, Lcom/flurry/sdk/ii;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static synthetic g(Lcom/flurry/sdk/is;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/is;->q:Z

    return v0
.end method

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/is;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    iget-object v0, v0, Lcom/flurry/sdk/kg;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.flurry.android.flurryAppInstall"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "flurry.app_install"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/flurry/sdk/is;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.flurry.android.flurryAppInstall"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic h(Lcom/flurry/sdk/is;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/is;->h()V

    return-void
.end method

.method public static synthetic i(Lcom/flurry/sdk/is;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/is;->m:J

    return-wide v0
.end method

.method private declared-synchronized i()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/is;->k:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v1, "Analytics disabled, not sending pulse reports."

    invoke-static {v0, v1}, Lcom/flurry/sdk/ku;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/is;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " queued reports."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/is;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/iz;

    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Firing Pulse callbacks for event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/iy;->c()Lcom/flurry/sdk/iy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/sdk/iy;->a(Lcom/flurry/sdk/iz;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/is;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic j(Lcom/flurry/sdk/is;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/is;->r:Ljava/lang/Runnable;

    return-object p0
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/is;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/flurry/sdk/is;->h:Lcom/flurry/sdk/kn;

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v2, "Saving queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/is;->h:Lcom/flurry/sdk/kn;

    iget-object v1, p0, Lcom/flurry/sdk/is;->f:Ljava/util/List;

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

.method public static synthetic k(Lcom/flurry/sdk/is;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/sdk/is;->k()V

    return-void
.end method

.method private declared-synchronized l()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/is;->g:Lcom/flurry/sdk/kn;

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/iq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/flurry/sdk/is;->c:Lcom/flurry/sdk/ky;

    iget-object v3, v0, Lcom/flurry/sdk/iq;->c:[B

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/ky;->b([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flurry/sdk/if;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    :try_start_2
    sget-object v4, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to decode saved proton config response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/is;->g:Lcom/flurry/sdk/kn;

    invoke-virtual {v2}, Lcom/flurry/sdk/kn;->b()Z

    move-object v2, v1

    :goto_0
    invoke-static {v2}, Lcom/flurry/sdk/is;->b(Lcom/flurry/sdk/if;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v4, "Loaded saved proton config response"

    invoke-static {v2, v3, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/flurry/sdk/is;->m:J

    iget-wide v2, v0, Lcom/flurry/sdk/iq;->a:J

    iput-wide v2, p0, Lcom/flurry/sdk/is;->n:J

    iget-boolean v0, v0, Lcom/flurry/sdk/iq;->b:Z

    iput-boolean v0, p0, Lcom/flurry/sdk/is;->o:Z

    iput-object v1, p0, Lcom/flurry/sdk/is;->p:Lcom/flurry/sdk/if;

    invoke-direct {p0}, Lcom/flurry/sdk/is;->g()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/is;->l:Z

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/is$3;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/is$3;-><init>(Lcom/flurry/sdk/is;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v2, "Loading queued report data."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/is;->h:Lcom/flurry/sdk/kn;

    invoke-virtual {v0}, Lcom/flurry/sdk/kn;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/is;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/is;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v0

    sput-wide v0, Lcom/flurry/sdk/iu;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/is;->q:Z

    invoke-direct {p0}, Lcom/flurry/sdk/is;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/is;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/is;->b(J)V

    const-string p1, "flurry.session_end"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/is;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    new-instance p2, Lcom/flurry/sdk/is$2;

    invoke-direct {p2, p0}, Lcom/flurry/sdk/is$2;-><init>(Lcom/flurry/sdk/is;)V

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ProtonConfigUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "ProtonEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "analyticsEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x4

    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x6

    sget-object p2, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    :goto_1
    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/sdk/is;->j:Ljava/lang/String;

    sget-object p2, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, protonConfigUrl = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/is;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/flurry/sdk/is;->i:Z

    sget-object p2, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, protonEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/is;->i:Z

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/flurry/sdk/is;->k:Z

    sget-object p2, Lcom/flurry/sdk/is;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/flurry/sdk/is;->k:Z

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x66855b25 -> :sswitch_2
        0x2633fcbb -> :sswitch_1
        0x5edae5c7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    iget-boolean v0, p0, Lcom/flurry/sdk/is;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/is;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/is;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    invoke-static {}, Lcom/flurry/sdk/jr;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/is;->b(J)V

    invoke-direct {p0}, Lcom/flurry/sdk/is;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    iget-boolean v0, p0, Lcom/flurry/sdk/is;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/md;->b()V

    invoke-direct {p0}, Lcom/flurry/sdk/is;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
