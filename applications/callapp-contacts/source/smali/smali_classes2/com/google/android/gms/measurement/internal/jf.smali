.class final Lcom/google/android/gms/measurement/internal/jf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/jz;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/measurement/internal/jz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jf;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jf;->a:Lcom/google/android/gms/measurement/internal/jz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jf;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->f()Lcom/google/android/gms/measurement/internal/gv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jf;->a:Lcom/google/android/gms/measurement/internal/jz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/gv;->a(Lcom/google/android/gms/measurement/internal/ft;)V

    return-void
.end method
