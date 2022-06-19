.class public abstract Lcom/google/android/gms/internal/ads/cju;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/caj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AppOpenAd:",
        "Lcom/google/android/gms/internal/ads/anp;",
        "AppOpenRequestComponent::",
        "Lcom/google/android/gms/internal/ads/akz<",
        "TAppOpenAd;>;AppOpenRequestComponentBuilder::",
        "Lcom/google/android/gms/internal/ads/aqw<",
        "TAppOpenRequestComponent;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/caj<",
        "TAppOpenAd;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field protected final b:Lcom/google/android/gms/internal/ads/afq;

.field final c:Lcom/google/android/gms/internal/ads/ckb;

.field final d:Lcom/google/android/gms/internal/ads/cmh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TAppOpenRequestComponent;TAppOpenAd;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TAppOpenAd;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/content/Context;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Lcom/google/android/gms/internal/ads/cpq;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/afq;Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/ckb;Lcom/google/android/gms/internal/ads/cpq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/afq;",
            "Lcom/google/android/gms/internal/ads/cmh<",
            "TAppOpenRequestComponent;TAppOpenAd;>;",
            "Lcom/google/android/gms/internal/ads/ckb;",
            "Lcom/google/android/gms/internal/ads/cpq;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cju;->f:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cju;->a:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cju;->b:Lcom/google/android/gms/internal/ads/afq;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cju;->d:Lcom/google/android/gms/internal/ads/cmh;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/cju;->c:Lcom/google/android/gms/internal/ads/ckb;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/cju;->h:Lcom/google/android/gms/internal/ads/cpq;

    .line 8
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cju;->g:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/alp;Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/aqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/alp;",
            "Lcom/google/android/gms/internal/ads/aqz;",
            "Lcom/google/android/gms/internal/ads/awm;",
            ")TAppOpenRequestComponentBuilder;"
        }
    .end annotation
.end method

.method final declared-synchronized a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cmk;",
            ")TAppOpenRequestComponentBuilder;"
        }
    .end annotation

    monitor-enter p0

    .line 30
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/ckc;

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->eM:Lcom/google/android/gms/internal/ads/af;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/alp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cju;->g:Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/alp;-><init>(Landroid/view/ViewGroup;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/aqz$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/aqz$a;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cju;->f:Landroid/content/Context;

    .line 4002
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/aqz$a;->a:Landroid/content/Context;

    .line 35
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ckc;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 4004
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/aqz$a;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/aqz$a;->a()Lcom/google/android/gms/internal/ads/aqz;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/ads/awm$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/awm$a;-><init>()V

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/awm$a;->a()Lcom/google/android/gms/internal/ads/awm;

    move-result-object v1

    .line 39
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/cju;->a(Lcom/google/android/gms/internal/ads/alp;Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 40
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cju;->c:Lcom/google/android/gms/internal/ads/ckb;

    .line 41
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/ckb;)Lcom/google/android/gms/internal/ads/ckb;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/google/android/gms/internal/ads/awm$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/awm$a;-><init>()V

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cju;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/awm$a;->a(Lcom/google/android/gms/internal/ads/arp;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/awm$a;

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cju;->a:Ljava/util/concurrent/Executor;

    .line 4028
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/awm$a;->e:Ljava/util/Set;

    new-instance v4, Lcom/google/android/gms/internal/ads/ayi;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/ayi;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cju;->a:Ljava/util/concurrent/Executor;

    .line 4030
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/awm$a;->l:Ljava/util/Set;

    new-instance v4, Lcom/google/android/gms/internal/ads/ayi;

    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/ayi;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cju;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/awm$a;->a(Lcom/google/android/gms/internal/ads/atu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/awm$a;

    .line 4034
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/awm$a;->m:Lcom/google/android/gms/internal/ads/cmi;

    .line 48
    new-instance v0, Lcom/google/android/gms/internal/ads/alp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cju;->g:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/alp;-><init>(Landroid/view/ViewGroup;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/aqz$a;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/aqz$a;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cju;->f:Landroid/content/Context;

    .line 5002
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/aqz$a;->a:Landroid/content/Context;

    .line 49
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ckc;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 5004
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/aqz$a;->b:Lcom/google/android/gms/internal/ads/cpo;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aqz$a;->a()Lcom/google/android/gms/internal/ads/aqz;

    move-result-object p1

    .line 52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/awm$a;->a()Lcom/google/android/gms/internal/ads/awm;

    move-result-object v1

    .line 53
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/cju;->a(Lcom/google/android/gms/internal/ads/alp;Lcom/google/android/gms/internal/ads/aqz;Lcom/google/android/gms/internal/ads/awm;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzwc;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cju;->h:Lcom/google/android/gms/internal/ads/cpq;

    .line 5032
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/cpq;->j:Lcom/google/android/gms/internal/ads/zzwc;

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cju;->e:Lcom/google/android/gms/internal/ads/dbt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dbt;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/cai;Lcom/google/android/gms/internal/ads/cal;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/cai;",
            "Lcom/google/android/gms/internal/ads/cal<",
            "-TAppOpenAd;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string p3, "loadAd must be called on the main UI thread."

    .line 11
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/String;)V

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for app open ad."

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cju;->a:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/cjy;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/cjy;-><init>(Lcom/google/android/gms/internal/ads/cju;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return p3

    .line 16
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cju;->e:Lcom/google/android/gms/internal/ads/dbt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 17
    monitor-exit p0

    return p3

    .line 18
    :cond_1
    :try_start_2
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/cju;->f:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzvq;->zzcid:Z

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/ads/cqb;->a(Landroid/content/Context;Z)V

    .line 19
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/cju;->h:Lcom/google/android/gms/internal/ads/cpq;

    .line 1016
    iput-object p2, p3, Lcom/google/android/gms/internal/ads/cpq;->d:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->zzqm()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object p2

    .line 2009
    iput-object p2, p3, Lcom/google/android/gms/internal/ads/cpq;->b:Lcom/google/android/gms/internal/ads/zzvt;

    .line 3006
    iput-object p1, p3, Lcom/google/android/gms/internal/ads/cpq;->a:Lcom/google/android/gms/internal/ads/zzvq;

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/cpq;->a()Lcom/google/android/gms/internal/ads/cpo;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/google/android/gms/internal/ads/ckc;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/ckc;-><init>(Lcom/google/android/gms/internal/ads/cka;)V

    .line 25
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/ckc;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cju;->d:Lcom/google/android/gms/internal/ads/cmh;

    new-instance p3, Lcom/google/android/gms/internal/ads/cmm;

    invoke-direct {p3, p2}, Lcom/google/android/gms/internal/ads/cmm;-><init>(Lcom/google/android/gms/internal/ads/cmk;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/cjw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cjw;-><init>(Lcom/google/android/gms/internal/ads/cju;)V

    .line 27
    invoke-interface {p1, p3, v0}, Lcom/google/android/gms/internal/ads/cmh;->a(Lcom/google/android/gms/internal/ads/cmm;Lcom/google/android/gms/internal/ads/cmj;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cju;->e:Lcom/google/android/gms/internal/ads/dbt;

    .line 28
    new-instance p3, Lcom/google/android/gms/internal/ads/cka;

    invoke-direct {p3, p0, p4, p2}, Lcom/google/android/gms/internal/ads/cka;-><init>(Lcom/google/android/gms/internal/ads/cju;Lcom/google/android/gms/internal/ads/cal;Lcom/google/android/gms/internal/ads/ckc;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cju;->a:Ljava/util/concurrent/Executor;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 29
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
