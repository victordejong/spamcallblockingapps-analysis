.class public final Lcom/google/android/gms/measurement/internal/dz;
.super Lcom/google/android/gms/common/internal/c;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/measurement/internal/dq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V
    .locals 7

    .prologue
    .line 1
    const/16 v3, 0x5d

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 6
    .line 8
    if-nez p1, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0

    .line 10
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/google/android/gms/measurement/internal/dq;

    if-eqz v1, :cond_1

    .line 12
    check-cast v0, Lcom/google/android/gms/measurement/internal/dq;

    goto :goto_0

    .line 13
    :cond_1
    new-instance v0, Lcom/google/android/gms/measurement/internal/ds;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/ds;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4
    const-string/jumbo v0, "com.google.android.gms.measurement.START"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    const-string/jumbo v0, "com.google.android.gms.measurement.internal.IMeasurementService"

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 5
    const v0, 0xbdfcb8

    return v0
.end method
