.class final Lcom/google/android/gms/measurement/internal/iq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/im;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/im;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iq;->a:Lcom/google/android/gms/measurement/internal/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iq;->a:Lcom/google/android/gms/measurement/internal/im;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/hu;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/iq;->a:Lcom/google/android/gms/measurement/internal/im;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/hu;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/iq;->a:Lcom/google/android/gms/measurement/internal/im;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/hu;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 6
    const-string/jumbo v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/hu;Landroid/content/ComponentName;)V

    .line 8
    return-void
.end method
