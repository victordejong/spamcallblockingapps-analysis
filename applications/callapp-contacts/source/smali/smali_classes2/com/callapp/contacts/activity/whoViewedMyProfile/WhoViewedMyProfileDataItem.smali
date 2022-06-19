.class public Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;
.super Lcom/callapp/contacts/activity/base/BaseAdapterItemData;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

.field c:J

.field d:Ljava/lang/String;

.field e:Lcom/callapp/contacts/model/objectbox/TYPE;

.field f:Ljava/lang/String;

.field g:Z

.field h:I


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;Z)V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getEntrypoint()Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->b:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    .line 24
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getLastViewed()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->c:J

    .line 25
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->d:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getType()Lcom/callapp/contacts/model/objectbox/TYPE;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->e:Lcom/callapp/contacts/model/objectbox/TYPE;

    .line 27
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getEntrypoint()Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->getView()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->f:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->g:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 51
    :cond_2
    check-cast p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    .line 52
    iget-wide v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->c:J

    iget-wide v4, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->c:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->g:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->g:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->h:I

    iget v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->h:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->a:Ljava/lang/String;

    .line 55
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->b:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    iget-object v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->b:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->d:Ljava/lang/String;

    .line 57
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->e:Lcom/callapp/contacts/model/objectbox/TYPE;

    iget-object v3, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->e:Lcom/callapp/contacts/model/objectbox/TYPE;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->f:Ljava/lang/String;

    .line 59
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getPhone()Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/phone/Phone;->b(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->b:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->d:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->e:Lcom/callapp/contacts/model/objectbox/TYPE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->f:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public includeContactIdInHashcodeAndEquals()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
