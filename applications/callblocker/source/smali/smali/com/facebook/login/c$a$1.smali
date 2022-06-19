.class final Lcom/facebook/login/c$a$1;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/c$a;
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
        "Lcom/facebook/login/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/c$a;
    .locals 1

    .prologue
    .line 605
    new-instance v0, Lcom/facebook/login/c$a;

    invoke-direct {v0, p1}, Lcom/facebook/login/c$a;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/c$a;
    .locals 1

    .prologue
    .line 610
    new-array v0, p1, [Lcom/facebook/login/c$a;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lcom/facebook/login/c$a$1;->a(Landroid/os/Parcel;)Lcom/facebook/login/c$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Lcom/facebook/login/c$a$1;->a(I)[Lcom/facebook/login/c$a;

    move-result-object v0

    return-object v0
.end method
