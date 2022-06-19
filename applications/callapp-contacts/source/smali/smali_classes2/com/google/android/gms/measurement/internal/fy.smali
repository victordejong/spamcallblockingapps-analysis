.class final Lcom/google/android/gms/measurement/internal/fy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/measurement/internal/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gv;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/fy;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->r()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->q()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/fy;->a:Z

    .line 1001
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/es;->m:Ljava/lang/Boolean;

    .line 3
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/fy;->a:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/fy;->a:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->r()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->r()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->q()Z

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/gv;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->h:Lcom/google/android/gms/measurement/internal/dm;

    .line 10
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/fy;->a:Z

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    .line 13
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fy;->b:Lcom/google/android/gms/measurement/internal/gv;

    .line 3001
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gv;->o()V

    return-void
.end method
