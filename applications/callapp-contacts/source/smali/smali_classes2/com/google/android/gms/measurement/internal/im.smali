.class public final synthetic Lcom/google/android/gms/measurement/internal/im;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/iq;

.field private final b:I

.field private final c:Lcom/google/android/gms/measurement/internal/do;

.field private final d:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/iq;ILcom/google/android/gms/measurement/internal/do;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/iq;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/im;->b:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/im;->c:Lcom/google/android/gms/measurement/internal/do;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/im;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/iq;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/im;->b:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/im;->c:Lcom/google/android/gms/measurement/internal/do;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/im;->d:Landroid/content/Intent;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/iq;->a:Landroid/content/Context;

    .line 1001
    check-cast v4, Lcom/google/android/gms/measurement/internal/ip;

    invoke-interface {v4, v1}, Lcom/google/android/gms/measurement/internal/ip;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2000
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    .line 1003
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Local AppMeasurementService processed last upload request. StartId"

    .line 1004
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1005
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/iq;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->k:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Completed wakeful intent."

    .line 1005
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/iq;->a:Landroid/content/Context;

    .line 1006
    check-cast v0, Lcom/google/android/gms/measurement/internal/ip;

    invoke-interface {v0, v3}, Lcom/google/android/gms/measurement/internal/ip;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
