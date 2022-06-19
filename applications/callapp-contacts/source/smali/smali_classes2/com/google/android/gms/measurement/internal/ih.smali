.class final Lcom/google/android/gms/measurement/internal/ih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ij;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ih;->a:Lcom/google/android/gms/measurement/internal/ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ih;->a:Lcom/google/android/gms/measurement/internal/ij;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ij;->b:Lcom/google/android/gms/measurement/internal/ik;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/es;->a:Landroid/content/Context;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 3
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/ik;->a(Lcom/google/android/gms/measurement/internal/ik;Landroid/content/ComponentName;)V

    return-void
.end method
