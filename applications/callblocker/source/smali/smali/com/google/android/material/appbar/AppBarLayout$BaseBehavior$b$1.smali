.class final Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;
    .locals 2

    .prologue
    .line 1876
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;
    .locals 1

    .prologue
    .line 1870
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;
    .locals 1

    .prologue
    .line 1882
    new-array v0, p1, [Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1866
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1866
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1866
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b$1;->a(I)[Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$b;

    move-result-object v0

    return-object v0
.end method
