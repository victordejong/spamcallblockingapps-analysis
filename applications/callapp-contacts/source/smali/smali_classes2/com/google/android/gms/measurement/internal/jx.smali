.class final Lcom/google/android/gms/measurement/internal/jx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/nc;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/nc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jx;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jx;->a:Lcom/google/android/gms/internal/measurement/nc;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/jx;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jx;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->m()Lcom/google/android/gms/measurement/internal/ik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jx;->a:Lcom/google/android/gms/internal/measurement/nc;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/jx;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ik;->a(Lcom/google/android/gms/internal/measurement/nc;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
