.class final Landroidx/core/widget/NestedScrollView$c$1;
.super Ljava/lang/Object;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView$c;
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
        "Landroidx/core/widget/NestedScrollView$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/core/widget/NestedScrollView$c;
    .locals 1

    .prologue
    .line 2060
    new-instance v0, Landroidx/core/widget/NestedScrollView$c;

    invoke-direct {v0, p1}, Landroidx/core/widget/NestedScrollView$c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroidx/core/widget/NestedScrollView$c;
    .locals 1

    .prologue
    .line 2065
    new-array v0, p1, [Landroidx/core/widget/NestedScrollView$c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2057
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView$c$1;->a(Landroid/os/Parcel;)Landroidx/core/widget/NestedScrollView$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2057
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView$c$1;->a(I)[Landroidx/core/widget/NestedScrollView$c;

    move-result-object v0

    return-object v0
.end method
