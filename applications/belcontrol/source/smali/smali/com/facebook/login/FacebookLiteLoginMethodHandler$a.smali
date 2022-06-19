.class public final Lcom/facebook/login/FacebookLiteLoginMethodHandler$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/FacebookLiteLoginMethodHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/facebook/login/FacebookLiteLoginMethodHandler;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/login/FacebookLiteLoginMethodHandler;
    .locals 1

    new-instance v0, Lcom/facebook/login/FacebookLiteLoginMethodHandler;

    invoke-direct {v0, p1}, Lcom/facebook/login/FacebookLiteLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/facebook/login/FacebookLiteLoginMethodHandler;
    .locals 0

    new-array p1, p1, [Lcom/facebook/login/FacebookLiteLoginMethodHandler;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/login/FacebookLiteLoginMethodHandler$a;->a(Landroid/os/Parcel;)Lcom/facebook/login/FacebookLiteLoginMethodHandler;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/facebook/login/FacebookLiteLoginMethodHandler$a;->b(I)[Lcom/facebook/login/FacebookLiteLoginMethodHandler;

    move-result-object p1

    return-object p1
.end method
