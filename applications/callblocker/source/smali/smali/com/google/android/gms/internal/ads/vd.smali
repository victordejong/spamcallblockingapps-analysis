.class public Lcom/google/android/gms/internal/ads/vd;
.super Lcom/google/android/gms/internal/ads/dts;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dts",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/gms/internal/ads/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ac",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/ac;Lcom/google/android/gms/internal/ads/ebp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ac",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/ebp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/dts;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/ebp;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vd;->a:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/vd;->b:Lcom/google/android/gms/internal/ads/ac;

    .line 4
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/internal/ads/drt;)Lcom/google/android/gms/internal/ads/ecj;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/drt;",
            ")",
            "Lcom/google/android/gms/internal/ads/ecj",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 11
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/drt;->b:[B

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/drt;->c:Ljava/util/Map;

    .line 12
    const-string/jumbo v2, "ISO-8859-1"

    .line 13
    const-string/jumbo v5, "Content-Type"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 14
    if-eqz v0, :cond_1

    .line 15
    const-string/jumbo v5, ";"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    move v0, v3

    .line 16
    :goto_0
    array-length v3, v5

    if-ge v0, v3, :cond_1

    .line 17
    aget-object v3, v5, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "="

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 18
    array-length v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 19
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string/jumbo v7, "charset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 20
    const/4 v0, 0x1

    aget-object v0, v3, v0

    .line 23
    :goto_1
    invoke-direct {v1, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 27
    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qn;->a(Lcom/google/android/gms/internal/ads/drt;)Lcom/google/android/gms/internal/ads/bzv;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ecj;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/bzv;)Lcom/google/android/gms/internal/ads/ecj;

    move-result-object v0

    return-object v0

    .line 21
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 22
    goto :goto_1

    .line 26
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/drt;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_2
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/vd;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vd;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vd;->b:Lcom/google/android/gms/internal/ads/ac;

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ac;->a(Ljava/lang/Object;)V

    .line 10
    :cond_0
    return-void

    .line 7
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
