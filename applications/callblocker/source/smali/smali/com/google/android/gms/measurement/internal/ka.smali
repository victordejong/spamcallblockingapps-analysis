.class final Lcom/google/android/gms/measurement/internal/ka;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/mj;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ka;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ka;->a:Lcom/google/android/gms/internal/measurement/mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ka;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ka;->a:Lcom/google/android/gms/internal/measurement/mj;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ka;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->A()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Z)V

    .line 5
    return-void
.end method
