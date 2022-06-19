.class final Lcom/google/android/material/internal/CheckableImageButton$a$1;
.super Ljava/lang/Object;
.source "CheckableImageButton.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/CheckableImageButton$a;
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
        "Lcom/google/android/material/internal/CheckableImageButton$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/internal/CheckableImageButton$a;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/google/android/material/internal/CheckableImageButton$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/internal/CheckableImageButton$a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/internal/CheckableImageButton$a;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/material/internal/CheckableImageButton$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/CheckableImageButton$a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/material/internal/CheckableImageButton$a;
    .locals 1

    .prologue
    .line 197
    new-array v0, p1, [Lcom/google/android/material/internal/CheckableImageButton$a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton$a$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/internal/CheckableImageButton$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/CheckableImageButton$a$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/internal/CheckableImageButton$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton$a$1;->a(I)[Lcom/google/android/material/internal/CheckableImageButton$a;

    move-result-object v0

    return-object v0
.end method
