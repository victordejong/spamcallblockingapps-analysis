.class public final Lcom/kedlin/cca/core/call/Call$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/core/call/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/kedlin/cca/core/call/Call;",
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
.method public a(Landroid/os/Parcel;)Lcom/kedlin/cca/core/call/Call;
    .locals 2

    new-instance v0, Lcom/kedlin/cca/core/call/Call;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kedlin/cca/core/call/Call;-><init>(Landroid/os/Parcel;Lcom/kedlin/cca/core/call/Call$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/kedlin/cca/core/call/Call;
    .locals 0

    new-array p1, p1, [Lcom/kedlin/cca/core/call/Call;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/core/call/Call$a;->a(Landroid/os/Parcel;)Lcom/kedlin/cca/core/call/Call;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/core/call/Call$a;->b(I)[Lcom/kedlin/cca/core/call/Call;

    move-result-object p1

    return-object p1
.end method
