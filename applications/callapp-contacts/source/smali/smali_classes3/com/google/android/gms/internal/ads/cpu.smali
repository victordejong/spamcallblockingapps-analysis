.class public final Lcom/google/android/gms/internal/ads/cpu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cov;

.field private final b:Lcom/google/android/gms/internal/ads/coz;

.field private final c:Lcom/google/android/gms/internal/ads/brs;

.field private final d:Lcom/google/android/gms/internal/ads/cus;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cpu;->a:Lcom/google/android/gms/internal/ads/cov;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cpu;->b:Lcom/google/android/gms/internal/ads/coz;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cpu;->c:Lcom/google/android/gms/internal/ads/brs;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cpu;->d:Lcom/google/android/gms/internal/ads/cus;

    return-void
.end method

.method private final a(Ljava/lang/String;I)V
    .locals 7

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpu;->a:Lcom/google/android/gms/internal/ads/cov;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/cov;->ad:Z

    if-nez v0, :cond_0

    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/cpu;->d:Lcom/google/android/gms/internal/ads/cus;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/cus;->a(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/ads/brz;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cpu;->b:Lcom/google/android/gms/internal/ads/coz;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/coz;->b:Ljava/lang/String;

    move-object v0, v6

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/brz;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cpu;->c:Lcom/google/android/gms/internal/ads/brs;

    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/brs;->a(Lcom/google/android/gms/internal/ads/brz;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    sget v1, Lcom/google/android/gms/internal/ads/brp;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/ads/cpu;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
