.class final Lcom/google/android/gms/measurement/internal/gh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/mj;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/r;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mj;Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gh;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gh;->a:Lcom/google/android/gms/internal/measurement/mj;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/gh;->b:Lcom/google/android/gms/measurement/internal/r;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/gh;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gh;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->t()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gh;->a:Lcom/google/android/gms/internal/measurement/mj;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gh;->b:Lcom/google/android/gms/measurement/internal/r;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/internal/measurement/mj;Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V

    .line 3
    return-void
.end method
