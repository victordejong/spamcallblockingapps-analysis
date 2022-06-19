.class final Lcom/google/android/gms/internal/measurement/ad;
.super Lcom/google/android/gms/internal/measurement/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/gms/internal/measurement/aj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/aj;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aj;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ad;->a:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ad;->b:Lcom/google/android/gms/internal/measurement/aj;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/aj;->a:Lcom/google/android/gms/internal/measurement/ak;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ak;->c(Lcom/google/android/gms/internal/measurement/ak;)Lcom/google/android/gms/internal/measurement/mz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/mz;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ad;->a:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/ad;->i:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/mz;->onActivityStarted(Lcom/google/android/gms/dynamic/b;J)V

    return-void
.end method
