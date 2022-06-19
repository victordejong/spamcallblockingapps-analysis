.class public final Lcom/google/android/play/core/internal/z0;
.super Lcom/google/android/play/core/internal/w0;
.source ""

# interfaces
.implements Lcom/google/android/play/core/internal/b1;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/internal/w0;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final G1(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/internal/w0;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/y0;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/w0;->r1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final I4(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/internal/w0;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/y0;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/w0;->r1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final N1(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/play/core/internal/d1;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/play/core/internal/w0;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/y0;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/w0;->r1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final T2(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/internal/w0;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/y0;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/w0;->r1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final V4(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/internal/w0;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/y0;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/w0;->r1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final X4(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/internal/w0;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/y0;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/w0;->r1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final r5(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/internal/d1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/play/core/internal/w0;->h0()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p3}, Lcom/google/android/play/core/internal/y0;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p4}, Lcom/google/android/play/core/internal/y0;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/google/android/play/core/internal/w0;->r1(ILandroid/os/Parcel;)V

    return-void
.end method
