.class final Lcom/google/android/gms/internal/ads/dii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cnt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/clu;

.field private final b:Lcom/google/android/gms/internal/ads/cmh;

.field private final c:Lcom/google/android/gms/internal/ads/diu;

.field private final d:Lcom/google/android/gms/internal/ads/dil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/clu;Lcom/google/android/gms/internal/ads/cmh;Lcom/google/android/gms/internal/ads/diu;Lcom/google/android/gms/internal/ads/dil;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dii;->a:Lcom/google/android/gms/internal/ads/clu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dii;->b:Lcom/google/android/gms/internal/ads/cmh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dii;->c:Lcom/google/android/gms/internal/ads/diu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dii;->d:Lcom/google/android/gms/internal/ads/dil;

    .line 6
    return-void
.end method

.method private final d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string/jumbo v1, "v"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dii;->a:Lcom/google/android/gms/internal/ads/clu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/clu;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string/jumbo v1, "gms"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dii;->a:Lcom/google/android/gms/internal/ads/clu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/clu;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v1, "int"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dii;->b:Lcom/google/android/gms/internal/ads/cmh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cmh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string/jumbo v1, "up"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dii;->d:Lcom/google/android/gms/internal/ads/dil;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dil;->a()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dii;->d()Ljava/util/Map;

    move-result-object v0

    .line 16
    const-string/jumbo v1, "gai"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dii;->a:Lcom/google/android/gms/internal/ads/clu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/clu;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string/jumbo v1, "did"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dii;->b:Lcom/google/android/gms/internal/ads/cmh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cmh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string/jumbo v1, "dst"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dii;->b:Lcom/google/android/gms/internal/ads/cmh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cmh;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string/jumbo v1, "doo"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dii;->b:Lcom/google/android/gms/internal/ads/cmh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cmh;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-object v0
.end method

.method final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dii;->c:Lcom/google/android/gms/internal/ads/diu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/diu;->a(Landroid/view/View;)V

    .line 8
    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dii;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dii;->d()Ljava/util/Map;

    move-result-object v0

    .line 23
    const-string/jumbo v1, "lts"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dii;->c:Lcom/google/android/gms/internal/ads/diu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/diu;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-object v0
.end method
