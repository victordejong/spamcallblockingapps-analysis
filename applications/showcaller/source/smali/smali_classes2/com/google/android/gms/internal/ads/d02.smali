.class final Lcom/google/android/gms/internal/ads/d02;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/ads/ej2;

.field final synthetic d:Lcom/google/android/gms/internal/ads/jj2;

.field final synthetic e:Lcom/google/android/gms/internal/ads/e02;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e02;JLjava/lang/String;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/jj2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/d02;->a:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/d02;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/d02;->c:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/d02;->d:Lcom/google/android/gms/internal/ads/jj2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/e02;->a(Lcom/google/android/gms/internal/ads/e02;)Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/d02;->a:J

    sub-long/2addr v0, v2

    .line 2
    instance-of v2, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x6

    const/4 v11, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 3
    :cond_0
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzehe;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 4
    :cond_1
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 5
    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzfaw;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    .line 6
    :cond_3
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzdym;

    if-eqz v2, :cond_4

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sk2;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    if-ne v2, v11, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/d02;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/d02;->c:Lcom/google/android/gms/internal/ads/ej2;

    .line 9
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/ej2;->c0:Ljava/lang/String;

    move v6, v2

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/e02;->f(Lcom/google/android/gms/internal/ads/e02;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/e02;->c(Lcom/google/android/gms/internal/ads/e02;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/e02;->b(Lcom/google/android/gms/internal/ads/e02;)Lcom/google/android/gms/internal/ads/f02;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/d02;->d:Lcom/google/android/gms/internal/ads/jj2;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/d02;->c:Lcom/google/android/gms/internal/ads/ej2;

    .line 10
    instance-of v3, p1, Lcom/google/android/gms/internal/ads/zzeeg;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeeg;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    move-object v8, v3

    move v7, v2

    move-wide v9, v0

    .line 11
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/f02;->a(Lcom/google/android/gms/internal/ads/jj2;Lcom/google/android/gms/internal/ads/ej2;ILcom/google/android/gms/internal/ads/zzeeg;J)V

    .line 12
    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/ads/kw;->X5:Lcom/google/android/gms/internal/ads/cw;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/sk2;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p1

    .line 16
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzbcz;->d:I

    if-eq v2, v11, :cond_7

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbcz;->g:Lcom/google/android/gms/internal/ads/zzbcz;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbcz;->f:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeeg;

    const/16 v3, 0xd

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbcz;->g:Lcom/google/android/gms/internal/ads/zzbcz;

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeeg;-><init>(ILcom/google/android/gms/internal/ads/zzbcz;)V

    .line 19
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/sk2;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p1

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/e02;->d(Lcom/google/android/gms/internal/ads/e02;)Lcom/google/android/gms/internal/ads/uw1;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/d02;->c:Lcom/google/android/gms/internal/ads/ej2;

    .line 20
    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/google/android/gms/internal/ads/uw1;->c(Lcom/google/android/gms/internal/ads/ej2;JLcom/google/android/gms/internal/ads/zzbcz;)V

    :cond_9
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e02;->a(Lcom/google/android/gms/internal/ads/e02;)Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/d02;->a:J

    sub-long/2addr v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/d02;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d02;->c:Lcom/google/android/gms/internal/ads/ej2;

    .line 2
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/ej2;->c0:Ljava/lang/String;

    const/4 v6, 0x0

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/e02;->f(Lcom/google/android/gms/internal/ads/e02;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e02;->c(Lcom/google/android/gms/internal/ads/e02;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e02;->b(Lcom/google/android/gms/internal/ads/e02;)Lcom/google/android/gms/internal/ads/f02;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/d02;->d:Lcom/google/android/gms/internal/ads/jj2;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/d02;->c:Lcom/google/android/gms/internal/ads/ej2;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    .line 3
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/f02;->a(Lcom/google/android/gms/internal/ads/jj2;Lcom/google/android/gms/internal/ads/ej2;ILcom/google/android/gms/internal/ads/zzeeg;J)V

    .line 4
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->X5:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/d02;->e:Lcom/google/android/gms/internal/ads/e02;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/e02;->d(Lcom/google/android/gms/internal/ads/e02;)Lcom/google/android/gms/internal/ads/uw1;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/d02;->c:Lcom/google/android/gms/internal/ads/ej2;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/uw1;->c(Lcom/google/android/gms/internal/ads/ej2;JLcom/google/android/gms/internal/ads/zzbcz;)V

    :cond_1
    return-void
.end method
