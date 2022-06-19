.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;
.super Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cardUrl:[Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cardUrl"
    .end annotation
.end field

.field private daysOfFreeSubscription:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "daysOfFreeSubscription"
    .end annotation
.end field

.field private gifFileUrls:[Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gifFileUrls"
    .end annotation
.end field

.field private gifUrls:[Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gifUrls"
    .end annotation
.end field

.field private listBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listBackgroundUrls"
    .end annotation
.end field

.field private storeFullPreviewImageUrls:[Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "storeFullPreviewImageUrls"
    .end annotation
.end field

.field private storePartialPreviewImageUrls:[Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "storePartialPreviewImageUrls"
    .end annotation
.end field

.field private topBarBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "topBarBackgroundUrls"
    .end annotation
.end field

.field private wizardImageUrls:[Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "wizardImageUrls"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 132
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;-><init>(Landroid/os/Parcel;)V

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->gifUrls:[Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->gifFileUrls:[Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->storeFullPreviewImageUrls:[Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->storePartialPreviewImageUrls:[Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->listBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    .line 138
    sget-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->topBarBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->wizardImageUrls:[Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->cardUrl:[Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->daysOfFreeSubscription:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardUrl()[Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->cardUrl:[Ljava/lang/String;

    return-object v0
.end method

.method public getDaysOfFreeSubscription()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->daysOfFreeSubscription:I

    return v0
.end method

.method public getGifFileUrls()[Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->gifFileUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getGifUrls()[Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->gifUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getListBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->listBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    return-object v0
.end method

.method public getStoreFullPreviewImageUrls()[Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->storeFullPreviewImageUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getStorePartialPreviewImageUrls()[Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->storePartialPreviewImageUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getTopBarBackgroundUrls()[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->topBarBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    return-object v0
.end method

.method public getWizardImageUrls()[Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->wizardImageUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public setCardUrl([Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->cardUrl:[Ljava/lang/String;

    return-void
.end method

.method public setDaysOfFreeSubscription(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->daysOfFreeSubscription:I

    return-void
.end method

.method public setGifFileUrls([Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->gifFileUrls:[Ljava/lang/String;

    return-void
.end method

.method public setGifUrls([Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->gifUrls:[Ljava/lang/String;

    return-void
.end method

.method public setListBackgroundUrls([Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->listBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    return-void
.end method

.method public setStoreFullPreviewImageUrls([Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->storeFullPreviewImageUrls:[Ljava/lang/String;

    return-void
.end method

.method public setStorePartialPreviewImageUrls([Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->storePartialPreviewImageUrls:[Ljava/lang/String;

    return-void
.end method

.method public setTopBarBackgroundUrls([Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->topBarBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    return-void
.end method

.method public setWizardImageUrls([Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->wizardImageUrls:[Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 119
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->gifUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->gifFileUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->storeFullPreviewImageUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->storePartialPreviewImageUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->listBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->topBarBackgroundUrls:[Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 126
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->wizardImageUrls:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->cardUrl:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 128
    iget p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;->daysOfFreeSubscription:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
