.class public Lcom/callapp/contacts/api/helper/vk/VKApiCity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/api/helper/vk/VKApiCity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/callapp/contacts/api/helper/vk/VKApiCity$1;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/vk/VKApiCity$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->id:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->parse(Lorg/json/JSONObject;)Lcom/callapp/contacts/api/helper/vk/VKApiCity;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/callapp/contacts/api/helper/vk/VKApiCity;
    .locals 1

    const-string v0, "id"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->id:I

    const-string v0, "title"

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->title:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 83
    iget p2, p0, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-object p2, p0, Lcom/callapp/contacts/api/helper/vk/VKApiCity;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
