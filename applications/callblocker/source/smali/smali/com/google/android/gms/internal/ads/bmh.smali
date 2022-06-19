.class public final Lcom/google/android/gms/internal/ads/bmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/clg;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bmg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bmg;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bmh;->a:Lcom/google/android/gms/internal/ads/bmg;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->da:Lcom/google/android/gms/internal/ads/ect;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/ckw;->d:Lcom/google/android/gms/internal/ads/ckw;

    if-ne v0, p1, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmh;->a:Lcom/google/android/gms/internal/ads/bmg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bmg;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmh;->a:Lcom/google/android/gms/internal/ads/bmg;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmh;->a:Lcom/google/android/gms/internal/ads/bmg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bmg;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bmg;->c(J)V

    .line 19
    :cond_0
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->da:Lcom/google/android/gms/internal/ads/ect;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/ckw;->d:Lcom/google/android/gms/internal/ads/ckw;

    if-ne v0, p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmh;->a:Lcom/google/android/gms/internal/ads/bmg;

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bmg;->b(J)V

    .line 10
    :cond_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/ckw;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->da:Lcom/google/android/gms/internal/ads/ect;

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/ckw;->d:Lcom/google/android/gms/internal/ads/ckw;

    if-ne v0, p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmh;->a:Lcom/google/android/gms/internal/ads/bmg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bmg;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bmh;->a:Lcom/google/android/gms/internal/ads/bmg;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bmh;->a:Lcom/google/android/gms/internal/ads/bmg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/bmg;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/bmg;->c(J)V

    .line 28
    :cond_0
    return-void
.end method
