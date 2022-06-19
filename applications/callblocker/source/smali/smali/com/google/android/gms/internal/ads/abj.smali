.class final Lcom/google/android/gms/internal/ads/abj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/drp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/drp;

.field private final b:J

.field private final c:Lcom/google/android/gms/internal/ads/drp;

.field private d:J

.field private e:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/drp;ILcom/google/android/gms/internal/ads/drp;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/abj;->a:Lcom/google/android/gms/internal/ads/drp;

    .line 3
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/abj;->c:Lcom/google/android/gms/internal/ads/drp;

    .line 5
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 6

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abj;->d:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 37
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/abj;->d:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/abj;->a:Lcom/google/android/gms/internal/ads/drp;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/drp;->a([BII)I

    move-result v0

    .line 39
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abj;->d:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/abj;->d:J

    .line 40
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abj;->d:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 41
    sub-int v1, p3, v0

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/abj;->c:Lcom/google/android/gms/internal/ads/drp;

    add-int v3, p2, v0

    invoke-interface {v2, p1, v3, v1}, Lcom/google/android/gms/internal/ads/drp;->a([BII)I

    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abj;->d:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/abj;->d:J

    .line 45
    :cond_1
    return v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/drq;)J
    .locals 14

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, -0x1

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/abj;->e:Landroid/net/Uri;

    .line 8
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    move-object v7, v6

    .line 17
    :goto_0
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 27
    :goto_1
    if-eqz v7, :cond_7

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abj;->a:Lcom/google/android/gms/internal/ads/drp;

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/drp;->a(Lcom/google/android/gms/internal/ads/drq;)J

    move-result-wide v0

    move-wide v2, v0

    .line 29
    :goto_2
    if-eqz v6, :cond_6

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abj;->c:Lcom/google/android/gms/internal/ads/drp;

    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/drp;->a(Lcom/google/android/gms/internal/ads/drq;)J

    move-result-wide v0

    .line 31
    :goto_3
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/abj;->d:J

    .line 32
    cmp-long v4, v2, v8

    if-eqz v4, :cond_0

    cmp-long v4, v0, v8

    if-nez v4, :cond_5

    .line 34
    :cond_0
    :goto_4
    return-wide v8

    .line 10
    :cond_1
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    .line 11
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    .line 12
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    sub-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 14
    :goto_5
    new-instance v0, Lcom/google/android/gms/internal/ads/drq;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/drq;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v7, v0

    goto :goto_0

    .line 13
    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    sub-long v4, v0, v2

    goto :goto_5

    .line 19
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 20
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4

    .line 21
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/drq;->d:J

    iget-wide v12, p1, Lcom/google/android/gms/internal/ads/drq;->e:J

    add-long/2addr v4, v12

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/abj;->b:J

    sub-long/2addr v4, v12

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 23
    :goto_6
    new-instance v0, Lcom/google/android/gms/internal/ads/drq;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/drq;->a:Landroid/net/Uri;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/drq;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v6, v0

    goto :goto_1

    :cond_4
    move-wide v4, v8

    .line 22
    goto :goto_6

    .line 34
    :cond_5
    add-long v8, v2, v0

    goto :goto_4

    :cond_6
    move-wide v0, v10

    goto :goto_3

    :cond_7
    move-wide v2, v10

    goto :goto_2
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abj;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abj;->a:Lcom/google/android/gms/internal/ads/drp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/drp;->b()V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abj;->c:Lcom/google/android/gms/internal/ads/drp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/drp;->b()V

    .line 49
    return-void
.end method
