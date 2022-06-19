.class final Lcom/google/android/gms/internal/measurement/t;
.super Lcom/google/android/gms/internal/measurement/z;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# instance fields
.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/google/android/gms/internal/measurement/cb;

.field final synthetic j:Lcom/google/android/gms/internal/measurement/j0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/j0;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/cb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t;->j:Lcom/google/android/gms/internal/measurement/j0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/t;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/t;->i:Lcom/google/android/gms/internal/measurement/cb;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z;-><init>(Lcom/google/android/gms/internal/measurement/j0;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->j:Lcom/google/android/gms/internal/measurement/j0;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j0;->m(Lcom/google/android/gms/internal/measurement/j0;)Lcom/google/android/gms/internal/measurement/hc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/hc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/t;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/t;->i:Lcom/google/android/gms/internal/measurement/cb;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/hc;->getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/kc;)V

    return-void
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->i:Lcom/google/android/gms/internal/measurement/cb;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/cb;->C0(Landroid/os/Bundle;)V

    return-void
.end method
