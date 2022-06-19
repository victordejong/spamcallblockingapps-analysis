.class final Lcom/google/android/gms/measurement/internal/iw;
.super Lcom/google/android/gms/measurement/internal/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ix;Lcom/google/android/gms/measurement/internal/fo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iw;->a:Lcom/google/android/gms/measurement/internal/ix;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/l;-><init>(Lcom/google/android/gms/measurement/internal/fo;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iw;->a:Lcom/google/android/gms/measurement/internal/ix;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/ix;->a(ZZJ)Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/db;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->p()Lcom/google/android/gms/measurement/internal/ca;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ix;->d:Lcom/google/android/gms/measurement/internal/iz;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ca;->a(J)V

    return-void
.end method
