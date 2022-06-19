.class public Lcom/callapp/contacts/util/UpdateUserProfileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/UpdateUserProfileUtil$ProfileParamsBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/http/HttpRequest;-><init>(Ljava/lang/String;)V

    .line 185
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "myp"

    .line 186
    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 187
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "tk"

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 188
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cvc"

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    const-string v0, "ispro"

    const-string v2, "1"

    .line 189
    invoke-virtual {v1, v0, v2}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    return-object v1
.end method

.method private static a(Lcom/callapp/contacts/util/http/HttpRequest;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/util/List;)Lcom/callapp/contacts/util/http/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/http/HttpRequest;",
            "Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/callapp/contacts/util/http/HttpRequest;"
        }
    .end annotation

    .line 211
    const-class v0, Lcom/callapp/contacts/util/UpdateUserProfileUtil;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Lcom/callapp/contacts/util/http/HttpRequest;)Lcom/callapp/contacts/util/http/HttpRequest;

    move-result-object p0
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Error sending IDs"

    .line 220
    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 215
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 217
    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getApiConstantNetworkId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/util/http/HttpRequest;Landroid/util/Pair;)V
    .locals 4

    .line 2038
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2040
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2041
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2042
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#@#"

    .line 2043
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2046
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2048
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2049
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    :cond_2
    return-void
.end method

.method public static a(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;)V
    .locals 2

    .line 154
    new-instance v0, Landroid/util/Pair;

    const-string v1, "fbid"

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->b(Lcom/callapp/contacts/util/http/HttpRequest;Landroid/util/Pair;)V

    return-void
.end method

.method private static a(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v1, Landroid/util/Pair;

    const-string v2, "fn"

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p1, Landroid/util/Pair;

    const-string v1, "ln"

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance p1, Landroid/util/Pair;

    const-string p2, "email"

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance p1, Landroid/util/Pair;

    const-string p2, "tl"

    invoke-direct {p1, p2, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "tk"

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->b(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/util/List;)V
    .locals 0

    .line 28
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->b(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/util/List;)V

    return-void
.end method

.method public static a([I)V
    .locals 8

    if-eqz p0, :cond_5

    .line 237
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 239
    new-instance v1, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;

    invoke-direct {v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;-><init>()V

    .line 240
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a()V

    .line 241
    invoke-static {}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a()Lcom/callapp/contacts/util/http/HttpRequest;

    move-result-object v2

    .line 242
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget v6, p0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 243
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/callapp/contacts/manager/Singletons;->getRemoteAccountHelper(I)Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 245
    invoke-static {v2, v6, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a(Lcom/callapp/contacts/util/http/HttpRequest;Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Ljava/util/List;)Lcom/callapp/contacts/util/http/HttpRequest;

    move-result-object v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getFirstName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getBio()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p0, v3, v5, v1}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x2710

    .line 1047
    invoke-virtual {v2, p0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(I)Z

    .line 250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    .line 251
    new-array v1, p0, [I

    if-lez p0, :cond_3

    .line 254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v2, v4, 0x1

    .line 255
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v4

    move v4, v2

    goto :goto_1

    .line 257
    :cond_2
    sget-object p0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->a:Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;->a([I)V

    :cond_3
    return-void

    .line 260
    :cond_4
    sget-object v0, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker;->a:Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/workers/SendSocialToGenomeWorker$Companion;->a([I)V

    :cond_5
    return-void
.end method

.method public static b()V
    .locals 7

    .line 227
    sget-object v0, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v0, v0, [I

    .line 229
    sget-object v1, Lcom/callapp/common/api/ApiConstants;->c:[Ljava/lang/Integer;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    .line 230
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->a([I)V

    return-void
.end method

.method private static b(Lcom/callapp/contacts/util/http/HttpRequest;Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/http/HttpRequest;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    :cond_0
    return-void
.end method

.method public static b(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;)V
    .locals 2

    .line 158
    new-instance v0, Landroid/util/Pair;

    const-string v1, "twtscrname"

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->b(Lcom/callapp/contacts/util/http/HttpRequest;Landroid/util/Pair;)V

    return-void
.end method

.method private static b(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/http/HttpRequest;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 31
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 32
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->b(Lcom/callapp/contacts/util/http/HttpRequest;Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;)V
    .locals 2

    .line 163
    new-instance v0, Landroid/util/Pair;

    const-string v1, "gpid"

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->b(Lcom/callapp/contacts/util/http/HttpRequest;Landroid/util/Pair;)V

    return-void
.end method

.method public static d(Lcom/callapp/contacts/util/http/HttpRequest;Ljava/lang/String;)V
    .locals 2

    .line 179
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "vkid"

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/UpdateUserProfileUtil;->b(Lcom/callapp/contacts/util/http/HttpRequest;Landroid/util/Pair;)V

    return-void
.end method
