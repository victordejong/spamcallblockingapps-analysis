.class public Lcom/callapp/contacts/sync/syncer/cache/PhotoOrIdShouldLoadLogic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/sync/syncer/cache/SocialFoundThenOtherSyncerLoader$ShouldLoadLogic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/SimpleContactLoader;Lcom/callapp/contacts/model/contact/ContactData;)Z
    .locals 3

    .line 13
    invoke-static {p2}, Lcom/callapp/contacts/model/contact/ContactDataUtils;->hasAnySocialId(Lcom/callapp/contacts/model/contact/ContactData;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/DeviceData;->hasAnyPhotoUri()Z

    move-result v2

    if-nez v2, :cond_2

    .line 15
    :cond_1
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->hasAnyPhotoUrl()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-virtual {p2, v2}, Lcom/callapp/contacts/model/contact/ContactData;->isSure(Lcom/callapp/contacts/model/contact/ContactField;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    return v0

    :cond_4
    return v1
.end method
