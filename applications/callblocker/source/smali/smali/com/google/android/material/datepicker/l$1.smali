.class final Lcom/google/android/material/datepicker/l$1;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/material/datepicker/l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/l;
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/l;->a(II)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/google/android/material/datepicker/l;
    .locals 1

    .prologue
    .line 204
    new-array v0, p1, [Lcom/google/android/material/datepicker/l;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/l$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/l$1;->a(I)[Lcom/google/android/material/datepicker/l;

    move-result-object v0

    return-object v0
.end method
