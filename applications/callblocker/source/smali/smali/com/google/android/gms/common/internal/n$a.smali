.class public abstract Lcom/google/android/gms/common/internal/n$a;
.super Lcom/google/android/gms/internal/e/a;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/e/a;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    .prologue
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 18
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 4
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 6
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 7
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/common/internal/n$a;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 19
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 20
    const/4 v0, 0x1

    goto :goto_0

    .line 9
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 10
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 11
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/internal/n$a;->a(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 13
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 15
    sget-object v0, Lcom/google/android/gms/common/internal/ag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/e/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/ag;

    .line 16
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/common/internal/n$a;->a(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/ag;)V

    goto :goto_1

    .line 3
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
