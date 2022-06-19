.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;
.super Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "imageUrl"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;-><init>(Landroid/os/Parcel;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->imageUrl:Ljava/lang/String;

    return-void
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

.method public getCustomUrl()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dP:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->imageUrl:Ljava/lang/String;

    return-object p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public needDefaultDialer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 43
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
