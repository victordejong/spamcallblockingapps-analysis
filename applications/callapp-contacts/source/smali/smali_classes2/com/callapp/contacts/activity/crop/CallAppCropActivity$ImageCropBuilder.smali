.class public Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/crop/CallAppCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCropBuilder"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contactId:J

.field private imagePathUri:Landroid/net/Uri;

.field private isFromGallery:Z

.field private phoneNumber:Ljava/lang/String;

.field private savePathUri:Landroid/net/Uri;

.field private shouldDelete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 299
    new-instance v0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder$1;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder$1;-><init>()V

    sput-object v0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 275
    const-class v0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->imagePathUri:Landroid/net/Uri;

    .line 277
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->savePathUri:Landroid/net/Uri;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->phoneNumber:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->isFromGallery:Z

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->shouldDelete:Z

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->contactId:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContactId()J
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->contactId:J

    return-wide v0
.end method

.method public getImagePathUri()Landroid/net/Uri;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->imagePathUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSavePathUri()Landroid/net/Uri;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->savePathUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFromGallery()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->isFromGallery:Z

    return v0
.end method

.method public isShouldDelete()Z
    .locals 1

    .line 238
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->shouldDelete:Z

    return v0
.end method

.method public setContactId(J)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;
    .locals 0

    .line 264
    iput-wide p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->contactId:J

    return-object p0
.end method

.method public setImagePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->imagePathUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setIsFromGallery(Z)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->isFromGallery:Z

    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->phoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public setSavePathUri(Landroid/net/Uri;)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->savePathUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setShouldDelete(Z)Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->shouldDelete:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->imagePathUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 292
    iget-object v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->savePathUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 293
    iget-object p2, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->isFromGallery:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 295
    iget-boolean p2, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->shouldDelete:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 296
    iget-wide v0, p0, Lcom/callapp/contacts/activity/crop/CallAppCropActivity$ImageCropBuilder;->contactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
