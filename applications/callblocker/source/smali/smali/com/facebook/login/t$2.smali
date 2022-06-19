.class final Lcom/facebook/login/t$2;
.super Ljava/lang/Object;
.source "WebViewLoginMethodHandler.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/t;
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
        "Lcom/facebook/login/t;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/t;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/facebook/login/t;

    invoke-direct {v0, p1}, Lcom/facebook/login/t;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/login/t;
    .locals 1

    .prologue
    .line 196
    new-array v0, p1, [Lcom/facebook/login/t;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/facebook/login/t$2;->a(Landroid/os/Parcel;)Lcom/facebook/login/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/facebook/login/t$2;->a(I)[Lcom/facebook/login/t;

    move-result-object v0

    return-object v0
.end method
