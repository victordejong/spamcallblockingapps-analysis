.class final Landroidx/appcompat/widget/SearchView$e$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView$e;
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
        "Landroidx/appcompat/widget/SearchView$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/appcompat/widget/SearchView$e;
    .locals 2

    .prologue
    .line 1333
    new-instance v0, Landroidx/appcompat/widget/SearchView$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/widget/SearchView$e;
    .locals 1

    .prologue
    .line 1328
    new-instance v0, Landroidx/appcompat/widget/SearchView$e;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public a(I)[Landroidx/appcompat/widget/SearchView$e;
    .locals 1

    .prologue
    .line 1338
    new-array v0, p1, [Landroidx/appcompat/widget/SearchView$e;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1325
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$e$1;->a(Landroid/os/Parcel;)Landroidx/appcompat/widget/SearchView$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1325
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$e$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/appcompat/widget/SearchView$e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1325
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView$e$1;->a(I)[Landroidx/appcompat/widget/SearchView$e;

    move-result-object v0

    return-object v0
.end method
