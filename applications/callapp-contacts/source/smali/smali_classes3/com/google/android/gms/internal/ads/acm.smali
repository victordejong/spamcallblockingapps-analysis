.class public final Lcom/google/android/gms/internal/ads/acm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)J
    .locals 8

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/acm;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/aci;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/aci;-><init>(Ljava/nio/ByteBuffer;)V

    .line 7
    new-instance p1, Lcom/google/android/gms/internal/ads/aon;

    sget-object v1, Lcom/google/android/gms/internal/ads/aco;->a:Lcom/google/android/gms/internal/ads/aco;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/aon;-><init>(Lcom/google/android/gms/internal/ads/drt;Lcom/google/android/gms/internal/ads/alm;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/drr;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aqp;

    .line 9
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/asr;

    if-eqz v4, :cond_1

    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/asr;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 13
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/drr;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aqp;

    .line 14
    instance-of v4, v0, Lcom/google/android/gms/internal/ads/arq;

    if-eqz v4, :cond_3

    .line 15
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/arq;

    :cond_4
    const-wide/16 v4, 0x3e8

    .line 1007
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/arq;->b:J

    mul-long v6, v6, v4

    .line 2006
    iget-wide v0, v1, Lcom/google/android/gms/internal/ads/arq;->a:J

    .line 19
    div-long/2addr v6, v0

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/acm;->a:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v6

    :catch_0
    return-wide v2
.end method
