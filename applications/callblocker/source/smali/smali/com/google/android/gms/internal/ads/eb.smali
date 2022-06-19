.class public final Lcom/google/android/gms/internal/ads/eb;
.super Lcom/google/android/gms/dynamic/RemoteCreator;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/RemoteCreator",
        "<",
        "Lcom/google/android/gms/internal/ads/ch;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.NativeAdViewHolderDelegateCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/RemoteCreator;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 20
    .line 22
    if-nez p1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ch;

    if-eqz v1, :cond_1

    .line 26
    check-cast v0, Lcom/google/android/gms/internal/ads/ch;

    goto :goto_0

    .line 27
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ck;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ck;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method
