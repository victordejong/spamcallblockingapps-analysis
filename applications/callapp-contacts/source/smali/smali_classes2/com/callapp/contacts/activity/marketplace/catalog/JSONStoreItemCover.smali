.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;
.super Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imageUrls:[Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "imageUrls"
    .end annotation
.end field

.field private overlayUrls:[Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "overlayUrls"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>(Landroid/os/Parcel;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->imageUrls:[Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->overlayUrls:[Ljava/lang/String;

    return-void
.end method

.method private getUrlForItem(I)Ljava/lang/String;
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getImageUrls()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    array-length v1, v0

    if-le v1, p1, :cond_0

    .line 55
    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getUrlForItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageUrls()[Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->imageUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayUrls()[Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->overlayUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->getUrlForItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setImageUrls([Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->imageUrls:[Ljava/lang/String;

    return-void
.end method

.method public setOverlayUrls([Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->overlayUrls:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->imageUrls:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->overlayUrls:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
