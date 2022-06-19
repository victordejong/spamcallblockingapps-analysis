.class public Lcom/callapp/contacts/activity/setup/RegistrationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Runnable;

.field private b:Ljava/lang/String;

.field private c:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

.field private d:I

.field private final e:Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d:I

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->b:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->c:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    .line 33
    iput-object p3, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->e:Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/util/http/HttpRequest;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->b(Lcom/callapp/contacts/util/http/HttpRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->b:Ljava/lang/String;

    return-object p0
.end method

.method private static b(Lcom/callapp/contacts/util/http/HttpRequest;)Ljava/lang/String;
    .locals 2

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequest;->getResponse()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/util/servermessage/RegisterClientUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-static {p0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-class v0, Lcom/callapp/common/model/json/JSONRegistrationResponse;

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/common/model/json/JSONRegistrationResponse;

    if-eqz p0, :cond_0

    .line 183
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONRegistrationResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0}, Lcom/callapp/common/model/json/JSONRegistrationResponse;->getUserId()Ljava/lang/String;

    move-result-object p0

    .line 185
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b()V

    const-string v0, "+"

    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 189
    sget-object p0, Lcom/callapp/contacts/manager/preferences/Prefs;->aT:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "Empty code"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 196
    const-class v0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v0, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->c:Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->e:Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)I
    .locals 2

    .line 21
    iget v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d:I

    return v0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d:I

    return p0
.end method


# virtual methods
.method public final a(Z)Ljava/lang/Runnable;
    .locals 1

    .line 68
    new-instance v0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;-><init>(Lcom/callapp/contacts/activity/setup/RegistrationRequest;Z)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 37
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Registration"

    const-string v2, "Sending registration request"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a(Z)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a:Ljava/lang/Runnable;

    .line 39
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 49
    new-instance v0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$1;-><init>(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)V

    .line 54
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
