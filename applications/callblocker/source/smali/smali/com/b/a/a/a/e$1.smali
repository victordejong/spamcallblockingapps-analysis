.class final Lcom/b/a/a/a/e$1;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/e;
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
        "Lcom/b/a/a/a/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/b/a/a/a/e;
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/b/a/a/a/e;

    invoke-direct {v0, p1}, Lcom/b/a/a/a/e;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/b/a/a/a/e;
    .locals 1

    .prologue
    .line 113
    new-array v0, p1, [Lcom/b/a/a/a/e;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/b/a/a/a/e$1;->a(Landroid/os/Parcel;)Lcom/b/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/b/a/a/a/e$1;->a(I)[Lcom/b/a/a/a/e;

    move-result-object v0

    return-object v0
.end method
