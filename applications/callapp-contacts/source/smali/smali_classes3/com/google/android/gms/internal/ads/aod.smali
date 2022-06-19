.class final Lcom/google/android/gms/internal/ads/aod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "Lcom/google/android/gms/internal/ads/anv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dbi;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/aoa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aoa;Lcom/google/android/gms/internal/ads/dbi;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aod;->b:Lcom/google/android/gms/internal/ads/aoa;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aod;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/anv;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aod;->b:Lcom/google/android/gms/internal/ads/aoa;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/anv;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aod;->a:Lcom/google/android/gms/internal/ads/dbi;

    if-eqz p1, :cond_2

    .line 2009
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2012
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 2013
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/dbt;

    .line 2014
    const-class v4, Ljava/lang/Throwable;

    new-instance v5, Lcom/google/android/gms/internal/ads/aoc;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/aoc;-><init>(Lcom/google/android/gms/internal/ads/dbi;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/aoa;->a:Ljava/util/concurrent/Executor;

    .line 3015
    invoke-static {v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/dac;->a(Lcom/google/android/gms/internal/ads/dbt;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    .line 2016
    new-instance v4, Lcom/google/android/gms/internal/ads/aob;

    invoke-direct {v4, v0, v1, v3}, Lcom/google/android/gms/internal/ads/aob;-><init>(Lcom/google/android/gms/internal/ads/aoa;Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dbt;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/aoa;->a:Ljava/util/concurrent/Executor;

    .line 3019
    invoke-static {v2, v4, v3}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v2

    goto :goto_0

    .line 2019
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/aog;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aog;-><init>(Lcom/google/android/gms/internal/ads/aoa;Lcom/google/android/gms/internal/ads/dbi;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aoa;->a:Ljava/util/concurrent/Executor;

    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/dbi;Ljava/util/concurrent/Executor;)V

    return-void

    .line 2010
    :cond_2
    :goto_1
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/aoa;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/internal/ads/anz;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/anz;-><init>(Lcom/google/android/gms/internal/ads/dbi;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aod;->a:Lcom/google/android/gms/internal/ads/dbi;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/dbi;->a(Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aod;->b:Lcom/google/android/gms/internal/ads/aoa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aoa;->a(Lcom/google/android/gms/internal/ads/aoa;)V

    return-void
.end method
