.class public Lcom/callapp/contacts/loader/device/DevicePhotoLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;->a:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .line 83
    sget-object v0, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;->a:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 8

    .line 37
    iget-object v0, p1, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    .line 1079
    sget-object v3, Lcom/callapp/contacts/model/contact/ContactField;->photoUrl:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 42
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-nez v0, :cond_1

    return-void

    .line 47
    :cond_1
    sget-object v0, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;->a:Landroid/util/LruCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_2

    .line 49
    invoke-static {v2, v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->d(J)Landroid/util/Pair;

    move-result-object v0

    :cond_2
    const/4 v5, 0x0

    if-eqz v0, :cond_6

    .line 55
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v5

    goto :goto_0

    :cond_3
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 56
    :goto_0
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v0, v5

    goto :goto_1

    :cond_4
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 57
    :goto_1
    invoke-static {v6, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v6

    goto :goto_2

    :cond_6
    move-object v0, v5

    .line 62
    :goto_2
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/DeviceData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 63
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/model/contact/DeviceData;->setPhotoUrl(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 67
    :cond_7
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/DeviceData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 68
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/callapp/contacts/model/contact/DeviceData;->setThumbnailUrl(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    move v1, v4

    :goto_3
    if-eqz v1, :cond_9

    .line 73
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updatePhoto()V

    .line 75
    :cond_9
    sget-object p1, Lcom/callapp/contacts/loader/device/DevicePhotoLoader;->a:Landroid/util/LruCache;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->DEVICE_ID:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getLoadedFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->PHOTO_FIELDS:Ljava/util/EnumSet;

    return-object v0
.end method
