.class public Lcom/callapp/contacts/model/PersonData;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/model/PersonData;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation
.end field

.field private static personDefaultBgColor:I = 0x0

.field private static final serialVersionUID:J = -0x27c4758a6f0e136cL


# instance fields
.field private birthdayDayInMonth:Ljava/lang/Integer;

.field private birthdayMonth:Ljava/lang/Integer;

.field private headline:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private publicProfileUrl:Ljava/lang/String;

.field private type:I

.field private unAccanetName:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/callapp/contacts/model/PersonData$1;

    invoke-direct {v0}, Lcom/callapp/contacts/model/PersonData$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/model/PersonData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;-><init>()V

    .line 73
    iput-object p3, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    .line 77
    iput p1, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;-><init>()V

    .line 108
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/PersonData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/callapp/common/model/json/JSONFBEntity;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONFBEntity;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONFBEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONFBEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONFBEntity;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    .line 64
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONFBEntity;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->phone:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONFBEntity;->getFormattedBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONFBEntity;->getFormattedBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONDate;->getFormattedDay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->birthdayDayInMonth:Ljava/lang/Integer;

    .line 68
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONDate;->getFormattedMonth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/PersonData;->birthdayMonth:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/api/helper/vk/VKUser;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/vk/VKHelper;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getPhoto()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    const/16 v0, 0xa

    .line 97
    iput v0, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    .line 98
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getMobilePhone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getMobilePhone()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getHomePhone()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->phone:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getBirthDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/vk/VKUser;->getBirthDate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/model/contact/social/VKDataUtils;->getVKBirthDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    .line 102
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/PersonData;->birthdayDayInMonth:Ljava/lang/Integer;

    const/4 p1, 0x2

    .line 103
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/PersonData;->birthdayMonth:Ljava/lang/Integer;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/models/User;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/gallery/HorizontalCircleImageGalleryCard$PhotoPresentableDataImpl;-><init>()V

    .line 81
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    .line 83
    invoke-static {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    .line 84
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/User;->profileImageUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/PersonData;->headline:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x4

    .line 89
    iput p1, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/callapp/contacts/model/PersonData;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 232
    :cond_0
    iget v1, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    iget v2, p1, Lcom/callapp/contacts/model/PersonData;->type:I

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    if-le v1, v2, :cond_2

    return v0

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    return v0

    .line 242
    :cond_3
    iget-object p1, p1, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/callapp/contacts/model/PersonData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/PersonData;->compareTo(Lcom/callapp/contacts/model/PersonData;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/PersonData;

    .line 251
    iget v2, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    iget v3, p1, Lcom/callapp/contacts/model/PersonData;->type:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    .line 252
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    .line 253
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->userName:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/PersonData;->userName:Ljava/lang/String;

    .line 254
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    .line 255
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    .line 256
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->headline:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/PersonData;->headline:Ljava/lang/String;

    .line 257
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->unAccanetName:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/model/PersonData;->unAccanetName:Ljava/lang/String;

    .line 258
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->birthdayDayInMonth:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/callapp/contacts/model/PersonData;->birthdayDayInMonth:Ljava/lang/Integer;

    .line 259
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->birthdayMonth:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/callapp/contacts/model/PersonData;->birthdayMonth:Ljava/lang/Integer;

    .line 260
    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/callapp/contacts/model/PersonData;->phone:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/PersonData;->phone:Ljava/lang/String;

    .line 261
    invoke-static {v2, p1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getBackgroundColor()Ljava/lang/Integer;
    .locals 2

    .line 158
    sget v0, Lcom/callapp/contacts/model/PersonData;->personDefaultBgColor:I

    if-nez v0, :cond_0

    .line 159
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/callapp/contacts/model/PersonData;->personDefaultBgColor:I

    .line 161
    :cond_0
    sget v0, Lcom/callapp/contacts/model/PersonData;->personDefaultBgColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getBadgeBackgroundColor()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeBgColor(I)I

    move-result v0

    return v0
.end method

.method public getBadgeResourceId()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    invoke-static {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getSocialBadgeResId(I)I

    move-result v0

    return v0
.end method

.method public getBirthdayDayInMonth()Ljava/lang/Integer;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->birthdayDayInMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBirthdayMonth()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->birthdayMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->headline:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicProfileUrl()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcePhoto()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 166
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 215
    iget v0, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    return v0
.end method

.method public getUnAccanetName()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->unAccanetName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/model/PersonData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->userName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->headline:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->unAccanetName:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->birthdayDayInMonth:Ljava/lang/Integer;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->birthdayMonth:Ljava/lang/Integer;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/model/PersonData;->phone:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1077
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDefaultProfileImageUrl()Z
    .locals 2

    .line 186
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/model/PersonData;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/PersonData;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->userName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->headline:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/model/PersonData;->phone:Ljava/lang/String;

    return-void
.end method

.method public setHeadline(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/callapp/contacts/model/PersonData;->headline:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/callapp/contacts/model/PersonData;->phone:Ljava/lang/String;

    return-void
.end method

.method public setUnAccanetName(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/callapp/contacts/model/PersonData;->unAccanetName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 130
    iget-object p2, p0, Lcom/callapp/contacts/model/PersonData;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/callapp/contacts/model/PersonData;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/callapp/contacts/model/PersonData;->publicProfileUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/callapp/contacts/model/PersonData;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/callapp/contacts/model/PersonData;->headline:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Lcom/callapp/contacts/model/PersonData;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget p2, p0, Lcom/callapp/contacts/model/PersonData;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object p2, p0, Lcom/callapp/contacts/model/PersonData;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
