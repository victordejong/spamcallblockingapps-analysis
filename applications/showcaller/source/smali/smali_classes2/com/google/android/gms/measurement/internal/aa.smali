.class final Lcom/google/android/gms/measurement/internal/aa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/u5;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/nc;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/nc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/aa;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/aa;->a:Lcom/google/android/gms/internal/measurement/nc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aa;->a:Lcom/google/android/gms/internal/measurement/nc;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/nc;->A1(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/aa;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->d:Lcom/google/android/gms/measurement/internal/s4;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/s4;->C()Lcom/google/android/gms/measurement/internal/o3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/o3;->p()Lcom/google/android/gms/measurement/internal/m3;

    move-result-object p2

    const-string p3, "Event listener threw exception"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/m3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
