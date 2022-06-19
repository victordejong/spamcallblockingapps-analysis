.class public final Lcom/google/android/gms/measurement/internal/iz;
.super Lcom/google/android/gms/measurement/internal/de;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field protected final a:Lcom/google/android/gms/measurement/internal/ji;

.field protected final b:Lcom/google/android/gms/measurement/internal/jf;

.field private c:Landroid/os/Handler;

.field private final d:Lcom/google/android/gms/measurement/internal/ja;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/de;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/ji;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ji;-><init>(Lcom/google/android/gms/measurement/internal/iz;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->a:Lcom/google/android/gms/measurement/internal/ji;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/jf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/jf;-><init>(Lcom/google/android/gms/measurement/internal/iz;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/ja;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ja;-><init>(Lcom/google/android/gms/measurement/internal/iz;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->d:Lcom/google/android/gms/measurement/internal/ja;

    .line 5
    return-void
.end method

.method private final B()V
    .locals 2

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/ku;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ku;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->c:Landroid/os/Handler;

    .line 9
    :cond_0
    return-void
.end method

.method private final a(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/iz;->B()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->s:Lcom/google/android/gms/measurement/internal/en;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/en;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/jf;->a(J)V

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->d:Lcom/google/android/gms/measurement/internal/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ja;->a()V

    .line 21
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->a:Lcom/google/android/gms/measurement/internal/ji;

    .line 22
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ji;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 23
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ji;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/iz;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 24
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ji;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 25
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ji;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->s:Lcom/google/android/gms/measurement/internal/en;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/en;->a(Z)V

    .line 26
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ji;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ji;->a(JZ)V

    .line 27
    :cond_4
    return-void

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->d:Lcom/google/android/gms/measurement/internal/ja;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ja;->a()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/jf;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/iz;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/iz;->B()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/iz;J)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/iz;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/iz;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private final b(J)V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/iz;->B()V

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->d:Lcom/google/android/gms/measurement/internal/ja;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ja;->a(J)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/jf;->b(J)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->a:Lcom/google/android/gms/measurement/internal/ji;

    .line 35
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ji;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 36
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ji;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->s:Lcom/google/android/gms/measurement/internal/en;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/en;->a(Z)V

    .line 37
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/iz;J)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/iz;->b(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/google/android/gms/measurement/internal/ab;
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->a()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(ZZJ)Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/jf;->a(ZZJ)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/measurement/internal/gk;
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Lcom/google/android/gms/measurement/internal/dv;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/hu;
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/ho;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/du;
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/iz;
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method

.method protected final z()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
