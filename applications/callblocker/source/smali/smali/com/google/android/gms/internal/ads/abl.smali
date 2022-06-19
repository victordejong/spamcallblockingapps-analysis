.class public final Lcom/google/android/gms/internal/ads/abl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/abl;->a:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/abl;->a:J

    .line 22
    :goto_0
    return-wide v0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    new-instance v4, Lcom/google/android/gms/internal/ads/abm;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/abm;-><init>(Ljava/nio/ByteBuffer;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/abh;

    sget-object v5, Lcom/google/android/gms/internal/ads/abn;->a:Lcom/google/android/gms/internal/ads/abn;

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ads/abh;-><init>(Lcom/google/android/gms/internal/ads/dhf;Lcom/google/android/gms/internal/ads/aci;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dhd;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/adi;

    .line 9
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/afi;

    if-eqz v5, :cond_1

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/afi;

    .line 13
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dhd;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/adi;

    .line 14
    instance-of v5, v0, Lcom/google/android/gms/internal/ads/ail;

    if-eqz v5, :cond_2

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/ads/ail;

    .line 19
    :goto_2
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ail;->c()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ail;->b()J

    move-result-wide v0

    div-long v0, v4, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/abl;->a:J

    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/abl;->a:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 12
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 17
    goto :goto_2

    .line 22
    :catch_0
    move-exception v0

    :goto_3
    move-wide v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_3
.end method
