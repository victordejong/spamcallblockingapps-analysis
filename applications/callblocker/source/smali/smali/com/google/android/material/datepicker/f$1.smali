.class final Lcom/google/android/material/datepicker/f$1;
.super Ljava/lang/Object;
.source "DateValidatorPointForward.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/f;
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
        "Lcom/google/android/material/datepicker/f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/f;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/material/datepicker/f;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/material/datepicker/f;-><init>(JLcom/google/android/material/datepicker/f$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/material/datepicker/f;
    .locals 1

    .prologue
    .line 68
    new-array v0, p1, [Lcom/google/android/material/datepicker/f;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/f$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/f$1;->a(I)[Lcom/google/android/material/datepicker/f;

    move-result-object v0

    return-object v0
.end method
