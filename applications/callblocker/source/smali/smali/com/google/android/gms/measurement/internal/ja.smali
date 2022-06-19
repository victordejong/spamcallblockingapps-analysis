.class final Lcom/google/android/gms/measurement/internal/ja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/iz;

.field private b:Lcom/google/android/gms/measurement/internal/jd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/iz;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->ap:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->b:Lcom/google/android/gms/measurement/internal/jd;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/iz;->b(Lcom/google/android/gms/measurement/internal/iz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ja;->b:Lcom/google/android/gms/measurement/internal/jd;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->s:Lcom/google/android/gms/measurement/internal/en;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/en;->a(Z)V

    .line 8
    :cond_1
    return-void
.end method

.method final a(J)V
    .locals 7

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->ap:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/measurement/internal/jd;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jd;-><init>(Lcom/google/android/gms/measurement/internal/ja;JJ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->b:Lcom/google/android/gms/measurement/internal/jd;

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/iz;->b(Lcom/google/android/gms/measurement/internal/iz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ja;->b:Lcom/google/android/gms/measurement/internal/jd;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    :cond_0
    return-void
.end method
