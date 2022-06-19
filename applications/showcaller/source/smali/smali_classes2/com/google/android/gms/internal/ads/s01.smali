.class public final Lcom/google/android/gms/internal/ads/s01;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/gms/internal/ads/p7;

.field public final c:I

.field public final d:Lcom/google/android/gms/internal/ads/mk3;

.field public final e:J

.field public final f:Lcom/google/android/gms/internal/ads/p7;

.field public final g:I

.field public final h:Lcom/google/android/gms/internal/ads/mk3;

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/p7;ILcom/google/android/gms/internal/ads/mk3;JLcom/google/android/gms/internal/ads/p7;ILcom/google/android/gms/internal/ads/mk3;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/s01;->a:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/s01;->b:Lcom/google/android/gms/internal/ads/p7;

    iput p4, p0, Lcom/google/android/gms/internal/ads/s01;->c:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/s01;->d:Lcom/google/android/gms/internal/ads/mk3;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/s01;->e:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/s01;->f:Lcom/google/android/gms/internal/ads/p7;

    iput p9, p0, Lcom/google/android/gms/internal/ads/s01;->g:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/s01;->h:Lcom/google/android/gms/internal/ads/mk3;

    iput-wide p11, p0, Lcom/google/android/gms/internal/ads/s01;->i:J

    iput-wide p13, p0, Lcom/google/android/gms/internal/ads/s01;->j:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/s01;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/s01;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/s01;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/s01;->a:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/s01;->c:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/s01;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/s01;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/s01;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/s01;->g:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/s01;->g:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/s01;->i:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/s01;->i:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/s01;->j:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/s01;->j:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/s01;->b:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/s01;->b:Lcom/google/android/gms/internal/ads/p7;

    .line 2
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/tu2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/s01;->d:Lcom/google/android/gms/internal/ads/mk3;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/s01;->d:Lcom/google/android/gms/internal/ads/mk3;

    .line 3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/tu2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/s01;->f:Lcom/google/android/gms/internal/ads/p7;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/s01;->f:Lcom/google/android/gms/internal/ads/p7;

    .line 4
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/tu2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/s01;->h:Lcom/google/android/gms/internal/ads/mk3;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/s01;->h:Lcom/google/android/gms/internal/ads/mk3;

    .line 5
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/tu2;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/s01;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s01;->b:Lcom/google/android/gms/internal/ads/p7;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/s01;->c:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s01;->d:Lcom/google/android/gms/internal/ads/mk3;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/s01;->e:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s01;->f:Lcom/google/android/gms/internal/ads/p7;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/s01;->g:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s01;->h:Lcom/google/android/gms/internal/ads/mk3;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/s01;->i:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/s01;->j:J

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
