.class Lcom/google/firebase/crashlytics/internal/settings/b;
.super Ljava/lang/Object;
.source "DefaultSettingsJsonTransform.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/settings/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/a;
    .locals 7

    const-string v0, "status"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "url"

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "reports_url"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ndk_reports_url"

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "update_required"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 6
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/h/a;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/settings/h/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/b;
    .locals 2

    const-string v0, "collect_reports"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/h/b;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/settings/h/b;-><init>(Z)V

    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/c;
    .locals 2

    const-string v0, "max_custom_exception_events"

    const/16 v1, 0x8

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/internal/settings/h/c;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/crashlytics/internal/settings/h/c;-><init>(II)V

    return-object v0
.end method

.method static e(Lcom/google/firebase/crashlytics/internal/common/p;)Lcom/google/firebase/crashlytics/internal/settings/h/d;
    .locals 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/b;->d(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/c;

    move-result-object v5

    .line 3
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/b;->c(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/b;

    move-result-object v6

    const-wide/16 v1, 0xe10

    .line 4
    invoke-static {p0, v1, v2, v0}, Lcom/google/firebase/crashlytics/internal/settings/b;->f(Lcom/google/firebase/crashlytics/internal/common/p;JLorg/json/JSONObject;)J

    move-result-wide v2

    .line 5
    new-instance p0, Lcom/google/firebase/crashlytics/internal/settings/h/e;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe10

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/crashlytics/internal/settings/h/e;-><init>(JLcom/google/firebase/crashlytics/internal/settings/h/a;Lcom/google/firebase/crashlytics/internal/settings/h/c;Lcom/google/firebase/crashlytics/internal/settings/h/b;II)V

    return-object p0
.end method

.method private static f(Lcom/google/firebase/crashlytics/internal/common/p;JLorg/json/JSONObject;)J
    .locals 4

    const-string v0, "expires_at"

    .line 1
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/internal/common/p;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long p1, p1, v2

    add-long p0, v0, p1

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/internal/common/p;Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/e;
    .locals 10

    const-string v0, "settings_version"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "cache_duration"

    const/16 v1, 0xe10

    .line 2
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "app"

    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/b;->b(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/a;

    move-result-object v5

    const-string v0, "session"

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/b;->d(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/c;

    move-result-object v6

    const-string v0, "features"

    .line 5
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/settings/b;->c(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/internal/settings/h/b;

    move-result-object v7

    int-to-long v0, v9

    .line 6
    invoke-static {p1, v0, v1, p2}, Lcom/google/firebase/crashlytics/internal/settings/b;->f(Lcom/google/firebase/crashlytics/internal/common/p;JLorg/json/JSONObject;)J

    move-result-wide v3

    .line 7
    new-instance p1, Lcom/google/firebase/crashlytics/internal/settings/h/e;

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/settings/h/e;-><init>(JLcom/google/firebase/crashlytics/internal/settings/h/a;Lcom/google/firebase/crashlytics/internal/settings/h/c;Lcom/google/firebase/crashlytics/internal/settings/h/b;II)V

    return-object p1
.end method
