.class final Lcom/google/android/gms/internal/measurement/k;
.super Lcom/google/android/gms/internal/measurement/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/measurement/ak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/ak;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k;->b:Lcom/google/android/gms/internal/measurement/ak;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k;->a:Ljava/lang/String;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/aa;-><init>(Lcom/google/android/gms/internal/measurement/ak;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k;->b:Lcom/google/android/gms/internal/measurement/ak;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ak;->c(Lcom/google/android/gms/internal/measurement/ak;)Lcom/google/android/gms/internal/measurement/mz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/mz;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/k;->i:J

    .line 2
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/mz;->endAdUnitExposure(Ljava/lang/String;J)V

    return-void
.end method
