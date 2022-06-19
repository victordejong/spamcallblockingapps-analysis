.class public final Lcom/google/android/gms/internal/ads/dv1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Z

.field b:Lcom/google/android/gms/internal/ads/ev1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string p3, "com.google.android.gms.ads.clearcut.GassDynamiteClearcutLogger"
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeac; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string v1, "com.google.android.gms.ads.dynamite"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->e(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$a;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v0, p3}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.gass.internal.clearcut.IClearcut"

    invoke-interface {p3, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/ev1;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/ads/ev1;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/ev1;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ads/ev1;-><init>(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    :try_start_3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dv1;->b:Lcom/google/android/gms/internal/ads/ev1;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/dv1;->b:Lcom/google/android/gms/internal/ads/ev1;

    invoke-virtual {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/ev1;->T4(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dv1;->a:Z
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzeac; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_0
    move-exception p1

    :try_start_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeac;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzeac;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    :try_start_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeac;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzeac;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzeac; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    const-string p1, "GASS"

    const-string p2, "Cannot dynamite load clearcut"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/ads/bv1;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/bv1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/bv1;-><init>(Lcom/google/android/gms/internal/ads/dv1;[BLcom/google/android/gms/internal/ads/av1;)V

    return-object v0
.end method
