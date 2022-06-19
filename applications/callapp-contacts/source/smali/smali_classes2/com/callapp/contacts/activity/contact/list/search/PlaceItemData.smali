.class public Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/StickyHeaderSection;


# instance fields
.field private a:D

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:I

.field private j:Lcom/callapp/contacts/model/contact/DataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->j:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 2

    .line 67
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceAddress()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceHours()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceImageUri()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceRatingNumber()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->a:D

    return-wide v0
.end method

.method public getPlaceType()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->i:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->h:Z

    return v0
.end method

.method public setDataSource(Lcom/callapp/contacts/model/contact/DataSource;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->j:Lcom/callapp/contacts/model/contact/DataSource;

    return-void
.end method

.method public setOpen(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->h:Z

    return-void
.end method

.method public setPlaceAddress(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->c:Ljava/lang/String;

    return-void
.end method

.method public setPlaceHours(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->d:Ljava/lang/String;

    return-void
.end method

.method public setPlaceId(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->g:Ljava/lang/String;

    return-void
.end method

.method public setPlaceImageUri(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->f:Ljava/lang/String;

    return-void
.end method

.method public setPlaceName(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setPlacePhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->e:Ljava/lang/String;

    return-void
.end method

.method public setPlaceRatingNumber(D)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->a:D

    return-void
.end method

.method public setPlaceType(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->b:Ljava/lang/String;

    return-void
.end method

.method public setSectionId(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->i:I

    return-void
.end method
