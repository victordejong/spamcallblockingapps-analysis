.class final synthetic Lcom/google/android/gms/internal/ads/cgb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dar;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cgc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgb;->a:Lcom/google/android/gms/internal/ads/cgc;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgb;->a:Lcom/google/android/gms/internal/ads/cgc;

    .line 1030
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cgc;->c:Lcom/google/android/gms/internal/ads/byp;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cgc;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cgc;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    .line 2011
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2013
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/byp;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 2015
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 2016
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    .line 2018
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/byp;->c:Lorg/json/JSONObject;

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/bjl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2019
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    :cond_2
    if-nez v5, :cond_3

    .line 2021
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 2022
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2023
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/bys;

    .line 2024
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/bys;->a:Ljava/lang/String;

    .line 2025
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2026
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2028
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/bys;->b:Landroid/os/Bundle;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2012
    :cond_5
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 1032
    :cond_6
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1033
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1034
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1035
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1036
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/cgc;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzvq;->zzcih:Landroid/os/Bundle;

    if-eqz v5, :cond_7

    .line 1037
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/cgc;->e:Lcom/google/android/gms/internal/ads/cpo;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzvq;->zzcih:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    .line 1039
    :goto_4
    new-instance v6, Lcom/google/android/gms/internal/ads/cge;

    invoke-direct {v6, v0, v4, v3, v5}, Lcom/google/android/gms/internal/ads/cge;-><init>(Lcom/google/android/gms/internal/ads/cgc;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cgc;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 1040
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/dbh;->a(Lcom/google/android/gms/internal/ads/dar;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v3

    .line 1041
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/dbc;->c(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/internal/ads/aq;->aV:Lcom/google/android/gms/internal/ads/af;

    .line 1043
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v5

    .line 1044
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/cgc;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 1045
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/dbc;->a(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v3

    const-class v5, Ljava/lang/Throwable;

    new-instance v6, Lcom/google/android/gms/internal/ads/cgd;

    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/ads/cgd;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/cgc;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 1046
    invoke-virtual {v3, v5, v6, v4}, Lcom/google/android/gms/internal/ads/dbc;->a(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbc;

    move-result-object v3

    .line 1047
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1049
    :cond_8
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dbh;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/dbm;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/ads/cgg;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/cgg;-><init>(Ljava/util/List;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgc;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 1050
    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/ads/dbm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
