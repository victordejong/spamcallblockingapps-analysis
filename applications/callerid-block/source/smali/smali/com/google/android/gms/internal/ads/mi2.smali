.class final Lcom/google/android/gms/internal/ads/mi2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zu1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/gt1;

.field private final b:Lcom/google/android/gms/internal/ads/yt1;

.field private final c:Lcom/google/android/gms/internal/ads/zi2;

.field private final d:Lcom/google/android/gms/internal/ads/zzfx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/gt1;Lcom/google/android/gms/internal/ads/yt1;Lcom/google/android/gms/internal/ads/zi2;Lcom/google/android/gms/internal/ads/zzfx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mi2;->a:Lcom/google/android/gms/internal/ads/gt1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mi2;->b:Lcom/google/android/gms/internal/ads/yt1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mi2;->c:Lcom/google/android/gms/internal/ads/zi2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/mi2;->d:Lcom/google/android/gms/internal/ads/zzfx;

    return-void
.end method

.method private final d()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mi2;->b:Lcom/google/android/gms/internal/ads/yt1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt1;->c()Lcom/google/android/gms/internal/ads/d61;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mi2;->a:Lcom/google/android/gms/internal/ads/gt1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/gt1;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "v"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mi2;->a:Lcom/google/android/gms/internal/ads/gt1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/gt1;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gms"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/d61;->t0()Ljava/lang/String;

    move-result-object v1

    const-string v2, "int"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mi2;->d:Lcom/google/android/gms/internal/ads/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfx;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "up"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "t"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mi2;->c:Lcom/google/android/gms/internal/ads/zi2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zi2;->a(Landroid/view/View;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mi2;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mi2;->b:Lcom/google/android/gms/internal/ads/yt1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yt1;->b()Lcom/google/android/gms/internal/ads/d61;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/mi2;->a:Lcom/google/android/gms/internal/ads/gt1;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/gt1;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gai"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/d61;->u0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "did"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/d61;->v0()Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzct;->zza()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dst"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/d61;->w0()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "doo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mi2;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/mi2;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mi2;->c:Lcom/google/android/gms/internal/ads/zi2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zi2;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lts"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
