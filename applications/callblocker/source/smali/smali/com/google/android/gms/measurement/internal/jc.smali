.class final synthetic Lcom/google/android/gms/measurement/internal/jc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/jd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jc;->a:Lcom/google/android/gms/measurement/internal/jd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jc;->a:Lcom/google/android/gms/measurement/internal/jd;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/jd;->c:Lcom/google/android/gms/measurement/internal/ja;

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/jd;->a:J

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/jd;->b:J

    .line 3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 4
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v6, "Application going to the background"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v6, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->s:Lcom/google/android/gms/measurement/internal/en;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/en;->a(Z)V

    .line 7
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/jf;->b(J)V

    .line 9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0, v7, v7, v2, v3}, Lcom/google/android/gms/measurement/internal/iz;->a(ZZJ)Z

    .line 10
    :cond_1
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/ja;->a:Lcom/google/android/gms/measurement/internal/iz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    const-string/jumbo v2, "auto"

    const-string/jumbo v3, "_ab"

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 12
    return-void
.end method
