.class public Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocialImage"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private socialId:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 398
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->url:Ljava/lang/String;

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->socialId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->url:Ljava/lang/String;

    .line 379
    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->socialId:I

    return-void
.end method


# virtual methods
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

    if-eqz p1, :cond_3

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 423
    :cond_1
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;

    .line 425
    iget v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->socialId:I

    iget v3, p1, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->socialId:I

    if-eq v2, v3, :cond_2

    return v1

    .line 426
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getSocialId()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->socialId:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 432
    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->socialId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 389
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget p2, p0, Lcom/callapp/contacts/activity/contact/cards/SocialImagesCard$SocialImage;->socialId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
