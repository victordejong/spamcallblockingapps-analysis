.class final Lcom/facebook/c/b/c$1;
.super Ljava/lang/Object;
.source "ShareLinkContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/c/b/c;
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
        "Lcom/facebook/c/b/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/c/b/c;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/facebook/c/b/c;

    invoke-direct {v0, p1}, Lcom/facebook/c/b/c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/c/b/c;
    .locals 1

    .prologue
    .line 124
    new-array v0, p1, [Lcom/facebook/c/b/c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/facebook/c/b/c$1;->a(Landroid/os/Parcel;)Lcom/facebook/c/b/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/facebook/c/b/c$1;->a(I)[Lcom/facebook/c/b/c;

    move-result-object v0

    return-object v0
.end method
