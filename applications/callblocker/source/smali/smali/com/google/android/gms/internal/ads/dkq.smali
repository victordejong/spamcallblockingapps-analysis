.class public abstract Lcom/google/android/gms/internal/ads/dkq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dli;
.implements Lcom/google/android/gms/internal/ads/dll;


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/internal/ads/dlk;

.field private c:I

.field private d:I

.field private e:Lcom/google/android/gms/internal/ads/dqo;

.field private f:J

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/dkq;->a:I

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkq;->g:Z

    .line 4
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkq;->a:I

    return v0
.end method

.method protected final a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;Z)I
    .locals 6

    .prologue
    const/4 v0, -0x4

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dkq;->e:Lcom/google/android/gms/internal/ads/dqo;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/dqo;->a(Lcom/google/android/gms/internal/ads/dlg;Lcom/google/android/gms/internal/ads/dmx;Z)I

    move-result v1

    .line 60
    if-ne v1, v0, :cond_3

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dmp;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dkq;->g:Z

    .line 63
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dkq;->h:Z

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    return v0

    .line 63
    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    .line 64
    :cond_1
    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/dmx;->c:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dkq;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/dmx;->c:J

    :cond_2
    :goto_1
    move v0, v1

    .line 70
    goto :goto_0

    .line 65
    :cond_3
    const/4 v0, -0x5

    if-ne v1, v0, :cond_2

    .line 66
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dlg;->a:Lcom/google/android/gms/internal/ads/dlf;

    .line 67
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/dlf;->o:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 68
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/dlf;->o:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dkq;->f:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dlf;->a(J)Lcom/google/android/gms/internal/ads/dlf;

    move-result-object v0

    .line 69
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/dlg;->a:Lcom/google/android/gms/internal/ads/dlf;

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/dkq;->c:I

    .line 8
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkq;->h:Z

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkq;->g:Z

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/dkq;->a(JZ)V

    .line 38
    return-void
.end method

.method protected a(JZ)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dlk;[Lcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dqo;JZJ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkq;->d:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dkq;->b:Lcom/google/android/gms/internal/ads/dlk;

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/dkq;->d:I

    .line 14
    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/dkq;->a(Z)V

    .line 15
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/dkq;->a([Lcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dqo;J)V

    .line 16
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/dkq;->a(JZ)V

    .line 17
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected a([Lcom/google/android/gms/internal/ads/dlf;J)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final a([Lcom/google/android/gms/internal/ads/dlf;Lcom/google/android/gms/internal/ads/dqo;J)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkq;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 23
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dkq;->e:Lcom/google/android/gms/internal/ads/dqo;

    .line 24
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dkq;->g:Z

    .line 25
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dkq;->f:J

    .line 26
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/dkq;->a([Lcom/google/android/gms/internal/ads/dlf;J)V

    .line 27
    return-void

    :cond_0
    move v0, v1

    .line 22
    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/dll;
    .locals 0

    .prologue
    .line 6
    return-object p0
.end method

.method protected final b(J)V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkq;->e:Lcom/google/android/gms/internal/ads/dqo;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dkq;->f:J

    sub-long v2, p1, v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dqo;->a(J)V

    .line 72
    return-void
.end method

.method public c()Lcom/google/android/gms/internal/ads/dsd;
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkq;->d:I

    return v0
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18
    iget v1, p0, Lcom/google/android/gms/internal/ads/dkq;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/dkq;->d:I

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->n()V

    .line 21
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/dqo;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkq;->e:Lcom/google/android/gms/internal/ads/dqo;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkq;->g:Z

    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkq;->h:Z

    .line 31
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkq;->h:Z

    return v0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkq;->e:Lcom/google/android/gms/internal/ads/dqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqo;->b()V

    .line 34
    return-void
.end method

.method public final k()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkq;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 40
    iput v1, p0, Lcom/google/android/gms/internal/ads/dkq;->d:I

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->o()V

    .line 42
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    iget v2, p0, Lcom/google/android/gms/internal/ads/dkq;->d:I

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->b(Z)V

    .line 44
    iput v1, p0, Lcom/google/android/gms/internal/ads/dkq;->d:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dkq;->e:Lcom/google/android/gms/internal/ads/dqo;

    .line 46
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dkq;->h:Z

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dkq;->p()V

    .line 48
    return-void

    :cond_0
    move v0, v1

    .line 43
    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method protected n()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected o()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method protected p()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected final q()Lcom/google/android/gms/internal/ads/dlk;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkq;->b:Lcom/google/android/gms/internal/ads/dlk;

    return-object v0
.end method

.method protected final r()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/gms/internal/ads/dkq;->c:I

    return v0
.end method

.method protected final s()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkq;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dkq;->h:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dkq;->e:Lcom/google/android/gms/internal/ads/dqo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dqo;->a()Z

    move-result v0

    goto :goto_0
.end method
