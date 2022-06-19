.class final Landroidx/appcompat/widget/AppCompatSpinner$d$1;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatSpinner$d;
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
        "Landroidx/appcompat/widget/AppCompatSpinner$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/appcompat/widget/AppCompatSpinner$d;
    .locals 1

    .prologue
    .line 666
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner$d;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroidx/appcompat/widget/AppCompatSpinner$d;
    .locals 1

    .prologue
    .line 670
    new-array v0, p1, [Landroidx/appcompat/widget/AppCompatSpinner$d;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d$1;->a(Landroid/os/Parcel;)Landroidx/appcompat/widget/AppCompatSpinner$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSpinner$d$1;->a(I)[Landroidx/appcompat/widget/AppCompatSpinner$d;

    move-result-object v0

    return-object v0
.end method
