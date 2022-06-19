.class final Lcom/facebook/login/j$d$1;
.super Ljava/lang/Object;
.source "LoginClient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/j$d;
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
        "Lcom/facebook/login/j$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/j$d;
    .locals 2

    .prologue
    .line 673
    new-instance v0, Lcom/facebook/login/j$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/login/j$d;-><init>(Landroid/os/Parcel;Lcom/facebook/login/j$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/j$d;
    .locals 1

    .prologue
    .line 678
    new-array v0, p1, [Lcom/facebook/login/j$d;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/facebook/login/j$d$1;->a(Landroid/os/Parcel;)Lcom/facebook/login/j$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/facebook/login/j$d$1;->a(I)[Lcom/facebook/login/j$d;

    move-result-object v0

    return-object v0
.end method
