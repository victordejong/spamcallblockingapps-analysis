.class public final Lcom/google/android/gms/measurement/internal/fl;
.super Lcom/google/android/gms/measurement/internal/de;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/measurement/internal/jo;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/jo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/de;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fl;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/fl;)Lcom/google/android/gms/measurement/internal/jo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ep;->aj_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fl;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 3
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 6000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4
    invoke-static {p2, v2}, Lcom/google/android/gms/common/util/s;->a(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 7000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)Lcom/google/android/gms/common/e;

    move-result-object p2

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/common/e;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 2
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->b:Ljava/lang/Boolean;

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->b:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->c:Ljava/lang/String;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 8
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 8000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 9
    invoke-static {p2, v2, p1}, Lcom/google/android/gms/common/d;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fl;->c:Ljava/lang/String;

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string v0, "Unknown calling package name \'%s\'."

    .line 11
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 10000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    throw p2

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 9000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "Measurement Service called without app package"

    .line 16
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/SecurityException;

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->h()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzu:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/ju;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/measurement/internal/zzp;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkl;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/fi;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/measurement/internal/fi;-><init>(Lcom/google/android/gms/measurement/internal/fl;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 6
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/internal/js;

    if-nez p2, :cond_1

    .line 9
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/ju;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10
    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {v3, v2}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/js;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 12
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get user properties. appId"

    .line 13
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ey;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/ey;-><init>(Lcom/google/android/gms/measurement/internal/fl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 13000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string p3, "Failed to get conditional user properties"

    .line 7
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ez;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/ez;-><init>(Lcom/google/android/gms/measurement/internal/fl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 14000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string p3, "Failed to get conditional user properties as"

    .line 7
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkl;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ex;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/ex;-><init>(Lcom/google/android/gms/measurement/internal/fl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 4
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/js;

    if-nez p4, :cond_1

    .line 7
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/ju;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/js;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p3

    .line 12000
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Failed to get user properties as. appId"

    .line 11
    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzp;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkl;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    iget-object v0, p4, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/ew;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ew;-><init>(Lcom/google/android/gms/measurement/internal/fl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ep;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/js;

    if-nez p3, :cond_1

    .line 9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/js;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/ju;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    :cond_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Lcom/google/android/gms/measurement/internal/js;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 11000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 12
    iget-object p3, p4, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    .line 13
    invoke-virtual {p2, p4, p3, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/measurement/internal/fk;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/fk;-><init>(Lcom/google/android/gms/measurement/internal/fl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/et;

    .line 4
    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/measurement/internal/et;-><init>(Lcom/google/android/gms/measurement/internal/fl;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaa;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/ev;

    .line 6
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/ev;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzaa;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzaa;->zzc:Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaa;

    .line 4
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    .line 5
    iget-object p1, p2, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzaa;->zza:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/measurement/internal/eu;

    .line 6
    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/eu;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzaa;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/fe;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/fe;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/ff;

    .line 4
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/ff;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/fh;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/fh;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/fj;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/fj;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->f()Lcom/google/android/gms/measurement/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/je;->v()V

    new-instance v11, Lcom/google/android/gms/measurement/internal/n;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/i;->t:Lcom/google/android/gms/measurement/internal/es;

    const-string v3, ""

    const-string v5, "dep"

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v11

    move-object v4, p1

    move-object v10, p2

    .line 2
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/es;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/jd;->f:Lcom/google/android/gms/measurement/internal/jo;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/jo;->g()Lcom/google/android/gms/measurement/internal/jq;

    move-result-object p2

    .line 4
    invoke-virtual {p2, v11}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/measurement/internal/n;)Lcom/google/android/gms/internal/measurement/bw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/ey;->j()[B

    move-result-object p2

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 15000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 6
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v2

    .line 8
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    array-length v3, p2

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Saving default event parameters, appId, data size"

    .line 10
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/ContentValues;

    .line 11
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "parameters"

    .line 13
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/i;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "default_event_params"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 14
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p2

    .line 16000
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Failed to insert default event parameters (got -1). appId"

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 17
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 17000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing default event parameters. appId"

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/fb;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/fb;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)[B
    .locals 11

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 1001
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v1

    .line 6
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Log and bundle. event"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/measurement/internal/fg;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/fg;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/ep;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 11
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v4

    .line 2000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v5, "Log and bundle returned null. appId"

    .line 13
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 14
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B

    :cond_0
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/jo;->Y_()Lcom/google/android/gms/common/util/f;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/f;->c()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v7

    .line 3000
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v8, "Log and bundle processed. event, size, time_ms"

    .line 17
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 18
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 3001
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v9

    .line 18
    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    array-length v10, v4

    .line 19
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    div-long/2addr v5, v2

    sub-long/2addr v5, v0

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 21
    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 4000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/do;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 24
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/jo;->f:Lcom/google/android/gms/measurement/internal/es;

    .line 4001
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v2

    .line 24
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzas;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 25
    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fl;->f(Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/jo;->d(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/String;Z)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/fa;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/fa;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jy;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->aw:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzv:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/internal/fc;

    .line 5
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/fc;-><init>(Lcom/google/android/gms/measurement/internal/fl;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ep;->aj_()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fl;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/ep;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
