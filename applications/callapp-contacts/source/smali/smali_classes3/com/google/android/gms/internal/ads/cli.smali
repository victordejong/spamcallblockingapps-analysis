.class final synthetic Lcom/google/android/gms/internal/ads/cli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/daq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/clj;

.field private final b:Lcom/google/android/gms/internal/ads/crj;

.field private final c:Lcom/google/android/gms/internal/ads/aor;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/clj;Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/aor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cli;->a:Lcom/google/android/gms/internal/ads/clj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cli;->b:Lcom/google/android/gms/internal/ads/crj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cli;->c:Lcom/google/android/gms/internal/ads/aor;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cli;->b:Lcom/google/android/gms/internal/ads/crj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cli;->c:Lcom/google/android/gms/internal/ads/aor;

    check-cast p1, Lcom/google/android/gms/internal/ads/cpk;

    .line 2
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/crj;->b:Lcom/google/android/gms/internal/ads/cpk;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/cpk;->b:Lcom/google/android/gms/internal/ads/cpi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpi;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/cov;

    .line 6
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/cov;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, "FirstPartyRenderer"

    .line 9
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-nez v2, :cond_3

    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/aor;->a(Lcom/google/android/gms/internal/ads/dbt;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
