.class final Lcom/google/android/gms/measurement/internal/ix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:J

.field protected b:J

.field final c:Lcom/google/android/gms/measurement/internal/l;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/iz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/iz;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/iw;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/iz;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/iw;-><init>(Lcom/google/android/gms/measurement/internal/ix;Lcom/google/android/gms/measurement/internal/fo;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->c:Lcom/google/android/gms/measurement/internal/l;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ix;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ix;->b:J

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->c:Lcom/google/android/gms/measurement/internal/l;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l;->c()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ix;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/ix;->b:J

    return-void
.end method

.method final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->c:Lcom/google/android/gms/measurement/internal/l;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/l;->c()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ix;->a:J

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/ix;->b:J

    return-void
.end method

.method public final a(ZZJ)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ec;->k()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kq;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->an:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iz;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->k:Lcom/google/android/gms/measurement/internal/ea;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->k:Lcom/google/android/gms/measurement/internal/ea;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(J)V

    .line 11
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ix;->a:J

    sub-long v0, p3, v0

    if-nez p1, :cond_3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v0, v3

    if-ltz p1, :cond_2

    goto :goto_1

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 8000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    if-nez p2, :cond_4

    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/ix;->b:J

    sub-long v0, p3, v0

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/ix;->b:J

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Recording user engagement, ms"

    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    .line 15
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_et"

    .line 16
    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->f()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->l()Lcom/google/android/gms/measurement/internal/hk;

    move-result-object v1

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/hk;->a(Z)Lcom/google/android/gms/measurement/internal/hc;

    move-result-object v0

    .line 21
    invoke-static {v0, p1, v3}, Lcom/google/android/gms/measurement/internal/hk;->a(Lcom/google/android/gms/measurement/internal/hc;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 22
    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->T:Lcom/google/android/gms/measurement/internal/da;

    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    const-wide/16 v0, 0x1

    const-string v4, "_fr"

    .line 24
    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 25
    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->T:Lcom/google/android/gms/measurement/internal/da;

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object p2

    const-string v0, "auto"

    const-string v1, "_e"

    .line 28
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/ix;->a:J

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ix;->c:Lcom/google/android/gms/measurement/internal/l;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/l;->c()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ix;->c:Lcom/google/android/gms/measurement/internal/l;

    const-wide/32 p2, 0x36ee80

    .line 30
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/l;->a(J)V

    return v3
.end method
