.class final Lcom/google/android/gms/measurement/internal/h8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/measurement/internal/j8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j8;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h8;->b:Lcom/google/android/gms/measurement/internal/j8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h8;->b:Lcom/google/android/gms/measurement/internal/j8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/j8;->c:Lcom/google/android/gms/measurement/internal/k8;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/s4;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/h8;->b:Lcom/google/android/gms/measurement/internal/j8;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/j8;->c:Lcom/google/android/gms/measurement/internal/k8;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/m5;->a:Lcom/google/android/gms/measurement/internal/s4;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/s4;->a()Lcom/google/android/gms/measurement/internal/ka;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/k8;->x(Lcom/google/android/gms/measurement/internal/k8;Landroid/content/ComponentName;)V

    return-void
.end method
