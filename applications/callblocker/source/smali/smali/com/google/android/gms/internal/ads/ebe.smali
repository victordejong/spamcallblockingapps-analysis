.class public abstract Lcom/google/android/gms/internal/ads/ebe;
.super Lcom/google/android/gms/internal/ads/dkl;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ebb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dkl;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .prologue
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 15
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ebe;->a()V

    .line 16
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    const/4 v0, 0x1

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ebe;->b()V

    goto :goto_1

    .line 8
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ebe;->c()V

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ebe;->d()V

    goto :goto_1

    .line 12
    :pswitch_4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dkk;->a(Landroid/os/Parcel;)Z

    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/ebe;->a(Z)V

    goto :goto_1

    .line 3
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
