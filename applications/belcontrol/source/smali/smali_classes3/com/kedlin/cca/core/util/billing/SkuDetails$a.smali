.class public final Lcom/kedlin/cca/core/util/billing/SkuDetails$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/core/util/billing/SkuDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/kedlin/cca/core/util/billing/SkuDetails;",
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
.method public a(Landroid/os/Parcel;)Lcom/kedlin/cca/core/util/billing/SkuDetails;
    .locals 1

    new-instance v0, Lcom/kedlin/cca/core/util/billing/SkuDetails;

    invoke-direct {v0, p1}, Lcom/kedlin/cca/core/util/billing/SkuDetails;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public b(I)[Lcom/kedlin/cca/core/util/billing/SkuDetails;
    .locals 0

    new-array p1, p1, [Lcom/kedlin/cca/core/util/billing/SkuDetails;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/core/util/billing/SkuDetails$a;->a(Landroid/os/Parcel;)Lcom/kedlin/cca/core/util/billing/SkuDetails;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/kedlin/cca/core/util/billing/SkuDetails$a;->b(I)[Lcom/kedlin/cca/core/util/billing/SkuDetails;

    move-result-object p1

    return-object p1
.end method
