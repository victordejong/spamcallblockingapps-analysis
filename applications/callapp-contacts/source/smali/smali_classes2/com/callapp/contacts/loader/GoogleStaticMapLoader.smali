.class public Lcom/callapp/contacts/loader/GoogleStaticMapLoader;
.super Lcom/callapp/contacts/loader/SimpleContactLoader;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/loader/api/NetworkDataLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/loader/SimpleContactLoader;-><init>()V

    return-void
.end method

.method private static a(Lcom/callapp/common/model/json/JSONAddress;)F
    .locals 1

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x41800000    # 16.0f

    return p0

    :cond_0
    const/high16 p0, 0x41500000    # 13.0f

    return p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/loader/api/LoadContext;)V
    .locals 18

    move-object/from16 v0, p1

    .line 59
    const-class v1, Lcom/callapp/contacts/loader/GoogleStaticMapLoader;

    iget-object v2, v0, Lcom/callapp/contacts/loader/api/LoadContext;->b:Ljava/util/Set;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v5, Lcom/callapp/contacts/model/contact/ContactField;->googleMap:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 60
    iget-object v2, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 61
    invoke-virtual {v2, v1}, Lcom/callapp/contacts/model/contact/ContactData;->getLock(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 63
    :try_start_0
    iget-object v0, v0, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getAddress()Lcom/callapp/common/model/json/JSONAddress;

    move-result-object v5

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_2

    .line 65
    invoke-virtual {v5}, Lcom/callapp/common/model/json/JSONAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v0

    .line 1050
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->i(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, ","

    invoke-static {v0, v10}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_1

    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_2

    .line 67
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "GM_address#"

    .line 2035
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v11

    const-class v12, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    .line 2215
    invoke-virtual {v11, v12, v10, v6}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v11

    .line 69
    check-cast v11, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    if-nez v11, :cond_3

    .line 71
    new-instance v12, Landroid/location/Geocoder;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    invoke-virtual {v12, v0, v3}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 75
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 76
    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v13

    .line 77
    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v15

    cmpl-double v0, v13, v8

    if-eqz v0, :cond_3

    cmpl-double v0, v15, v8

    if-eqz v0, :cond_3

    .line 81
    new-instance v3, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    invoke-static {v5}, Lcom/callapp/contacts/loader/GoogleStaticMapLoader;->a(Lcom/callapp/common/model/json/JSONAddress;)F

    move-result v17

    move-object v12, v3

    invoke-direct/range {v12 .. v17}, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;-><init>(DDF)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :try_start_2
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v6, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    const v11, 0x7f0b000b

    invoke-virtual {v0, v6, v10, v3, v11}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v3

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object v11, v3

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    .line 86
    :goto_2
    :try_start_3
    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    move-object v11, v7

    :cond_3
    :goto_3
    if-nez v11, :cond_4

    .line 93
    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLat()D

    move-result-wide v0

    cmpl-double v3, v0, v8

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLng()D

    move-result-wide v0

    cmpl-double v3, v0, v8

    if-eqz v3, :cond_4

    .line 94
    new-instance v11, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLat()D

    move-result-wide v13

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getLng()D

    move-result-wide v15

    invoke-static {v7}, Lcom/callapp/contacts/loader/GoogleStaticMapLoader;->a(Lcom/callapp/common/model/json/JSONAddress;)F

    move-result v17

    move-object v12, v11

    invoke-direct/range {v12 .. v17}, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;-><init>(DDF)V

    :cond_4
    if-eqz v11, :cond_5

    .line 97
    iget v0, v11, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->zoom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 99
    invoke-static {v5}, Lcom/callapp/contacts/loader/GoogleStaticMapLoader;->a(Lcom/callapp/common/model/json/JSONAddress;)F

    move-result v0

    iput v0, v11, Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;->zoom:F

    .line 102
    :cond_5
    invoke-virtual {v2, v11}, Lcom/callapp/contacts/model/contact/ContactData;->setGoogleMapsLatLng(Lcom/callapp/contacts/model/contact/AddressGeoCodeLatLng;)V

    .line 103
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_6
    return-void
.end method

.method public getListenFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/callapp/contacts/model/contact/ContactField;->latLng:Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->addresses:Lcom/callapp/contacts/model/contact/ContactField;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
