.class public final Lcom/google/android/gms/measurement/AppMeasurementReceiver;
.super Landroidx/f/a/a;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/ey;


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/ev;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Landroidx/f/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 9
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lcom/google/android/gms/measurement/internal/ev;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/ev;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ev;-><init>(Lcom/google/android/gms/measurement/internal/ey;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lcom/google/android/gms/measurement/internal/ev;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->a:Lcom/google/android/gms/measurement/internal/ev;

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/ev;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7
    return-void
.end method
