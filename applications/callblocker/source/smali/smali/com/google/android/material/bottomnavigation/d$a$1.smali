.class final Lcom/google/android/material/bottomnavigation/d$a$1;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomnavigation/d$a;
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
        "Lcom/google/android/material/bottomnavigation/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/bottomnavigation/d$a;
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/google/android/material/bottomnavigation/d$a;

    invoke-direct {v0, p1}, Lcom/google/android/material/bottomnavigation/d$a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/material/bottomnavigation/d$a;
    .locals 1

    .prologue
    .line 166
    new-array v0, p1, [Lcom/google/android/material/bottomnavigation/d$a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/d$a$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/bottomnavigation/d$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomnavigation/d$a$1;->a(I)[Lcom/google/android/material/bottomnavigation/d$a;

    move-result-object v0

    return-object v0
.end method
