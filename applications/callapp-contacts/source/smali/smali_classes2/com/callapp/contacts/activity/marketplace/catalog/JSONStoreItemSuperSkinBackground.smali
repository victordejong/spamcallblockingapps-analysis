.class public Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private darkBackground:Ljava/lang/String;

.field private lightBackground:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->darkBackground:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->lightBackground:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDarkBackground()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->darkBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getLightBackground()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->lightBackground:Ljava/lang/String;

    return-object v0
.end method

.method public setDarkBackground(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->darkBackground:Ljava/lang/String;

    return-void
.end method

.method public setLightBackground(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->lightBackground:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getDarkBackground()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkinBackground;->getLightBackground()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
