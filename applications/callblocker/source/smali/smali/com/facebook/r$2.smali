.class final Lcom/facebook/r$2;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/r;
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
        "Lcom/facebook/r;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/r;
    .locals 2

    .prologue
    .line 313
    new-instance v0, Lcom/facebook/r;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/r;-><init>(Landroid/os/Parcel;Lcom/facebook/r$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/r;
    .locals 1

    .prologue
    .line 318
    new-array v0, p1, [Lcom/facebook/r;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/facebook/r$2;->a(Landroid/os/Parcel;)Lcom/facebook/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/facebook/r$2;->a(I)[Lcom/facebook/r;

    move-result-object v0

    return-object v0
.end method
