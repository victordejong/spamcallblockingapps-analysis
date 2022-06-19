.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;
.super Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bundleVideoUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bundleVideoUrl"
    .end annotation
.end field

.field private freeItemSku:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "freeItemSku"
    .end annotation
.end field

.field private subtitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "subtitle"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>(Landroid/os/Parcel;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->freeItemSku:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->bundleVideoUrl:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->title:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->subtitle:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->type:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->freeItemSku:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->bundleVideoUrl:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->title:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->subtitle:Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->type:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBundleVideoUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->bundleVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCustomUrl()Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dP:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFreeItemSku()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->freeItemSku:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->bundleVideoUrl:Ljava/lang/String;

    return-object p1
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->bundleVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public needDefaultDialer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBundleVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->bundleVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public setFreeItemSku(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->freeItemSku:Ljava/lang/String;

    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->subtitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 96
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 97
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->freeItemSku:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->bundleVideoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundleFreeSku;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
