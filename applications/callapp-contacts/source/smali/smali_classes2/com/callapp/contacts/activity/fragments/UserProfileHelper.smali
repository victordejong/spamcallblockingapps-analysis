.class public Lcom/callapp/contacts/activity/fragments/UserProfileHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fragments/UserProfileHelper;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/fragments/UserProfileHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    return-object p1
.end method

.method private b()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()V
    .locals 6

    .line 284
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getEmail()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getFirstName()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getLastName()Ljava/lang/String;

    move-result-object v2

    .line 287
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getBio()Ljava/lang/String;

    move-result-object v3

    .line 288
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 290
    sget-object v5, Lcom/callapp/contacts/manager/preferences/Prefs;->aq:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v5, v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 291
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ar:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 292
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->as:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 293
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->at:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 294
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->au:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1261
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ar:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1262
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    iput-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a:Ljava/lang/String;

    .line 1265
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->as:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1266
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1267
    iput-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b:Ljava/lang/String;

    .line 1269
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aq:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1270
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1271
    iput-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    .line 1273
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->at:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1274
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1275
    iput-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->d:Ljava/lang/String;

    .line 1277
    :cond_3
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->au:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1278
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1279
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setAddress(Ljava/lang/String;)V

    .line 51
    :cond_4
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2110
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2111
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getLoggedInUser()Lcom/callapp/common/model/json/JSONFBUserOrPage;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2113
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2114
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setFirstName(Ljava/lang/String;)V

    .line 2117
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2118
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setLastName(Ljava/lang/String;)V

    .line 2121
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2122
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONFBUserOrPage;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setEmail(Ljava/lang/String;)V

    .line 2090
    :cond_7
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2129
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2130
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setFullNameIfEmpty(Ljava/lang/String;)V

    .line 2131
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2132
    invoke-static {}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->get()Lcom/callapp/contacts/api/helper/google/GoogleHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/google/GoogleHelper;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setEmail(Ljava/lang/String;)V

    .line 2097
    :cond_8
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2139
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2140
    invoke-static {}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->get()Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/twitter/TwitterHelper;->getLoggedInUser()Lcom/twitter/sdk/android/core/models/User;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2142
    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2143
    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setFullNameIfEmpty(Ljava/lang/String;)V

    .line 2103
    :cond_9
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Error fetching user profile data from social networks"

    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 60
    :cond_a
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c()V

    return-void

    .line 2155
    :cond_b
    new-instance v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;-><init>(Lcom/callapp/contacts/activity/fragments/UserProfileHelper$1;)V

    .line 2158
    new-instance v2, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v3, "display_name"

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v2

    new-instance v4, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$1;

    invoke-direct {v4}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$1;-><init>()V

    .line 3185
    invoke-virtual {v2, v4, v1}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowCallback;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2159
    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->a:Ljava/lang/String;

    .line 2172
    new-instance v1, Lcom/callapp/contacts/framework/dao/ContentQuery;

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;-><init>(Landroid/net/Uri;)V

    const-string v2, "entities"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "mimetype"

    .line 2173
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "is_primary"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    .line 2174
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/callapp/contacts/framework/dao/ContentQuery;->c(Ljava/lang/String;)Lcom/callapp/contacts/framework/dao/ContentQuery;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$2;-><init>(Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/RowVisitor;)Z

    .line 68
    iget-object v1, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 69
    iget-object v1, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setFullNameIfEmpty(Ljava/lang/String;)V

    .line 72
    :cond_c
    iget-object v1, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 73
    iget-object v0, v0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$ICSProfileUserDetails;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->setEmail(Ljava/lang/String;)V

    .line 76
    :cond_d
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 77
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c()V

    return-void

    .line 3203
    :cond_e
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 3204
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/a/a;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/api/client/googleapis/extensions/android/a/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/a/a;->a()[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3206
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_f

    aget-object v4, v0, v3

    .line 3207
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    const-string v5, "@gmail.com"

    .line 3208
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3215
    :cond_f
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3216
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3217
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->aS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3218
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3219
    new-instance v2, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v4, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    aput-object v4, v3, v1

    sget-object v1, Lcom/callapp/contacts/model/contact/ContactField;->emails:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    .line 3220
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$3;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper$3;-><init>(Lcom/callapp/contacts/activity/fragments/UserProfileHelper;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadCallback(Lcom/callapp/contacts/event/Callback;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 3233
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/ContactData;

    .line 83
    :cond_10
    invoke-direct {p0}, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c()V

    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->e:Ljava/lang/String;

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->c:Ljava/lang/String;

    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a:Ljava/lang/String;

    return-void
.end method

.method public setFullNameIfEmpty(Ljava/lang/String;)V
    .locals 3

    .line 241
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, " "

    .line 244
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    .line 247
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->a:Ljava/lang/String;

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 255
    iput-object v0, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/UserProfileHelper;->b:Ljava/lang/String;

    return-void
.end method
