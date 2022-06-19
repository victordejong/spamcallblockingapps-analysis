.class final Lcom/google/android/gms/measurement/internal/jf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private a:J

.field private b:J

.field private final c:Lcom/google/android/gms/measurement/internal/j;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/iz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/iz;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/je;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/iz;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/je;-><init>(Lcom/google/android/gms/measurement/internal/jf;Lcom/google/android/gms/measurement/internal/gb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->c:Lcom/google/android/gms/measurement/internal/j;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->a:J

    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->b:J

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/jf;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jf;->c()V

    return-void
.end method

.method private final c()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/jf;->a(ZZJ)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->a()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ab;->a(J)V

    .line 20
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->c:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->c()V

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->a:J

    .line 15
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->b:J

    .line 16
    return-void
.end method

.method final a(J)V
    .locals 3

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->c:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->c()V

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/jf;->a:J

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->b:J

    .line 10
    return-void
.end method

.method public final a(ZZJ)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aA:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide p3

    .line 25
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jm;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aw:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iz;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->q:Lcom/google/android/gms/measurement/internal/ep;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 29
    :cond_3
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->a:J

    sub-long v0, p3, v0

    .line 30
    if-nez p1, :cond_4

    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-gez v4, :cond_4

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v4, "Screen exposed for less than 1000 ms. Event not sent. time"

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :goto_0
    return v3

    .line 35
    :cond_4
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/t;->T:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p2, :cond_5

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jr;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->V:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jg;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aA:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/measurement/internal/jf;->c(J)J

    move-result-wide v0

    .line 42
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v4

    const-string/jumbo v5, "Recording user engagement, ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string/jumbo v5, "_et"

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    .line 46
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ef;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/ho;->a(Z)Lcom/google/android/gms/measurement/internal/hp;

    move-result-object v0

    .line 48
    invoke-static {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/hp;Landroid/os/Bundle;Z)V

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->T:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->U:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 51
    if-eqz p2, :cond_6

    .line 52
    const-string/jumbo v0, "_fr"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->U:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_8

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    const-string/jumbo v1, "auto"

    const-string/jumbo v3, "_e"

    .line 55
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    :cond_8
    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/jf;->a:J

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->c:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->c()V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->c:Lcom/google/android/gms/measurement/internal/j;

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/j;->a(J)V

    move v3, v2

    .line 59
    goto/16 :goto_0

    .line 41
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jf;->b()J

    move-result-wide v0

    goto/16 :goto_1

    :cond_a
    move v0, v3

    .line 45
    goto :goto_2
.end method

.method final b()J
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->d:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/jf;->b:J

    sub-long v2, v0, v2

    .line 62
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->b:J

    .line 63
    return-wide v2
.end method

.method final b(J)V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->c:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->c()V

    .line 12
    return-void
.end method

.method final c(J)J
    .locals 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/jf;->b:J

    sub-long v0, p1, v0

    .line 65
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/jf;->b:J

    .line 66
    return-wide v0
.end method
