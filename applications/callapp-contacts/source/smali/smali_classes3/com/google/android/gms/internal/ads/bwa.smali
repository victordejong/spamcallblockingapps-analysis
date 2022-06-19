.class final Lcom/google/android/gms/internal/ads/bwa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dbi<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cov;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/coz;

.field private final synthetic e:Lcom/google/android/gms/internal/ads/bvx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bvx;JLjava/lang/String;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/bwa;->a:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bwa;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bwa;->c:Lcom/google/android/gms/internal/ads/cov;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/bwa;->d:Lcom/google/android/gms/internal/ads/coz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    .line 1021
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bvx;->a:Lcom/google/android/gms/common/util/f;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/bwa;->a:J

    sub-long/2addr v0, v2

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bwa;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bwa;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/cov;->aa:Ljava/lang/String;

    const/4 v6, 0x0

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/bvx;->a(Lcom/google/android/gms/internal/ads/bvx;Ljava/lang/String;IJLjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    .line 1023
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/bvx;->c:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    .line 1024
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/bvx;->b:Lcom/google/android/gms/internal/ads/bvz;

    .line 5
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bwa;->d:Lcom/google/android/gms/internal/ads/coz;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bwa;->c:Lcom/google/android/gms/internal/ads/cov;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v9, v0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/bvz;->a(Lcom/google/android/gms/internal/ads/coz;Lcom/google/android/gms/internal/ads/cov;ILcom/google/android/gms/internal/ads/zzctd;J)V

    .line 6
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->eU:Lcom/google/android/gms/internal/ads/af;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    .line 1025
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bvx;->d:Lcom/google/android/gms/internal/ads/bso;

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bwa;->c:Lcom/google/android/gms/internal/ads/cov;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/bso;->a(Lcom/google/android/gms/internal/ads/cov;JLcom/google/android/gms/internal/ads/zzvh;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 12

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    .line 2021
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bvx;->a:Lcom/google/android/gms/common/util/f;

    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/bwa;->a:J

    sub-long/2addr v0, v2

    .line 12
    instance-of v2, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x6

    const/4 v11, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 14
    :cond_0
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzcwa;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    .line 16
    :cond_1
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    .line 18
    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzdpq;

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    .line 20
    :cond_3
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzcnp;

    if-eqz v2, :cond_4

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cqh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    if-ne v2, v11, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    .line 27
    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bwa;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bwa;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/cov;->aa:Ljava/lang/String;

    move v6, v2

    move-wide v7, v0

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/bvx;->a(Lcom/google/android/gms/internal/ads/bvx;Ljava/lang/String;IJLjava/lang/String;)V

    .line 28
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    .line 2023
    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/bvx;->c:Z

    if-eqz v3, :cond_6

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    .line 2024
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/bvx;->b:Lcom/google/android/gms/internal/ads/bvz;

    .line 29
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/bwa;->d:Lcom/google/android/gms/internal/ads/coz;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/bwa;->c:Lcom/google/android/gms/internal/ads/cov;

    .line 30
    instance-of v3, p1, Lcom/google/android/gms/internal/ads/zzctd;

    if-eqz v3, :cond_5

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzctd;

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    move-object v8, v3

    move v7, v2

    move-wide v9, v0

    .line 31
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/bvz;->a(Lcom/google/android/gms/internal/ads/coz;Lcom/google/android/gms/internal/ads/cov;ILcom/google/android/gms/internal/ads/zzctd;J)V

    .line 32
    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->eU:Lcom/google/android/gms/internal/ads/af;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cqh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p1

    .line 37
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    if-eq v2, v11, :cond_7

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->errorCode:I

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvh;->zzcht:Ljava/lang/String;

    const-string v3, "com.google.android.gms.ads"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 39
    new-instance v2, Lcom/google/android/gms/internal/ads/zzctd;

    sget-object v3, Lcom/google/android/gms/internal/ads/cqj;->zzhph:Lcom/google/android/gms/internal/ads/cqj;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvh;->zzchu:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzctd;-><init>(Lcom/google/android/gms/internal/ads/cqj;Lcom/google/android/gms/internal/ads/zzvh;)V

    .line 40
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cqh;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzvh;

    move-result-object p1

    .line 43
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bwa;->e:Lcom/google/android/gms/internal/ads/bvx;

    .line 2025
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/bvx;->d:Lcom/google/android/gms/internal/ads/bso;

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bwa;->c:Lcom/google/android/gms/internal/ads/cov;

    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/google/android/gms/internal/ads/bso;->a(Lcom/google/android/gms/internal/ads/cov;JLcom/google/android/gms/internal/ads/zzvh;)V

    :cond_9
    return-void
.end method
