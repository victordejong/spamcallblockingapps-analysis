.class public final Lcom/google/android/gms/internal/ads/zzzu;
.super Lcom/google/android/gms/internal/ads/zzyq;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# instance fields
.field private final description:Ljava/lang/String;

.field private final zzclg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyq;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzu;->description:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzu;->zzclg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzu;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final zzre()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzu;->zzclg:Ljava/lang/String;

    return-object v0
.end method
