.class public final synthetic Lcom/google/android/gms/common/api/internal/zabq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

.field private final zab:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabq;->zaa:Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabq;->zab:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/NonGmsServiceBrokerClient;->zaa(Landroid/os/IBinder;)V

    return-void
.end method
