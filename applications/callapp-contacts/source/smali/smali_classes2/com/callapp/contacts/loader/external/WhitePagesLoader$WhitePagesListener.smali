.class Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/external/WhitePagesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WhitePagesListener"
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

.field private final b:Lcom/callapp/contacts/loader/api/LoadContext;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/loader/external/WhitePagesLoader;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->a:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    .line 183
    iput-object p1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->b:Lcom/callapp/contacts/loader/api/LoadContext;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;)Lcom/callapp/contacts/loader/api/LoadContext;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->b:Lcom/callapp/contacts/loader/api/LoadContext;

    return-object p0
.end method

.method static synthetic a(Lorg/json/JSONObject;)Lcom/callapp/contacts/model/contact/WhitePagesData;
    .locals 4

    .line 1220
    new-instance v0, Lcom/callapp/contacts/model/contact/WhitePagesData;

    invoke-direct {v0}, Lcom/callapp/contacts/model/contact/WhitePagesData;-><init>()V

    const-string v1, "wp_name"

    .line 1224
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1225
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/WhitePagesData;->setFullName(Ljava/lang/String;)V

    .line 1228
    :cond_0
    new-instance v1, Lcom/callapp/common/model/json/JSONAddress;

    invoke-direct {v1}, Lcom/callapp/common/model/json/JSONAddress;-><init>()V

    const-string v2, "wp_city"

    .line 1230
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1231
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1232
    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONAddress;->setCity(Ljava/lang/String;)V

    :cond_1
    const-string v2, "wp_street"

    .line 1236
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1237
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1238
    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONAddress;->setStreet(Ljava/lang/String;)V

    :cond_2
    const-string v2, "wp_state"

    .line 1241
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1242
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1243
    invoke-virtual {v1, v2}, Lcom/callapp/common/model/json/JSONAddress;->setState(Ljava/lang/String;)V

    :cond_3
    const-string v2, "wp_postal_code"

    .line 1246
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1247
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1248
    invoke-virtual {v1, p0}, Lcom/callapp/common/model/json/JSONAddress;->setPostalCode(Ljava/lang/String;)V

    .line 1250
    :cond_4
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/model/contact/WhitePagesData;->setAddress(Lcom/callapp/common/model/json/JSONAddress;)V

    return-object v0
.end method

.method static synthetic b(Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;)Lcom/callapp/contacts/loader/external/WhitePagesLoader;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->a:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    return-object p0
.end method


# virtual methods
.method public setWhitePagesDataList(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 193
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener$1;-><init>(Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/LoadContext;->a(Lcom/callapp/contacts/manager/task/Task;)V

    goto :goto_0

    .line 211
    :cond_0
    const-class p1, Lcom/callapp/contacts/model/contact/WhitePagesData;

    const-string v0, "WP  returned with no results for: "

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 212
    new-instance p1, Lcom/callapp/contacts/model/contact/WhitePagesData;

    invoke-direct {p1}, Lcom/callapp/contacts/model/contact/WhitePagesData;-><init>()V

    .line 213
    invoke-static {}, Lcom/callapp/contacts/manager/cache/CacheManager;->get()Lcom/callapp/contacts/manager/cache/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->a:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    invoke-virtual {v1}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->b:Lcom/callapp/contacts/loader/api/LoadContext;

    iget-object v2, v2, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iget-object v3, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->a:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    invoke-virtual {v3}, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->getDataClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/model/contact/ContactData;->getCacheKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/loader/external/WhitePagesLoader$WhitePagesListener;->a:Lcom/callapp/contacts/loader/external/WhitePagesLoader;

    .line 1174
    iget-object v0, p1, Lcom/callapp/contacts/loader/external/WhitePagesLoader;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/loader/api/ContactLoader;->removeWebview(Lcom/callapp/contacts/loader/api/ContactDataLoader;)V

    return-void
.end method

.method public validateWPName(Ljava/lang/String;)Z
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 188
    invoke-static {p1}, Lcom/callapp/framework/util/NameValidationUtils;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
