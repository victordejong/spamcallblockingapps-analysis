.class final Lcom/google/android/gms/internal/measurement/d0;
.super Lcom/google/android/gms/internal/measurement/z;
.source ""


# instance fields
.field final synthetic f:Landroid/app/Activity;

.field final synthetic g:Lcom/google/android/gms/internal/measurement/i0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/i0;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d0;->g:Lcom/google/android/gms/internal/measurement/i0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/d0;->f:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/i0;->b:Lcom/google/android/gms/internal/measurement/j0;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z;-><init>(Lcom/google/android/gms/internal/measurement/j0;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d0;->g:Lcom/google/android/gms/internal/measurement/i0;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/i0;->b:Lcom/google/android/gms/internal/measurement/j0;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j0;->m(Lcom/google/android/gms/internal/measurement/j0;)Lcom/google/android/gms/internal/measurement/zb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zb;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d0;->f:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/z;->c:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zb;->onActivityResumed(Lcom/google/android/gms/dynamic/a;J)V

    return-void
.end method
