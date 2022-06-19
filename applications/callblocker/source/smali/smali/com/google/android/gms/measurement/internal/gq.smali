.class final Lcom/google/android/gms/measurement/internal/gq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gq;->b:Lcom/google/android/gms/measurement/internal/gk;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/gq;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gq;->b:Lcom/google/android/gms/measurement/internal/gk;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/gq;->a:J

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v6, "Resetting analytics data (FE)"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jf;->a()V

    .line 10
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/gk;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->B()Z

    move-result v6

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v7

    .line 12
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/el;->h:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 13
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->v:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/er;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/el;->v:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/er;->a(Ljava/lang/String;)V

    .line 15
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jm;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->aw:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/el;->q:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 17
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18
    if-nez v6, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/el;->c(Z)V

    .line 19
    :cond_2
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/el;->w:Lcom/google/android/gms/measurement/internal/er;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/er;->a(Ljava/lang/String;)V

    .line 20
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/el;->x:Lcom/google/android/gms/measurement/internal/ep;

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/ep;->a(J)V

    .line 21
    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/el;->y:Lcom/google/android/gms/measurement/internal/eq;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/eq;->a(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/hu;->D()V

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jm;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->aw:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iz;->a:Lcom/google/android/gms/measurement/internal/ji;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ji;->a()V

    .line 25
    :cond_3
    if-nez v6, :cond_5

    :goto_1
    iput-boolean v1, v3, Lcom/google/android/gms/measurement/internal/gk;->c:Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gq;->b:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 27
    return-void

    :cond_4
    move v0, v2

    .line 18
    goto :goto_0

    :cond_5
    move v1, v2

    .line 25
    goto :goto_1
.end method
