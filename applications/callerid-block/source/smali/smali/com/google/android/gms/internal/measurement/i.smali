.class final Lcom/google/android/gms/internal/measurement/i;
.super Lcom/google/android/gms/internal/measurement/z;
.source ""


# instance fields
.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/google/android/gms/internal/measurement/j0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/j0;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/i;->g:Lcom/google/android/gms/internal/measurement/j0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/i;->f:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z;-><init>(Lcom/google/android/gms/internal/measurement/j0;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i;->g:Lcom/google/android/gms/internal/measurement/j0;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j0;->m(Lcom/google/android/gms/internal/measurement/j0;)Lcom/google/android/gms/internal/measurement/zb;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zb;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/i;->f:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/z;->c:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zb;->beginAdUnitExposure(Ljava/lang/String;J)V

    return-void
.end method
