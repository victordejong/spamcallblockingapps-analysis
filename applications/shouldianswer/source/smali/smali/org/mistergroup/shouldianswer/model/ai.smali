.class public final Lorg/mistergroup/shouldianswer/model/ai;
.super Ljava/lang/Object;
.source "UserSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/ai$a;,
        Lorg/mistergroup/shouldianswer/model/ai$c;,
        Lorg/mistergroup/shouldianswer/model/ai$b;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/ai;

.field private static b:Landroid/content/SharedPreferences;

.field private static final c:Lorg/mistergroup/shouldianswer/model/ai$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lorg/mistergroup/shouldianswer/model/ai;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/ai;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    .line 32
    new-instance v0, Lorg/mistergroup/shouldianswer/model/ai$c;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/ai$c;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ai;->c:Lorg/mistergroup/shouldianswer/model/ai$c;

    .line 41
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->d()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PreferenceManager.getDef\u2026haredPreferences(context)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final N()V
    .locals 3

    .line 35
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/model/ab;->a(J)V

    .line 36
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->c:Lorg/mistergroup/shouldianswer/model/ai$c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai$c;->setChanged()V

    .line 37
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->c:Lorg/mistergroup/shouldianswer/model/ai$c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai$c;->notifyObservers()V

    return-void
.end method


# virtual methods
.method public final A()Lorg/mistergroup/shouldianswer/model/ai$a;
    .locals 3

    .line 226
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai$a;->c:Lorg/mistergroup/shouldianswer/model/ai$a;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai$a;->a:Lorg/mistergroup/shouldianswer/model/ai$a;

    :goto_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai$a;->a()I

    move-result v0

    .line 227
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v2, "activeTheme"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 228
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai$a;->d:Lorg/mistergroup/shouldianswer/model/ai$a$a;

    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/model/ai$a$a;->a(I)Lorg/mistergroup/shouldianswer/model/ai$a;

    move-result-object v0

    return-object v0
.end method

.method public final B()Z
    .locals 3

    .line 247
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "themeDark"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final C()Z
    .locals 3

    .line 251
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "ttsAlerts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final D()Z
    .locals 3

    .line 255
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "ttsIncomingCalls"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 3

    .line 259
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "showSimSelection"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final F()Z
    .locals 3

    .line 263
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "ignoreContactInvisibleFlag2"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final G()Ljava/lang/String;
    .locals 3

    .line 267
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "#emailForTickets"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    return-object v0
.end method

.method public final H()Ljava/lang/String;
    .locals 3

    .line 271
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "#userId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    return-object v0
.end method

.method public final I()Z
    .locals 3

    .line 280
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "sortContactsBySurname"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final J()Z
    .locals 3

    .line 284
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "showRecentContactsInFavorites"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final K()Lorg/mistergroup/shouldianswer/model/ai$b;
    .locals 7

    .line 296
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "blockStyle"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 297
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/ai$b;->values()[Lorg/mistergroup/shouldianswer/model/ai$b;

    move-result-object v2

    .line 377
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 297
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ai$b;->a()I

    move-result v6

    if-ne v6, v0, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    if-eqz v6, :cond_2

    .line 298
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai$b;->c:Lorg/mistergroup/shouldianswer/model/ai$b;

    if-ne v5, v0, :cond_1

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    if-eq v0, v1, :cond_1

    .line 299
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai$b;->a:Lorg/mistergroup/shouldianswer/model/ai$b;

    return-object v0

    :cond_1
    return-object v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 378
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Array contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final L()Ljava/lang/String;
    .locals 8

    .line 310
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 313
    new-instance v3, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 314
    move-object v2, v3

    check-cast v2, Ljava/util/List;

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai$d;->a:Lorg/mistergroup/shouldianswer/model/ai$d;

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v2, v4}, Lkotlin/a/g;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 315
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "userDisplayName"

    .line 316
    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "userPhotoUrl"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "termsAccepted"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "name"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "#"

    invoke-static {v3, v7, v4, v5, v6}, Lkotlin/i/g;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "protectionLevel"

    .line 321
    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/af;->name()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const-string v5, "blockStyle"

    .line 322
    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->K()Lorg/mistergroup/shouldianswer/model/ai$b;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai$b;->name()Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-string v5, "alertsType"

    .line 323
    invoke-static {v3, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/a;->name()Ljava/lang/String;

    move-result-object v4

    .line 325
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-virtual {v5, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stringBuilder.toString()"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final M()Lorg/json/JSONObject;
    .locals 9

    .line 332
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "UserSettings.exportToJSON"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 333
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 335
    sget-object v3, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 336
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 337
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "name"

    .line 338
    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v7, "#"

    invoke-static {v5, v7, v6, v1, v2}, Lkotlin/i/g;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 339
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 341
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "b:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 342
    :cond_1
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 343
    :cond_2
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "l:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 344
    :cond_3
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method

.method public final a(I)V
    .locals 2

    .line 51
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mainPage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockExceptionsContacts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 9

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "UserSettings.importFromJSON"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 354
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 356
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "json.keys()"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 357
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    .line 358
    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 359
    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v7, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xc18

    if-eq v7, v8, :cond_4

    const/16 v8, 0xcf1

    if-eq v7, v8, :cond_3

    const/16 v8, 0xd4e

    if-eq v7, v8, :cond_2

    const/16 v8, 0xe27

    if-eq v7, v8, :cond_1

    goto :goto_0

    :cond_1
    const-string v7, "s:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 362
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    const-string v7, "l:"

    .line 360
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    const-string v7, "i:"

    .line 360
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 361
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    const-string v7, "b:"

    .line 360
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 364
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 358
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 369
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/a;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/a;->ordinal()I

    move-result p1

    const-string v1, "alertsType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/af;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/af;->a()I

    move-result p1

    const-string v1, "protectionLevel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ai$a;)V
    .locals 2

    const-string v0, "appTheme"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai$a;->a()I

    move-result p1

    const-string v1, "activeTheme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ai$b;)V
    .locals 2

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai$b;->a()I

    move-result p1

    const-string v1, "blockStyle"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 47
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "termsAccepted"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a()Z
    .locals 3

    .line 46
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "termsAccepted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 3

    .line 50
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "mainPage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 2

    .line 68
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "communityDatabaseSensitivity"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockExceptionsContactGroups"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 60
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appPromotionEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c()Lorg/mistergroup/shouldianswer/model/af;
    .locals 4

    .line 54
    sget-object v0, Lorg/mistergroup/shouldianswer/model/af;->e:Lorg/mistergroup/shouldianswer/model/af$a;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/af;->a:Lorg/mistergroup/shouldianswer/model/af;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/af;->a()I

    move-result v2

    const-string v3, "protectionLevel"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/af$a;->a(I)Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 2

    .line 192
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inCallScreenTheme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "countryOperatorCache"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 74
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockSkipCallLog"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 201
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alertTopMargin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#emailForTickets"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->h()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 80
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockIncomingLocalNegative"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 81
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 3

    .line 59
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "appPromotionEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Lorg/mistergroup/shouldianswer/model/a;
    .locals 4

    .line 63
    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->e:Lorg/mistergroup/shouldianswer/model/a$a;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    sget-object v2, Lorg/mistergroup/shouldianswer/model/a;->a:Lorg/mistergroup/shouldianswer/model/a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/a;->ordinal()I

    move-result v2

    const-string v3, "alertsType"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/a$a;->a(I)Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "#userId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final e(Z)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->i()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 89
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockIncomingCommunityNegative"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final f()I
    .locals 3

    .line 67
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "communityDatabaseSensitivity"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final f(Z)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->j()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 98
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockIncomingNotInContacts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->k()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 108
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockIncomingHidden"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 73
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockSkipCallLog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final h(Z)V
    .locals 2

    .line 117
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->l()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 118
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockIncomingForeign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 3

    .line 77
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockIncomingLocalNegative"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i(Z)V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->m()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 127
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockOutgoingLocalNegative"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final i()Z
    .locals 3

    .line 86
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockIncomingCommunityNegative"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final j(Z)V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->n()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 136
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockOutgoingCommunityNegative"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 3

    .line 95
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockIncomingNotInContacts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final k(Z)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->o()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 145
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockOutgoingNotInContacts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 3

    .line 105
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockIncomingHidden"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final l(Z)V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->p()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 154
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockOutgoingForeign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final l()Z
    .locals 3

    .line 115
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockIncomingForeign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m(Z)V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/ai;->q()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 163
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockOutgoingPremium"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/ai;->N()V

    :cond_0
    return-void
.end method

.method public final m()Z
    .locals 3

    .line 124
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockOutgoingLocalNegative"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final n(Z)V
    .locals 2

    .line 170
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "blockShowSystemNotification"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final n()Z
    .locals 3

    .line 133
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockOutgoingCommunityNegative"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final o(Z)V
    .locals 2

    .line 196
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dontUseIncallPopup"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final o()Z
    .locals 3

    .line 142
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockOutgoingNotInContacts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final p(Z)V
    .locals 2

    .line 205
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "alertsWantShowForUnknownRating"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final p()Z
    .locals 3

    .line 151
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockOutgoingForeign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final q(Z)V
    .locals 2

    .line 209
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showAfterCallNumberInfo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final q()Z
    .locals 3

    .line 160
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockOutgoingPremium"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final r(Z)V
    .locals 2

    .line 217
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "issueNeedAppUpdate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final r()Z
    .locals 3

    .line 169
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockShowSystemNotification"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    .line 173
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockExceptionsContacts"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    return-object v0
.end method

.method public final s(Z)V
    .locals 2

    .line 248
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "themeDark"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final t()Ljava/lang/String;
    .locals 3

    .line 182
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "blockExceptionsContactGroups"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    return-object v0
.end method

.method public final t(Z)V
    .locals 2

    .line 252
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ttsAlerts"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final u()I
    .locals 3

    .line 191
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "inCallScreenTheme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final u(Z)V
    .locals 2

    .line 256
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ttsIncomingCalls"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final v(Z)V
    .locals 2

    .line 260
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showSimSelection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final v()Z
    .locals 3

    .line 195
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "dontUseIncallPopup"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final w()I
    .locals 3

    .line 200
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "alertTopMargin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final w(Z)V
    .locals 2

    .line 264
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignoreContactInvisibleFlag2"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final x(Z)V
    .locals 2

    .line 281
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sortContactsBySurname"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final x()Z
    .locals 3

    .line 204
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "alertsWantShowForUnknownRating"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final y(Z)V
    .locals 2

    .line 285
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showRecentContactsInFavorites"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final y()Z
    .locals 3

    .line 208
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "showAfterCallNumberInfo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 3

    .line 221
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->b:Landroid/content/SharedPreferences;

    const-string v1, "countryOperatorCache"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    return-object v0
.end method
