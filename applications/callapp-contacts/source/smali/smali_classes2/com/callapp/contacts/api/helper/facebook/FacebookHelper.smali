.class public Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;
.super Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;",
        "Lcom/facebook/f<",
        "Lcom/facebook/login/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lcom/facebook/e;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x4

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v0, v6

    const/16 v2, 0x155

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x265

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/callapp/common/util/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/Integer;

    const/16 v1, 0x15

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/callapp/common/util/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->e:Ljava/util/List;

    const-string v1, "public_profile"

    const-string v2, "user_posts"

    const-string v3, "user_friends"

    const-string v4, "user_link"

    const-string v5, "user_birthday"

    const-string v6, "user_likes"

    const-string v7, "user_photos"

    const-string v8, "user_videos"

    const-string v9, "email"

    .line 138
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/common/util/Lists;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;-><init>()V

    const-string v0, "id,name,about,awards,category,company_overview,connected_instagram_account,cover,current_location,description,display_subtext,emails,general_info,hours,instagram_business_account,link,location,overall_star_rating,phone,price_range,single_line_address,website,whatsapp_number"

    .line 133
    iput-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->f:Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 180
    invoke-static {v0}, Lcom/facebook/g;->a([Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/facebook/g;->d()V

    .line 2050
    :cond_0
    new-instance v0, Lcom/facebook/internal/c;

    invoke-direct {v0}, Lcom/facebook/internal/c;-><init>()V

    .line 185
    iput-object v0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->c:Lcom/facebook/e;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)Lcom/callapp/common/model/json/JSONFBUserOrPage;
    .locals 1

    .line 6489
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6490
    const-class v0, Lcom/callapp/common/model/json/JSONFBUserOrPage;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONFBUserOrPage;

    .line 6491
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/common/model/json/JSONFBUserOrPage;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;)Lcom/facebook/e;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->c:Lcom/facebook/e;

    return-object p0
.end method

.method static synthetic a(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 91
    invoke-static {p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "data"

    .line 6472
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6473
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6474
    invoke-static {}, Lcom/callapp/contacts/util/serializer/string/Serializer;->getJSONObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    const-class v2, Lcom/callapp/common/model/json/JSONFBUserOrPage;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    .line 6475
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 6477
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6478
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONFBUserOrPage;

    .line 6479
    invoke-direct {p0, v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/common/model/json/JSONFBUserOrPage;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method private a(Lcom/callapp/common/model/json/JSONFBUserOrPage;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1499
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getRawHours()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1501
    invoke-static {}, Lcom/callapp/contacts/util/serializer/string/Serializer;->getJSONObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    const-class v3, Lcom/callapp/common/model/json/JSONFBHour;

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v1

    .line 1502
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 1504
    new-instance v2, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$14;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$14;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;)V

    .line 1506
    invoke-static {v0, v2}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1509
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1510
    new-instance v3, Lcom/callapp/common/model/json/JSONFBHour;

    invoke-direct {v3}, Lcom/callapp/common/model/json/JSONFBHour;-><init>()V

    .line 1511
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/common/model/json/JSONFBHour;->setKey(Ljava/lang/String;)V

    .line 1512
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/callapp/common/model/json/JSONFBHour;->setValue(Ljava/lang/String;)V

    .line 1513
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1518
    :cond_0
    invoke-virtual {p1, v1}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->setJsonfbHoursList(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)Z
    .locals 2

    .line 408
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 411
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 412
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 414
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "https://facebook.com/"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    .line 418
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 0

    .line 91
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)Landroid/util/Pair;
    .locals 16

    move-object/from16 v0, p1

    .line 7168
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "fields"

    const-string v1, "id,description,updated_time,created_time"

    .line 7169
    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "limit"

    const/16 v11, 0xa

    .line 7170
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7172
    new-instance v12, Lcom/facebook/GraphRequest;

    .line 7173
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/videos/uploaded"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v6, 0x0

    const-string v7, "v4.0"

    move-object v1, v12

    move-object v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 7962
    invoke-static {v12}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v1

    .line 8121
    iget-object v1, v1, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    const-string v7, "created_time"

    const-string v12, "data"

    const/4 v2, 0x1

    const/4 v13, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 7183
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    .line 7185
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 7186
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "description"

    .line 7188
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7189
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 7190
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7191
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 7192
    invoke-static {v3, v5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v14, v1

    move-object v15, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v14, v3

    move-object v15, v14

    goto :goto_1

    :cond_2
    move-object v14, v3

    move-object v15, v14

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 7207
    invoke-virtual {v8}, Landroid/os/Bundle;->clear()V

    const-string v1, "name,created_time"

    .line 7208
    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7209
    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7211
    new-instance v9, Lcom/facebook/GraphRequest;

    .line 7212
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/photos/uploaded"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/k;->GET:Lcom/facebook/k;

    const/4 v5, 0x0

    const-string v6, "v4.0"

    move-object v0, v9

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    .line 8962
    invoke-static {v9}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v0

    .line 9121
    iget-object v0, v0, Lcom/facebook/j;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 7221
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7223
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v13, v1, :cond_4

    .line 7224
    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "name"

    .line 7226
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7227
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7228
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7229
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7230
    invoke-static {v14, v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v14, v0

    move-object v15, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 7246
    :cond_4
    :goto_3
    invoke-static {v15, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/util/Date;Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 947
    :try_start_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    return-object p1

    .line 951
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p1

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V
    .locals 0

    .line 91
    invoke-static {p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 1

    const-string v0, "fb://page/"

    .line 548
    invoke-static {p0, p1, p2, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 0

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V

    return-void
.end method

.method static synthetic c(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V
    .locals 0

    .line 91
    invoke-static {p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method static synthetic d(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V

    return-void
.end method

.method static synthetic e(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Lcom/callapp/contacts/model/UsageCounter;II)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/model/UsageCounter;IIZ)V

    return-void
.end method

.method public static get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;
    .locals 1

    .line 1653
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getFacebookHelper()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    return-object v0
.end method

.method private getAuthorizationHeaderValue()Ljava/lang/String;
    .locals 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "facebookAccessToken"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m()Ljava/util/ArrayList;
    .locals 1

    .line 91
    sget-object v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static n()V
    .locals 3

    .line 237
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Ljava/util/List;

    const-string v2, "fb_myFriends_sorted"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    const-class v1, Lcom/callapp/common/model/json/JSONFBUserOrPage;

    const-string v2, "fb_user_me_true"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/UserProfileManager;->a(I)V

    return-void
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 3

    .line 1692
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    invoke-static {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private q(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;
    .locals 2

    .line 571
    new-instance v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$7;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V

    const-class p1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;

    return-object p1
.end method

.method private static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://graph.facebook.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/picture?type=normal"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://graph.facebook.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/picture?width=600"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/contact/ContactData;)Lcom/callapp/common/model/json/JSONSocialNetworkID;
    .locals 0

    .line 211
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getFacebookId()Lcom/callapp/common/model/json/JSONSocialNetworkID;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getLoggedInUser()Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 194
    invoke-static {}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a()Lcom/callapp/contacts/util/http/HttpRequest;

    move-result-object p1

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Z)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 930
    :try_start_0
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5157
    const-class v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 5158
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 5160
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5161
    sget-object v1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v4, v4, [Ljava/lang/Object;

    .line 5162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, "(code %d)"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5163
    :cond_0
    new-instance p2, Lcom/callapp/contacts/loader/social/QuotaReachedException;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/loader/social/QuotaReachedException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    if-eqz p2, :cond_3

    .line 5168
    sget-object p2, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 5169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "(#%d)"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 5170
    :cond_2
    new-instance p2, Lcom/callapp/contacts/loader/social/UserNotFoundException;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/loader/social/UserNotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(ZZ)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/Friend;",
            ">;"
        }
    .end annotation

    .line 1609
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getFriends()Ljava/util/List;

    move-result-object p2

    .line 1610
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1611
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1612
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/common/model/json/JSONFBEntity;

    .line 1613
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONFBEntity;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 1614
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1615
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1617
    :cond_0
    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONFBEntity;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/model/Friend;

    invoke-virtual {v1}, Lcom/callapp/common/model/json/JSONFBEntity;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lcom/callapp/contacts/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    .line 1621
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 255
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isNativeAppInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Saw facebook login screen and doesn\'t have facebook"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a()V

    return-void

    .line 261
    :cond_1
    new-instance v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 7

    const-string v0, "#@@#"

    .line 425
    invoke-static {p2, v0}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 p2, 0x0

    .line 427
    aget-object v3, v0, p2

    const/4 p2, 0x1

    aget-object v6, v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;Ljava/lang/String;)V

    return-void

    .line 429
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V
    .locals 7

    .line 519
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    .line 540
    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$6;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 542
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 543
    invoke-static {p4, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/manager/task/OutcomeListener;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;Ljava/lang/String;)V
    .locals 6

    .line 482
    invoke-static {p5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "user"

    .line 484
    invoke-static {p5, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    return-void

    :cond_0
    const-string v0, "page"

    .line 487
    invoke-static {p5, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p4, :cond_1

    .line 490
    invoke-interface {p4, p1}, Lcom/callapp/contacts/manager/task/OutcomeListener;->a(Z)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "placeinformation"

    .line 493
    invoke-static {p5, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "facebookPlaceData"

    invoke-static {p5, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 494
    :cond_3
    new-instance p5, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    .line 509
    invoke-virtual {p5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$5;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void

    .line 514
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Lcom/callapp/contacts/manager/task/OutcomeListener;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/common/model/json/JSONSocialNetworkID;)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceData()Lcom/callapp/contacts/model/contact/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/model/contact/DeviceData;->setFacebookId(Lcom/callapp/common/model/json/JSONSocialNetworkID;)V

    .line 206
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->updateFacebookId()V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 5

    .line 455
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 456
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isNativeAppInstalled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const-string v0, "/"

    .line 458
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 460
    array-length v4, v0

    if-lez v4, :cond_0

    .line 461
    array-length v1, v0

    sub-int/2addr v1, v2

    aget-object v3, v0, v1

    .line 462
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    .line 465
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fb://profile/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fb://facewebmodal/f?href="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/callapp/common/util/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 466
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 467
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 471
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 474
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    :goto_1
    return v2

    :cond_4
    return v1
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;
    .locals 4

    .line 228
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    new-instance v1, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    invoke-direct {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;-><init>()V

    .line 230
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getAuthorizationHeaderValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v2}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/LazyHeaders$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/bumptech/glide/load/model/LazyHeaders$Builder;->build()Lcom/bumptech/glide/load/model/LazyHeaders;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    return-object v0

    .line 233
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 4817
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_1

    .line 4821
    :cond_0
    new-instance v3, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;

    invoke-direct {v3, p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$9;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V

    const-class v4, Lcom/callapp/common/model/json/JSONFBEntity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    sget-object p1, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->onlyFromCache:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->standard:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    :goto_0
    move-object v7, p1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZLcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONFBEntity;

    :goto_1
    if-eqz p1, :cond_2

    .line 810
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 811
    new-instance p2, Lcom/callapp/contacts/model/PersonData;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/model/PersonData;-><init>(Lcom/callapp/common/model/json/JSONFBEntity;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public final d(Ljava/lang/String;Z)Lcom/callapp/common/model/json/JSONFBUserOrPage;
    .locals 2

    .line 1356
    new-instance v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$13;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V

    const-class p1, Lcom/callapp/common/model/json/JSONFBUserOrPage;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/common/model/json/JSONFBUserOrPage;

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final e()V
    .locals 2

    .line 245
    :try_start_0
    invoke-static {}, Lcom/facebook/login/g;->a()Lcom/facebook/login/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 2320
    invoke-static {v1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 2321
    invoke-static {v1}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    const/4 v1, 0x0

    .line 2322
    invoke-virtual {v0, v1}, Lcom/facebook/login/g;->a(Z)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->n()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 247
    :try_start_1
    const-class v1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->n()V

    return-void

    :goto_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->n()V

    .line 250
    throw v0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1697
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d(Ljava/lang/String;Z)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1698
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1707
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getApiConstantNetworkId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    .line 1343
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getLoggedInUser()Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1345
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataSource()Lcom/callapp/contacts/model/contact/DataSource;
    .locals 1

    .line 1649
    sget-object v0, Lcom/callapp/contacts/model/contact/DataSource;->facebook:Lcom/callapp/contacts/model/contact/DataSource;

    return-object v0
.end method

.method public getFriends()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONFBEntity;",
            ">;"
        }
    .end annotation

    .line 1250
    sget-object v5, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;->standard:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;

    .line 5254
    new-instance v1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$12;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$12;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;)V

    const-class v2, Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;ZZLcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCacheMode;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getFriendsCount()J
    .locals 2

    .line 1640
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getFriends()Ljava/util/List;

    move-result-object v0

    .line 1641
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1642
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFriendsListAsPersonData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/PersonData;",
            ">;"
        }
    .end annotation

    .line 1626
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getFriends()Ljava/util/List;

    move-result-object v0

    .line 1627
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1628
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1629
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/common/model/json/JSONFBEntity;

    .line 1630
    new-instance v3, Lcom/callapp/contacts/model/PersonData;

    invoke-direct {v3, v2}, Lcom/callapp/contacts/model/PersonData;-><init>(Lcom/callapp/common/model/json/JSONFBEntity;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    .line 1635
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoggedInUser()Lcom/callapp/common/model/json/JSONFBUserOrPage;
    .locals 2

    const-string v0, "me"

    const/4 v1, 0x0

    .line 5352
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d(Ljava/lang/String;Z)Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Facebook"

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .line 1723
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getLoggedInUser()Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1725
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1726
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1728
    :cond_0
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 1729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 1730
    :goto_0
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, " "

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1732
    :cond_3
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/callapp/contacts/loader/social/UserNotFoundException;,
            Lcom/callapp/contacts/loader/social/QuotaReachedException;
        }
    .end annotation

    .line 1712
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->q(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1713
    iget-object v0, p1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    iget-object p1, p1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1658
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "facebook.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "(?:http:\\/\\/)?(?:www.)?facebook.com\\/(?:(?:\\w)*#!\\/)?(?:pages\\/)?(?:[?\\w\\-]*\\/)?(?:profile.php\\?id=(?=\\d.*))?([\\w\\-\\.]*)?"

    .line 1662
    invoke-static {v0}, Lcom/callapp/common/util/RegexUtils;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1663
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1664
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 1665
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1666
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 216
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNativeAppInstalled()Z
    .locals 3

    .line 402
    new-instance v0, Landroid/content/Intent;

    const-string v1, "fb://profile/1000"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 552
    invoke-direct {p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->q(Ljava/lang/String;)Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 554
    iget-object p1, p1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$ProfileImageUrl;->a:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k()V
    .locals 0

    .line 293
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b()V

    return-void
.end method

.method public final l(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 650
    new-instance v0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$8;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$8;-><init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Ljava/lang/String;)V

    const-class p1, Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$SocialCallable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public final synthetic l()V
    .locals 0

    .line 6287
    invoke-virtual {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->d()V

    .line 6288
    invoke-super {p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a()V

    return-void
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 747
    invoke-static {p1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 749
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 754
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&redirect=false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 756
    new-instance v2, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;

    const-class v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-direct {v2, v3}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;-><init>(Ljava/lang/Class;)V

    .line 757
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Authorization"

    .line 758
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getAuthorizationHeaderValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    new-instance v4, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v4, v1}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 3090
    iput-object v2, v4, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 4075
    iput-object v3, v4, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a:Ljava/util/Map;

    .line 759
    invoke-virtual {v4}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    .line 760
    invoke-virtual {v2}, Lcom/callapp/contacts/util/serializer/string/ClassParserHttpResponseHandler;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    if-eqz v1, :cond_1

    const-string v2, "data"

    .line 762
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "is_silhouette"

    .line 764
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 766
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "url"

    .line 767
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 769
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v1

    .line 770
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return-object p1

    :catch_0
    move-exception p1

    .line 780
    const-class v1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method
