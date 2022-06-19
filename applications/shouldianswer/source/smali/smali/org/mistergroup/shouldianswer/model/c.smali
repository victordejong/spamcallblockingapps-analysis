.class public final Lorg/mistergroup/shouldianswer/model/c;
.super Ljava/lang/Object;
.source "AppSettings.kt"


# static fields
.field static final synthetic a:[Lkotlin/g/e;

.field public static final b:Lorg/mistergroup/shouldianswer/model/c;

# The value of this static final field might be set in the static constructor
.field private static final c:Ljava/lang/String; = "SIA-NEXT"

# The value of this static final field might be set in the static constructor
.field private static final d:I = 0x36ee80

# The value of this static final field might be set in the static constructor
.field private static final e:I = 0x36ee80

# The value of this static final field might be set in the static constructor
.field private static final f:I = 0x1499700

# The value of this static final field might be set in the static constructor
.field private static final g:I = 0x4ef6d80

# The value of this static final field might be set in the static constructor
.field private static final h:I = 0x5265c00

# The value of this static final field might be set in the static constructor
.field private static final i:I = 0xa4cb800

# The value of this static final field might be set in the static constructor
.field private static final j:J = 0xf731400L

# The value of this static final field might be set in the static constructor
.field private static final k:J = 0x48190800L

# The value of this static final field might be set in the static constructor
.field private static final l:J = 0xa4cb80L

# The value of this static final field might be set in the static constructor
.field private static final m:J = 0xa4cb80L

.field private static n:Landroid/content/SharedPreferences;

.field private static final o:Lkotlin/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/g/e;

    new-instance v1, Lkotlin/e/b/l;

    const-class v2, Lorg/mistergroup/shouldianswer/model/c;

    invoke-static {v2}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v2

    const-string v3, "country"

    const-string v4, "getCountry()Lorg/mistergroup/shouldianswer/model/Countries$Country;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v1

    check-cast v1, Lkotlin/g/e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/mistergroup/shouldianswer/model/c;->a:[Lkotlin/g/e;

    .line 22
    new-instance v0, Lorg/mistergroup/shouldianswer/model/c;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/c;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    const-string v0, "SIA-NEXT"

    .line 23
    sput-object v0, Lorg/mistergroup/shouldianswer/model/c;->c:Ljava/lang/String;

    const v0, 0x36ee80

    .line 24
    sput v0, Lorg/mistergroup/shouldianswer/model/c;->d:I

    .line 25
    sput v0, Lorg/mistergroup/shouldianswer/model/c;->e:I

    const v0, 0x1499700

    .line 26
    sput v0, Lorg/mistergroup/shouldianswer/model/c;->f:I

    const v0, 0x4ef6d80

    .line 27
    sput v0, Lorg/mistergroup/shouldianswer/model/c;->g:I

    const v0, 0x5265c00

    .line 28
    sput v0, Lorg/mistergroup/shouldianswer/model/c;->h:I

    const v0, 0xa4cb800

    .line 29
    sput v0, Lorg/mistergroup/shouldianswer/model/c;->i:I

    const v0, 0xf731400

    int-to-long v0, v0

    .line 30
    sput-wide v0, Lorg/mistergroup/shouldianswer/model/c;->j:J

    const v0, 0x48190800

    int-to-long v0, v0

    .line 31
    sput-wide v0, Lorg/mistergroup/shouldianswer/model/c;->k:J

    const v0, 0xa4cb80

    int-to-long v0, v0

    .line 32
    sput-wide v0, Lorg/mistergroup/shouldianswer/model/c;->l:J

    .line 33
    sput-wide v0, Lorg/mistergroup/shouldianswer/model/c;->m:J

    .line 37
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PreferenceManager.getDef\u2026haredPreferences(context)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    .line 62
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c$a;->a:Lorg/mistergroup/shouldianswer/model/c$a;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/model/c;->o:Lkotlin/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 129
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/c;->w()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "#statsCheckedTotal"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/c;->v()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "#statsCheckedCounter"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final B()Z
    .locals 3

    .line 135
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/y;->b()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final C()Z
    .locals 5

    const/4 v0, 0x0

    .line 152
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 153
    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    const-string v2, "role"

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/MyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/app/role/RoleManager;

    const-string v2, "android.app.role.DIALER"

    .line 154
    invoke-virtual {v1, v2}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 153
    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.app.role.RoleManager"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_1
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/y;->h()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "org.mistergroup.shouldianswer"

    .line 157
    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception v1

    .line 160
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    return v0
.end method

.method public final D()Z
    .locals 4

    .line 170
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 171
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    const-string v1, "role"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/role/RoleManager;

    const-string v1, "android.app.role.CALL_SCREENING"

    .line 172
    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 171
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.role.RoleManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 175
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final E()Z
    .locals 1

    .line 181
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/y;->d()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final F()J
    .locals 4

    .line 186
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#communityDatabaseLastUpdateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final G()J
    .locals 4

    .line 190
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#communityDatabaseOutdatedNotification"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final H()J
    .locals 4

    .line 194
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#communityDatabaseLastCheckTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final I()J
    .locals 4

    .line 198
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#communityDatabaseLastUpdatedTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final J()J
    .locals 4

    .line 202
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#communityDatabaseLastSuccessCheckTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final K()J
    .locals 4

    .line 207
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#dataUploadLastCheckTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final L()J
    .locals 4

    .line 211
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#dataUploadedStatsOnlyTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final M()Ljava/lang/String;
    .locals 3

    .line 215
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#debugForcedNumber"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    return-object v0
.end method

.method public final N()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    sget-object v1, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v2, "#favoritesOrders"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 222
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string v1, ","

    .line 223
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/i/g;->b(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 224
    check-cast v1, Ljava/lang/Iterable;

    .line 263
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    invoke-static {v2}, Lkotlin/i/g;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 226
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 227
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 4

    .line 255
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/y;->d()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 257
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v3
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;)J
    .locals 3

    const-string v0, "bannerType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#bannerSnoozeTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 87
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#communityDatabaseMainVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 82
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#last_promo_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v1, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    check-cast p1, Ljava/lang/Iterable;

    .line 265
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    goto :goto_0

    .line 240
    :cond_0
    sget-object p1, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "#favoritesOrders"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;I)V
    .locals 4

    const-string v0, "bannerType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 244
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const v2, 0xea60

    mul-int/2addr p2, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 245
    :goto_0
    sget-object p2, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#bannerSnoozeTime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$a;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 141
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/c;->B()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 142
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSettings.inCallServiceEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v3, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    .line 145
    :cond_1
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/y;->b()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 24
    sget v0, Lorg/mistergroup/shouldianswer/model/c;->d:I

    return v0
.end method

.method public final b(I)V
    .locals 2

    .line 91
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#communityDatabaseSecondaryVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(J)V
    .locals 2

    .line 111
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#invalidPermissionsLastDisplay"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appInstallUtmCampaign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c()I
    .locals 1

    .line 25
    sget v0, Lorg/mistergroup/shouldianswer/model/c;->e:I

    return v0
.end method

.method public final c(I)V
    .locals 2

    .line 95
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#checkedCallsLastUploadedId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c(J)V
    .locals 2

    .line 191
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#communityDatabaseOutdatedNotification"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#debugForcedNumber"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final d()I
    .locals 1

    .line 26
    sget v0, Lorg/mistergroup/shouldianswer/model/c;->f:I

    return v0
.end method

.method public final d(J)V
    .locals 2

    .line 195
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#communityDatabaseLastCheckTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final e()I
    .locals 1

    .line 27
    sget v0, Lorg/mistergroup/shouldianswer/model/c;->g:I

    return v0
.end method

.method public final e(J)V
    .locals 2

    .line 199
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#communityDatabaseLastUpdatedTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final f()I
    .locals 1

    .line 28
    sget v0, Lorg/mistergroup/shouldianswer/model/c;->h:I

    return v0
.end method

.method public final f(J)V
    .locals 2

    .line 203
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#communityDatabaseLastSuccessCheckTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final g()I
    .locals 1

    .line 29
    sget v0, Lorg/mistergroup/shouldianswer/model/c;->i:I

    return v0
.end method

.method public final g(J)V
    .locals 2

    .line 208
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#dataUploadLastCheckTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final h()J
    .locals 2

    .line 30
    sget-wide v0, Lorg/mistergroup/shouldianswer/model/c;->j:J

    return-wide v0
.end method

.method public final h(J)V
    .locals 2

    .line 212
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#dataUploadedStatsOnlyTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final i()J
    .locals 2

    .line 31
    sget-wide v0, Lorg/mistergroup/shouldianswer/model/c;->k:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    .line 32
    sget-wide v0, Lorg/mistergroup/shouldianswer/model/c;->l:J

    return-wide v0
.end method

.method public final k()J
    .locals 2

    .line 33
    sget-wide v0, Lorg/mistergroup/shouldianswer/model/c;->m:J

    return-wide v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 43
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "appId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 45
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ab;->a:Lorg/mistergroup/shouldianswer/utils/ab;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ab;->a()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/c;->a(Ljava/lang/String;)V

    .line 48
    :cond_2
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/c;->o()J

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 3

    .line 54
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "appId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    .line 56
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/c;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lorg/mistergroup/shouldianswer/model/t$a;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->o:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/c;->a:[Lkotlin/g/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/t$a;

    return-object v0
.end method

.method public final o()J
    .locals 6

    .line 64
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "#appInstallTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 67
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-wide v4
.end method

.method public final p()I
    .locals 5

    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/c;->o()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const v2, 0x15180

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 3

    .line 77
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "appInstallUtmCampaign"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    return-object v0
.end method

.method public final r()J
    .locals 4

    .line 81
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#last_promo_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()I
    .locals 3

    .line 86
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#communityDatabaseMainVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 3

    .line 90
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#communityDatabaseSecondaryVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final u()I
    .locals 3

    .line 94
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#checkedCallsLastUploadedId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final v()I
    .locals 3

    .line 104
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#statsCheckedCounter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final w()I
    .locals 3

    .line 107
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#statsCheckedTotal"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final x()J
    .locals 4

    .line 110
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    const-string v1, "#invalidPermissionsLastDisplay"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final y()V
    .locals 3

    .line 116
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#statsBlockedCounter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final z()V
    .locals 3

    .line 125
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->n:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#statsCheckedCounter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
