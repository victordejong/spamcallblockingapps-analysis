.class final synthetic Lcom/google/android/gms/measurement/internal/it;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/iu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/iu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/it;->a:Lcom/google/android/gms/measurement/internal/iu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/it;->a:Lcom/google/android/gms/measurement/internal/iu;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/iu;->c:Lcom/google/android/gms/measurement/internal/iv;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/iu;->a:J

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/iu;->b:J

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->j:Lcom/google/android/gms/measurement/internal/dm;

    const-string v4, "Application going to the background"

    .line 3
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    sget-object v4, Lcom/google/android/gms/measurement/internal/dc;->ar:Lcom/google/android/gms/measurement/internal/da;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v4}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->m:Lcom/google/android/gms/measurement/internal/dy;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/dy;->a(Z)V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 8
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 3000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 10
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/e;->f()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/iz;->c:Lcom/google/android/gms/measurement/internal/ix;

    .line 11
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/ix;->c:Lcom/google/android/gms/measurement/internal/l;

    .line 3001
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/l;->c()V

    .line 11
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4000
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 12
    sget-object v9, Lcom/google/android/gms/measurement/internal/dc;->aj:Lcom/google/android/gms/measurement/internal/da;

    .line 13
    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/iz;->c:Lcom/google/android/gms/measurement/internal/ix;

    iget-wide v9, v7, Lcom/google/android/gms/measurement/internal/ix;->b:J

    iput-wide v2, v7, Lcom/google/android/gms/measurement/internal/ix;->b:J

    sub-long v9, v2, v9

    const-string v7, "_et"

    .line 14
    invoke-virtual {v0, v7, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 15
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/es;->l()Lcom/google/android/gms/measurement/internal/hk;

    move-result-object v7

    .line 16
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/hk;->a(Z)Lcom/google/android/gms/measurement/internal/hc;

    move-result-object v7

    .line 17
    invoke-static {v7, v0, v4}, Lcom/google/android/gms/measurement/internal/hk;->a(Lcom/google/android/gms/measurement/internal/hc;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/iz;->c:Lcom/google/android/gms/measurement/internal/ix;

    .line 18
    invoke-virtual {v7, v8, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/ix;->a(ZZJ)Z

    :cond_2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/iv;->a:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_ab"

    move-object v7, v0

    .line 20
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    return-void
.end method
