.class Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a(Z)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Lcom/callapp/contacts/util/http/HttpRequest;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/RegistrationRequest;Z)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 78
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ustpnv"

    goto :goto_0

    :cond_0
    const-string v0, "uv"

    .line 82
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/util/http/HttpRequest;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    .line 84
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "myp"

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cvc"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    const-string v1, "ispro"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getClientVersion()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cv"

    invoke-virtual {v0, v3, v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 89
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->b:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "tk"

    invoke-virtual {v0, v3, v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->b(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->b(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "et"

    invoke-virtual {v0, v3, v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->c(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/common/authenticators/config/AuthenticatorsConfiguration$AUTHENTICATORS_TYPES;->numRep:Ljava/lang/String;

    const-string v3, "asi"

    invoke-virtual {v0, v3, v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 98
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getEncodedDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "COULDNOTENCODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    const-string v3, "di"

    invoke-virtual {v1, v3, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 103
    :cond_3
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ao:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 105
    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    const-string v3, "epn"

    invoke-virtual {v1, v3, v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 107
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aF:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->isNotNull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    const-string v1, "ipv"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    goto :goto_2

    .line 110
    :cond_4
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aS:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    const-string v2, "0"

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    const-string v1, "ipr"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 116
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tosavn"

    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/util/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/HttpRequest;

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->d(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$RegistrationEvents;->a(Lcom/callapp/contacts/util/http/HttpRequest;)V

    .line 122
    :cond_7
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->b()V

    .line 123
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c()V

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->c:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->e(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)I

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/http/HttpRequest;->a()Lcom/callapp/contacts/util/http/HttpRequest;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    new-instance v1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$1;-><init>(Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;)V

    .line 1141
    iput-object v1, v0, Lcom/callapp/contacts/util/http/HttpRequest;->a:Lcom/callapp/contacts/event/listener/Listener;

    return-void
.end method

.method private c()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a:Lcom/callapp/contacts/util/http/HttpRequest;

    new-instance v1, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2$2;-><init>(Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;)V

    .line 1146
    iput-object v1, v0, Lcom/callapp/contacts/util/http/HttpRequest;->b:Lcom/callapp/contacts/event/listener/Listener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest$2;->a()V

    return-void
.end method
