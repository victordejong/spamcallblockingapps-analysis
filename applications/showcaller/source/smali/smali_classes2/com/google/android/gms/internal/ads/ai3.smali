.class public final Lcom/google/android/gms/internal/ads/ai3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dl3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/br3;

.field private b:Lcom/google/android/gms/internal/ads/uq3;

.field private c:Lcom/google/android/gms/internal/ads/vq3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/br3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ai3;->a:Lcom/google/android/gms/internal/ads/br3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rr3;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ai3;->c:Lcom/google/android/gms/internal/ads/vq3;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/uq3;->e(Lcom/google/android/gms/internal/ads/vq3;Lcom/google/android/gms/internal/ads/rr3;)I

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ai3;->c:Lcom/google/android/gms/internal/ads/vq3;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/st3;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/st3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/st3;->a()V

    :cond_0
    return-void
.end method

.method public final d(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/uq3;->h(JJ)V

    return-void
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ai3;->c:Lcom/google/android/gms/internal/ads/vq3;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/z5;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/xq3;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/z5;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/gms/internal/ads/xq3;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/pq3;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/pq3;-><init>(Lcom/google/android/gms/internal/ads/z5;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/ai3;->c:Lcom/google/android/gms/internal/ads/vq3;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ai3;->a:Lcom/google/android/gms/internal/ads/br3;

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/br3;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/uq3;

    move-result-object p1

    .line 3
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 4
    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_7

    .line 5
    aget-object v1, p1, v0

    .line 6
    :try_start_0
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/uq3;->f(Lcom/google/android/gms/internal/ads/vq3;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p7}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    .line 8
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    goto :goto_3

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    if-nez v1, :cond_6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    if-nez p2, :cond_3

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide p2

    cmp-long p8, p2, p4

    if-nez p8, :cond_4

    :cond_3
    const/4 p6, 0x1

    .line 11
    :cond_4
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    .line 12
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    .line 13
    throw p1

    :catch_0
    nop

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    if-nez v1, :cond_6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/vq3;->m()J

    move-result-wide v1

    cmp-long v3, v1, p4

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    .line 15
    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    .line 16
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/vq3;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    if-eqz p3, :cond_8

    .line 17
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ai3;->b:Lcom/google/android/gms/internal/ads/uq3;

    .line 18
    invoke-interface {p1, p8}, Lcom/google/android/gms/internal/ads/uq3;->g(Lcom/google/android/gms/internal/ads/xq3;)V

    return-void

    .line 19
    :cond_8
    new-instance p3, Lcom/google/android/gms/internal/ads/zzjb;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/wa;->m([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, 0x3a

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p5, "None of the available extractors ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") could read the stream."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzjb;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p3
.end method
