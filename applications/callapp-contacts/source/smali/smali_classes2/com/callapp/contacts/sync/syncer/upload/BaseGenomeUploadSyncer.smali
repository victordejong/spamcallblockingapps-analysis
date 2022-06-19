.class public abstract Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;
.super Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/callapp/contacts/sync/syncer/upload/UploadSyncer;-><init>()V

    return-void
.end method

.method private a(Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/io/BufferedWriter;ZLcom/callapp/contacts/model/contact/ContactData;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0, p4}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Lcom/callapp/common/model/json/JSONContact;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "skipping JSON for contact #%s because it contains no relevant data"

    invoke-static {p1, p3, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return p4

    :cond_0
    if-nez p3, :cond_1

    const-string p3, ","

    .line 198
    invoke-virtual {p2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 201
    :cond_1
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/Writer;Ljava/lang/Object;)V

    return v1
.end method

.method private a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Lcom/callapp/common/model/json/JSONContact;
    .locals 6

    .line 207
    new-instance v0, Lcom/callapp/common/model/json/JSONContact;

    invoke-direct {v0}, Lcom/callapp/common/model/json/JSONContact;-><init>()V

    const/4 v1, 0x1

    .line 208
    invoke-virtual {v0, v1}, Lcom/callapp/common/model/json/JSONContact;->setFromDevice(Z)V

    .line 210
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 211
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 216
    :cond_0
    invoke-virtual {v0, v2}, Lcom/callapp/common/model/json/JSONContact;->setPhoneNumbers(Ljava/util/List;)V

    .line 221
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v5, 0x0

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 223
    invoke-static {p1, v0, v5, p2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v5

    .line 225
    :cond_2
    invoke-static {p1, v0, v5, p2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->b(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v2

    .line 227
    invoke-static {p1, v0, v2, v1, p2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v1

    .line 229
    invoke-static {p1, v0, v1, p2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->c(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v1

    .line 231
    invoke-static {p1, v0, v1, p2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->d(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v1

    .line 233
    invoke-static {p1, v0, v1, p2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->e(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v1

    .line 235
    invoke-static {p1, v0, v1, p2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->f(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v1

    .line 237
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->g(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result p1

    if-nez p1, :cond_3

    move-object v0, v4

    :cond_3
    return-object v0
.end method

.method private static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONPhoneNumber;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 250
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/framework/phone/Phone;

    .line 252
    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    new-instance v3, Lcom/callapp/common/model/json/JSONPhoneNumber;

    invoke-direct {v3, v2}, Lcom/callapp/common/model/json/JSONPhoneNumber;-><init>(Lcom/callapp/framework/phone/Phone;)V

    .line 254
    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getType()Lcom/callapp/framework/phone/PhoneType;

    move-result-object v2

    iget v2, v2, Lcom/callapp/framework/phone/PhoneType;->code:I

    invoke-virtual {v3, v2}, Lcom/callapp/common/model/json/JSONPhoneNumber;->setType(I)V

    const/4 v2, 0x1

    .line 255
    invoke-virtual {v3, v2}, Lcom/callapp/common/model/json/JSONPhoneNumber;->setFromDevice(Z)V

    .line 256
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private static a(II)V
    .locals 5

    .line 179
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    const v0, 0x7f120353

    .line 181
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, p1, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILjava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 1

    .line 285
    sget-object v0, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;->ONLY_DATA_FROM_DEVICE:Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;

    if-ne p3, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    .line 291
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p3

    iget p3, p3, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p3}, Lcom/callapp/common/api/ApiHelper;->a(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setFacebookID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    const/4 p2, 0x1

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    .line 297
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p3

    iget p3, p3, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p3}, Lcom/callapp/common/api/ApiHelper;->a(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getTwitterScreenName()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setTwitterScreenName(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    const/4 p2, 0x1

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/callapp/contacts/model/contact/ContactField;->foursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    .line 303
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p3

    iget p3, p3, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p3}, Lcom/callapp/common/api/ApiHelper;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 304
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    const/4 p2, 0x1

    .line 308
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVenueFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVenueFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lcom/callapp/contacts/model/contact/ContactField;->venueFoursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    .line 309
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p3

    iget p3, p3, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p3}, Lcom/callapp/common/api/ApiHelper;->a(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 310
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVenueFoursquareId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setVenueFoursquareID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    const/4 p2, 0x1

    .line 314
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Lcom/callapp/contacts/model/contact/ContactField;->instagramId:Lcom/callapp/contacts/model/contact/ContactField;

    .line 315
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p3

    iget p3, p3, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p3}, Lcom/callapp/common/api/ApiHelper;->a(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 316
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getInstagramId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setInstagramID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    const/4 p2, 0x1

    .line 320
    :cond_5
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p3, Lcom/callapp/contacts/model/contact/ContactField;->pinterestId:Lcom/callapp/contacts/model/contact/ContactField;

    .line 321
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p3

    iget p3, p3, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p3}, Lcom/callapp/common/api/ApiHelper;->a(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 322
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getPinterestId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setPinterestID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    const/4 p2, 0x1

    .line 326
    :cond_6
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/common/model/json/JSONSocialNetworkID;->isSure()Z

    move-result p3

    if-eqz p3, :cond_7

    sget-object p3, Lcom/callapp/contacts/model/contact/ContactField;->vkId:Lcom/callapp/contacts/model/contact/ContactField;

    .line 327
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p3

    iget p3, p3, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {p3}, Lcom/callapp/common/api/ApiHelper;->a(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 328
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getVKId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/callapp/common/model/json/JSONContact;->setVkID(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    goto :goto_0

    :cond_7
    move v0, p2

    :goto_0
    return v0
.end method

.method private static a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 7

    .line 383
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getNamesWithSource()Ljava/util/Collection;

    move-result-object v0

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONDataAndSource;

    .line 387
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONDataAndSource;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 388
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONDataAndSource;->getSrc()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1

    if-nez p3, :cond_0

    .line 392
    :cond_1
    invoke-static {v3}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->convertSrcIntToDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v4

    .line 393
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 395
    sget-object v5, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0xb

    if-eq v3, v5, :cond_2

    const/16 v5, 0x3e9

    if-eq v3, v5, :cond_0

    iget v3, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    .line 396
    invoke-static {v3}, Lcom/callapp/common/api/ApiHelper;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    :cond_2
    invoke-static {v4, p4}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    new-instance v3, Lcom/callapp/common/model/json/JSONDataAndSource;

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONDataAndSource;->getSrc()I

    move-result v4

    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONDataAndSource;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/callapp/common/model/json/JSONDataAndSource;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 406
    :cond_3
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p2, 0x1

    const/4 p0, 0x0

    .line 408
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/common/model/json/JSONDataAndSource;

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONDataAndSource;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/callapp/common/model/json/JSONContact;->setName(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONContact;->setNames(Ljava/util/List;)V

    :cond_4
    return p2
.end method

.method private static a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 0

    .line 267
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDataSource(Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result p0

    return p0
.end method

.method private static a(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 3

    .line 271
    sget-object v0, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$1;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    return v1

    .line 275
    :cond_1
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-eq p0, p1, :cond_2

    return v1

    :cond_2
    return v0

    .line 273
    :cond_3
    sget-object p1, Lcom/callapp/contacts/model/contact/DataSource;->device:Lcom/callapp/contacts/model/contact/DataSource;

    if-ne p0, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method private static b(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 4

    .line 337
    sget-object v0, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;->ONLY_DATA_FROM_DEVICE:Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    return v1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getNegativesMap()Landroid/util/SparseArray;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-lez p3, :cond_9

    .line 343
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v1, p3, :cond_9

    .line 344
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    .line 345
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 346
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 347
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 350
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    if-eq p3, v3, :cond_7

    const/4 v0, 0x4

    if-eq p3, v0, :cond_6

    const/4 v0, 0x5

    if-eq p3, v0, :cond_5

    const/4 v0, 0x6

    if-eq p3, v0, :cond_4

    const/4 v0, 0x7

    if-eq p3, v0, :cond_3

    const/16 v0, 0x9

    if-eq p3, v0, :cond_2

    const/16 v0, 0xa

    if-eq p3, v0, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setVkNegatives(Ljava/util/List;)V

    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setPinterestNegatives(Ljava/util/List;)V

    goto :goto_1

    .line 365
    :cond_3
    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setInstagramNegatives(Ljava/util/List;)V

    goto :goto_1

    .line 362
    :cond_4
    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setFoursquareNegatives(Ljava/util/List;)V

    goto :goto_1

    .line 359
    :cond_5
    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setGooglePlusNegatives(Ljava/util/List;)V

    goto :goto_1

    .line 356
    :cond_6
    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setTwitterNegatives(Ljava/util/List;)V

    goto :goto_1

    .line 353
    :cond_7
    invoke-virtual {p1, p2}, Lcom/callapp/common/model/json/JSONContact;->setFacebookNegatives(Ljava/util/List;)V

    :goto_1
    const/4 p2, 0x1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return p2
.end method

.method private static c(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 6

    .line 416
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getEmailsMap()Ljava/util/Map;

    move-result-object v0

    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/common/model/json/JSONEmail;

    .line 419
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/contact/DataSource;

    .line 420
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/DataSource;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 421
    iget v5, v4, Lcom/callapp/contacts/model/contact/DataSource;->dbCode:I

    invoke-static {v5}, Lcom/callapp/common/api/ApiHelper;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 422
    invoke-static {v4, p3}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p2, 0x1

    .line 424
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 427
    :cond_1
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/callapp/common/model/json/JSONContact;->setEmails(Ljava/util/List;)V

    return p2
.end method

.method private static d(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 3

    .line 432
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getWebsitesWithSource()Ljava/util/Collection;

    move-result-object p0

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 435
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONDataAndSource;

    .line 436
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDataAndSource;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONWebsite;

    if-eqz v2, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDataAndSource;->getSrc()I

    move-result v2

    .line 439
    invoke-static {v2}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->convertSrcIntToDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    .line 440
    invoke-static {v2, p3}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDataAndSource;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_1
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    .line 448
    invoke-virtual {p1, v0}, Lcom/callapp/common/model/json/JSONContact;->setWebsites(Ljava/util/List;)V

    :cond_2
    return p2
.end method

.method private static e(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 3

    .line 455
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getOrganizationsWithSource()Ljava/util/Collection;

    move-result-object p0

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONDataAndSource;

    .line 459
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDataAndSource;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONOrgData;

    if-eqz v2, :cond_0

    .line 461
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDataAndSource;->getSrc()I

    move-result v2

    .line 462
    invoke-static {v2}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->convertSrcIntToDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    .line 463
    invoke-static {v2, p3}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDataAndSource;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 469
    :cond_1
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    .line 471
    invoke-virtual {p1, v0}, Lcom/callapp/common/model/json/JSONContact;->setOrgData(Ljava/util/List;)V

    :cond_2
    return p2
.end method

.method private static f(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 3

    .line 478
    invoke-virtual {p0}, Lcom/callapp/contacts/model/contact/ContactData;->getImAddressesWithSource()Ljava/util/Collection;

    move-result-object p0

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONDataAndSource;

    .line 482
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDataAndSource;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONIMaddress;

    if-eqz v2, :cond_0

    .line 483
    invoke-virtual {v2}, Lcom/callapp/common/model/json/JSONIMaddress;->getIMAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDataAndSource;->getSrc()I

    move-result v2

    .line 485
    invoke-static {v2}, Lcom/callapp/contacts/util/model/UpdateValueWithSourceBuilder;->convertSrcIntToDataSource(I)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v2

    .line 486
    invoke-static {v2, p3}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/DataSource;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONDataAndSource;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    :cond_1
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    .line 494
    invoke-virtual {p1, v0}, Lcom/callapp/common/model/json/JSONContact;->setIMAddresses(Ljava/util/List;)V

    :cond_2
    return p2
.end method

.method private g(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONContact;ZLcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z
    .locals 4

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getEvents()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 503
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getBirthday()Lcom/callapp/common/model/json/JSONDate;

    move-result-object v1

    .line 504
    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p1, v2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/ContactField;)Z

    move-result v2

    if-eqz v1, :cond_6

    .line 506
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {p1, v3, p4}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactField;Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    if-eqz v2, :cond_2

    .line 509
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    const/4 v2, 0x1

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/callapp/common/model/json/JSONEvent;

    .line 510
    invoke-virtual {p4}, Lcom/callapp/common/model/json/JSONEvent;->getType()I

    move-result p4

    if-ne p4, p1, :cond_0

    .line 511
    invoke-virtual {p2, v0}, Lcom/callapp/common/model/json/JSONContact;->setEvents(Ljava/util/List;)V

    return v2

    .line 518
    :cond_1
    new-instance p3, Lcom/callapp/common/model/json/JSONEvent;

    invoke-direct {p3}, Lcom/callapp/common/model/json/JSONEvent;-><init>()V

    .line 519
    invoke-virtual {p3, v2}, Lcom/callapp/common/model/json/JSONEvent;->setFromDevice(Z)V

    .line 520
    invoke-virtual {p3, v1}, Lcom/callapp/common/model/json/JSONEvent;->setFormattedDate(Lcom/callapp/common/model/json/JSONDate;)V

    .line 521
    invoke-virtual {p3, p1}, Lcom/callapp/common/model/json/JSONEvent;->setType(I)V

    const-string p1, "Birthday"

    .line 522
    invoke-virtual {p3, p1}, Lcom/callapp/common/model/json/JSONEvent;->setLabel(Ljava/lang/String;)V

    .line 523
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual {p2, v0}, Lcom/callapp/common/model/json/JSONContact;->setEvents(Ljava/util/List;)V

    return v2

    :cond_2
    const/4 p4, 0x0

    .line 529
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge p4, v1, :cond_4

    .line 530
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONEvent;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONEvent;->getType()I

    move-result v1

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    const/4 p4, -0x1

    :goto_1
    if-eq p4, v2, :cond_5

    .line 536
    invoke-interface {v0, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 538
    :cond_5
    invoke-virtual {p2, v0}, Lcom/callapp/common/model/json/JSONContact;->setEvents(Ljava/util/List;)V

    :cond_6
    return p3
.end method


# virtual methods
.method abstract a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer$UPLOAD_TYPE;
.end method

.method protected final a(Ljava/util/Collection;Z)Ljava/io/File;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            ">;Z)",
            "Ljava/io/File;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 75
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    .line 80
    :cond_0
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->googlePlaces:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v4, 0x28

    new-array v4, v4, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->negatives:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->deviceData:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->names:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    const/4 v5, 0x5

    sget-object v11, Lcom/callapp/contacts/model/contact/ContactField;->phone:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v11, v4, v5

    const/4 v5, 0x6

    sget-object v11, Lcom/callapp/contacts/model/contact/ContactField;->phones:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v11, v4, v5

    const/4 v5, 0x7

    sget-object v11, Lcom/callapp/contacts/model/contact/ContactField;->id:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v11, v4, v5

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->websites:Lcom/callapp/contacts/model/contact/ContactField;

    const/16 v11, 0x8

    aput-object v5, v4, v11

    const/16 v5, 0x9

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->gTalk:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0xa

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->skype:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0xb

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->imAddresses:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0xc

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->yahoo:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0xd

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->birthday:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0xe

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->categories:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0xf

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x10

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->organizations:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x11

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->facebookId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x12

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->facebookData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x13

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->facebookSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x14

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->foursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x15

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->foursquareData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x16

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->foursquareSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x17

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->instagramId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x18

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->instagramData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x19

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->instagramSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x1a

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->twitterScreenName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x1b

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->twitterData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x1c

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->twitterSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x1d

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->pinterestId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x1e

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->pinterestData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x1f

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->pinterestSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x20

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->vkId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x21

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->vkData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x22

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->vkSearchResults:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x23

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->events:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x24

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x25

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->yahooLocal:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x26

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->venueFoursquareData:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    const/16 v5, 0x27

    sget-object v12, Lcom/callapp/contacts/model/contact/ContactField;->venueFoursquareId:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v12, v4, v5

    .line 82
    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    .line 81
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields(Ljava/util/Collection;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/loader/CompoundAsyncLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;-><init>()V

    new-instance v4, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v4}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    .line 100
    invoke-virtual {v3, v4}, Lcom/callapp/contacts/loader/CompoundAsyncLoader;->a(Lcom/callapp/contacts/loader/SimpleContactLoader;)Lcom/callapp/contacts/loader/BaseCompoundLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    .line 101
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/loader/external/GravatarLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/external/GravatarLoader;-><init>()V

    .line 102
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/facebook/FacebookLoader;-><init>()V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/loader/vk/VKLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/vk/VKLoader;-><init>()V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/twitter/TwitterLoader;-><init>()V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/instagram/InstagramLoader;-><init>()V

    .line 103
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v3, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/social/pinterest/PinterestLoader;-><init>()V

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setInSync()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    .line 106
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    .line 111
    invoke-static {v7}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(Z)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    .line 114
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->getFile()Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_2

    .line 116
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "Cannot create json file, aborting upload"

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 170
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    .line 172
    :cond_1
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    :goto_0
    move-object v13, v2

    goto/16 :goto_6

    .line 121
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->getJsonObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v12

    .line 123
    invoke-virtual {v1, v5}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->getBufferedWriter(Ljava/io/File;)Ljava/io/BufferedWriter;

    move-result-object v13
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v14, "["

    .line 124
    invoke-virtual {v13, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    .line 128
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v14

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 131
    invoke-direct {v1, v12, v13, v7, v4}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/io/BufferedWriter;ZLcom/callapp/contacts/model/contact/ContactData;)I

    move-result v4

    add-int/2addr v4, v6

    .line 132
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "Added JSON for user contact %s/%s/%s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v8

    invoke-static {v14, v15, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eqz p2, :cond_4

    .line 136
    invoke-static {v3, v6}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(II)V

    .line 141
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/callapp/contacts/model/contact/ContactData;

    add-int/2addr v2, v7

    if-eqz p2, :cond_5

    add-int/lit8 v15, v15, 0x1

    .line 145
    invoke-static {v3, v15}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(II)V

    .line 148
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/callapp/contacts/model/contact/ContactData;->getPhones()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    .line 152
    invoke-virtual/range {v16 .. v16}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v11

    invoke-virtual/range {v16 .. v16}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v8

    invoke-virtual {v0, v11, v8, v9, v7}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;JZ)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v8

    if-nez v4, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    .line 153
    :goto_3
    invoke-direct {v1, v12, v13, v9, v8}, Lcom/callapp/contacts/sync/syncer/upload/BaseGenomeUploadSyncer;->a(Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/io/BufferedWriter;ZLcom/callapp/contacts/model/contact/ContactData;)I

    move-result v8

    add-int/2addr v4, v8

    .line 158
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "Added JSON for contact #%s %s/%s/%s"

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v11, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v11, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v18, 0x2

    aput-object v16, v11, v18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v19, 0x3

    aput-object v16, v11, v19

    invoke-static {v8, v9, v11}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/16 v11, 0x8

    goto :goto_2

    :cond_8
    const-string v0, "]"

    .line 161
    invoke-virtual {v13, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p2, :cond_9

    .line 170
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    .line 172
    :cond_9
    invoke-static {v13}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    return-object v5

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_5

    :catch_c
    move-exception v0

    goto :goto_5

    :catch_d
    move-exception v0

    goto :goto_5

    :catch_e
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_7

    :catch_f
    move-exception v0

    goto :goto_4

    :catch_10
    move-exception v0

    goto :goto_4

    :catch_11
    move-exception v0

    goto :goto_4

    :catch_12
    move-exception v0

    goto :goto_4

    :catch_13
    move-exception v0

    :goto_4
    const/4 v5, 0x0

    :goto_5
    const/4 v13, 0x0

    .line 163
    :goto_6
    :try_start_4
    invoke-static {v0}, Lcom/callapp/contacts/util/CrashlyticsUtils;->a(Ljava/lang/Throwable;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Exception in createContactJsonFile()"

    invoke-static {v2, v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->a()V

    .line 166
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p2, :cond_a

    .line 170
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    .line 172
    :cond_a
    invoke-static {v13}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    return-object v2

    :catchall_2
    move-exception v0

    move-object v2, v13

    :goto_7
    if-eqz p2, :cond_b

    .line 170
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    .line 172
    :cond_b
    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 173
    throw v0
.end method
