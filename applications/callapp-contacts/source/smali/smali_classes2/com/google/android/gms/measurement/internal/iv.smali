.class final Lcom/google/android/gms/measurement/internal/iv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/iz;

.field private b:Lcom/google/android/gms/measurement/internal/iu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/iz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iv;->b:Lcom/google/android/gms/measurement/internal/iu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iz;->a:Landroid/os/Handler;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/iv;->b:Lcom/google/android/gms/measurement/internal/iu;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/google/android/gms/measurement/internal/dc;->ar:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->m:Lcom/google/android/gms/measurement/internal/dy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/dy;->a(Z)V

    :cond_1
    return-void
.end method

.method final a(J)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/measurement/internal/iu;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v2

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/iu;-><init>(Lcom/google/android/gms/measurement/internal/iv;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/iv;->b:Lcom/google/android/gms/measurement/internal/iu;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    .line 4000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/iz;->a:Landroid/os/Handler;

    .line 2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/iv;->b:Lcom/google/android/gms/measurement/internal/iu;

    const-wide/16 v0, 0x7d0

    .line 3
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
