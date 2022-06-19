.class public final Lcom/google/android/gms/measurement/internal/iz;
.super Lcom/google/android/gms/measurement/internal/ec;
.source "SourceFile"


# instance fields
.field a:Landroid/os/Handler;

.field protected final b:Lcom/google/android/gms/measurement/internal/iy;

.field protected final c:Lcom/google/android/gms/measurement/internal/ix;

.field protected final d:Lcom/google/android/gms/measurement/internal/iv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/es;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ec;-><init>(Lcom/google/android/gms/measurement/internal/es;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/iy;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/iy;-><init>(Lcom/google/android/gms/measurement/internal/iz;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/iy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/ix;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/ix;-><init>(Lcom/google/android/gms/measurement/internal/iz;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iz;->c:Lcom/google/android/gms/measurement/internal/ix;

    new-instance p1, Lcom/google/android/gms/measurement/internal/iv;

    .line 4
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/iv;-><init>(Lcom/google/android/gms/measurement/internal/iz;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iz;->d:Lcom/google/android/gms/measurement/internal/iv;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/iz;J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/iz;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 6
    sget-object v1, Lcom/google/android/gms/measurement/internal/dc;->ar:Lcom/google/android/gms/measurement/internal/da;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->m:Lcom/google/android/gms/measurement/internal/dy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->c:Lcom/google/android/gms/measurement/internal/ix;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ix;->a(J)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/iz;->d:Lcom/google/android/gms/measurement/internal/iv;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/iv;->a()V

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->d:Lcom/google/android/gms/measurement/internal/iv;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/iv;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->c:Lcom/google/android/gms/measurement/internal/ix;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ix;->a(J)V

    .line 12
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/iy;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/iy;->a:Lcom/google/android/gms/measurement/internal/iz;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/iy;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/iz;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->r()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/iy;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 19
    sget-object p2, Lcom/google/android/gms/measurement/internal/dc;->ar:Lcom/google/android/gms/measurement/internal/da;

    .line 20
    invoke-virtual {p1, v2, p2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/iy;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ee;->m:Lcom/google/android/gms/measurement/internal/dy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/dy;->a(Z)V

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/iy;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    .line 25
    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/gms/measurement/internal/iy;->a(JZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/iz;J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/iz;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 7000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->d:Lcom/google/android/gms/measurement/internal/iv;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/iv;->a(J)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/iz;->c:Lcom/google/android/gms/measurement/internal/ix;

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/ix;->c:Lcom/google/android/gms/measurement/internal/l;

    .line 8001
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/l;->c()V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/iy;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/iy;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    const/4 p2, 0x0

    .line 10
    sget-object v0, Lcom/google/android/gms/measurement/internal/dc;->ar:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/iy;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object p0

    .line 12
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/ee;->m:Lcom/google/android/gms/measurement/internal/dy;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/kt;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/kt;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/iz;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method
