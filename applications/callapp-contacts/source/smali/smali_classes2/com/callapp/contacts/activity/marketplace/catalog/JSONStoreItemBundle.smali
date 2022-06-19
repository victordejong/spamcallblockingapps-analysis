.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;
.super Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation
.end field

.field private color:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "color"
    .end annotation
.end field

.field private freeSkus:[Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "freeSkus"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "imageUrl"
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "label"
    .end annotation
.end field

.field private pageLayout:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pageLayout"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 113
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;-><init>(Landroid/os/Parcel;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->imageUrl:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->pageLayout:I

    .line 116
    const-class v0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->freeSkus:[Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->color:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->imageUrl:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->pageLayout:I

    .line 36
    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->freeSkus:[Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;

    .line 37
    iput-object p5, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->color:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->action:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->color:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getColor()I

    move-result v0

    return v0
.end method

.method public getFreeSkus()[Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->freeSkus:[Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->imageUrl:Ljava/lang/String;

    return-object p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPageLayout()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->pageLayout:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public needDefaultDialer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->action:Ljava/lang/String;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->color:Ljava/lang/String;

    return-void
.end method

.method public setFreeSkus([Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->freeSkus:[Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->label:Ljava/lang/String;

    return-void
.end method

.method public setPageLayout(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->pageLayout:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 105
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->pageLayout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->color:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->freeSkus:[Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    return-void
.end method
