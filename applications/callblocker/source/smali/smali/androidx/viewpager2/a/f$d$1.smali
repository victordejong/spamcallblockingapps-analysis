.class final Landroidx/viewpager2/a/f$d$1;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/a/f$d;
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
        "Landroidx/viewpager2/a/f$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/viewpager2/a/f$d;
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/a/f$d$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/a/f$d;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/a/f$d;
    .locals 2

    .prologue
    .line 415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/viewpager2/a/f$d;

    invoke-direct {v0, p1, p2}, Landroidx/viewpager2/a/f$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/viewpager2/a/f$d;

    invoke-direct {v0, p1}, Landroidx/viewpager2/a/f$d;-><init>(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public a(I)[Landroidx/viewpager2/a/f$d;
    .locals 1

    .prologue
    .line 427
    new-array v0, p1, [Landroidx/viewpager2/a/f$d;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroidx/viewpager2/a/f$d$1;->a(Landroid/os/Parcel;)Landroidx/viewpager2/a/f$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/a/f$d$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/a/f$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroidx/viewpager2/a/f$d$1;->a(I)[Landroidx/viewpager2/a/f$d;

    move-result-object v0

    return-object v0
.end method
