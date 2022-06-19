.class public final synthetic Lcom/google/android/gms/location/zzb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zza:J

.field private final zzb:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(JLandroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/location/zzb;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/location/zzb;->zzb:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/location/zzb;->zza:J

    iget-object v2, p0, Lcom/google/android/gms/location/zzb;->zzb:Landroid/app/PendingIntent;

    check-cast p1, Lcom/google/android/gms/internal/location/zzay;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/location/zzay;->zza(JLandroid/app/PendingIntent;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
