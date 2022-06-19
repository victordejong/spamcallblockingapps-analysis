.class final synthetic Lcom/google/android/gms/internal/ads/bve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bvc;

.field private final b:Lcom/google/android/gms/internal/ads/cpk;

.field private final c:Lcom/google/android/gms/internal/ads/cov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bvc;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bve;->a:Lcom/google/android/gms/internal/ads/bvc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bve;->b:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bve;->c:Lcom/google/android/gms/internal/ads/cov;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bve;->a:Lcom/google/android/gms/internal/ads/bvc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bve;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bve;->c:Lcom/google/android/gms/internal/ads/cov;

    check-cast p1, Lorg/json/JSONArray;

    .line 1031
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1032
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v0, Lcom/google/android/gms/internal/ads/cqj;->zzhox:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 1033
    :cond_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget v3, v3, Lcom/google/android/gms/internal/ads/cpo;->k:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_3

    .line 1035
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1036
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/bvc;->c:Lcom/google/android/gms/internal/ads/cqd;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget v6, v6, Lcom/google/android/gms/internal/ads/cpo;->k:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/cqd;->a(I)V

    .line 1037
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget v6, v6, Lcom/google/android/gms/internal/ads/cpo;->k:I

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1038
    :goto_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    iget v6, v6, Lcom/google/android/gms/internal/ads/cpo;->k:I

    if-ge v4, v6, :cond_2

    if-ge v4, v3, :cond_1

    .line 1040
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/internal/ads/bvc;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1041
    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcnp;

    sget-object v7, Lcom/google/android/gms/internal/ads/cqj;->zzhox:Lcom/google/android/gms/internal/ads/cqj;

    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzcnp;-><init>(Lcom/google/android/gms/internal/ads/cqj;)V

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1044
    :cond_2
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 1046
    :cond_3
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/bvc;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/bvg;->a:Lcom/google/android/gms/internal/ads/cxu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bvc;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 2020
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
