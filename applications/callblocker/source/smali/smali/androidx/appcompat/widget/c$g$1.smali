.class final Landroidx/appcompat/widget/c$g$1;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/c$g;
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
        "Landroidx/appcompat/widget/c$g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/appcompat/widget/c$g;
    .locals 1

    .prologue
    .line 619
    new-instance v0, Landroidx/appcompat/widget/c$g;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/c$g;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroidx/appcompat/widget/c$g;
    .locals 1

    .prologue
    .line 624
    new-array v0, p1, [Landroidx/appcompat/widget/c$g;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/c$g$1;->a(Landroid/os/Parcel;)Landroidx/appcompat/widget/c$g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/c$g$1;->a(I)[Landroidx/appcompat/widget/c$g;

    move-result-object v0

    return-object v0
.end method
