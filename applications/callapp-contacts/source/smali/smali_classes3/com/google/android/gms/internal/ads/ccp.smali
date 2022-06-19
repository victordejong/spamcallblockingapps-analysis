.class public final Lcom/google/android/gms/internal/ads/ccp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Lcom/google/android/gms/internal/ads/ccn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dbs;

.field private final b:Lcom/google/android/gms/internal/ads/bjg;

.field private final c:Lcom/google/android/gms/internal/ads/bmi;

.field private final d:Lcom/google/android/gms/internal/ads/ccr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dbs;Lcom/google/android/gms/internal/ads/bjg;Lcom/google/android/gms/internal/ads/bmi;Lcom/google/android/gms/internal/ads/ccr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ccp;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ccp;->b:Lcom/google/android/gms/internal/ads/bjg;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ccp;->c:Lcom/google/android/gms/internal/ads/bmi;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ccp;->d:Lcom/google/android/gms/internal/ads/ccr;

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/ads/cqe;)Landroid/os/Bundle;
    .locals 3

    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqe;->j()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "sdk_version"

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaqr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqe;->i()Lcom/google/android/gms/internal/ads/zzaqr;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "adapter_version"

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaqr;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/ccn;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aU:Lcom/google/android/gms/internal/ads/af;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 1003
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cyc;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccp;->d:Lcom/google/android/gms/internal/ads/ccr;

    .line 1006
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ccr;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccp;->c:Lcom/google/android/gms/internal/ads/bmi;

    .line 1134
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/bmi;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccp;->d:Lcom/google/android/gms/internal/ads/ccr;

    .line 2004
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ccr;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ccp;->a:Lcom/google/android/gms/internal/ads/dbs;

    new-instance v1, Lcom/google/android/gms/internal/ads/cct;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cct;-><init>(Lcom/google/android/gms/internal/ads/ccp;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dbs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0

    .line 12
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ccn;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ccn;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/ccq;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/ccn;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aU:Lcom/google/android/gms/internal/ads/af;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 33
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ccp;->b:Lcom/google/android/gms/internal/ads/bjg;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 34
    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/ads/bjg;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/cqe;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cqe;->c()Z

    .line 37
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/ccp;->a(Lcom/google/android/gms/internal/ads/cqe;)Landroid/os/Bundle;

    move-result-object v3

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdpq; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ccn;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ccn;-><init>(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/ccq;)V

    return-object v0
.end method
