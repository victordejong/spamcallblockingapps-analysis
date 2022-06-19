.class public final synthetic Lcom/google/android/gms/measurement/internal/in;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/iq;

.field private final b:Lcom/google/android/gms/measurement/internal/do;

.field private final c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/iq;Lcom/google/android/gms/measurement/internal/do;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/in;->a:Lcom/google/android/gms/measurement/internal/iq;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/in;->b:Lcom/google/android/gms/measurement/internal/do;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/in;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/in;->a:Lcom/google/android/gms/measurement/internal/iq;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/in;->b:Lcom/google/android/gms/measurement/internal/do;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/in;->c:Landroid/app/job/JobParameters;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v3, "AppMeasurementJobService processed last upload request."

    .line 1001
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iq;->a:Landroid/content/Context;

    .line 1002
    check-cast v0, Lcom/google/android/gms/measurement/internal/ip;

    invoke-interface {v0, v2}, Lcom/google/android/gms/measurement/internal/ip;->a(Landroid/app/job/JobParameters;)V

    return-void
.end method
