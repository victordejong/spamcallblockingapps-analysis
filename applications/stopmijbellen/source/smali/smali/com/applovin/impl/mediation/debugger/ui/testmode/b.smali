.class public Lcom/applovin/impl/mediation/debugger/ui/testmode/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/l;

    sget-object v0, Lcom/applovin/impl/sdk/c/d;->B:Lcom/applovin/impl/sdk/c/d;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/sdk/c/d;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c:Z

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/c/d;->C:Lcom/applovin/impl/sdk/c/d;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b:Z

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->b(Lcom/applovin/impl/sdk/c/d;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->K()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object p1

    const-string v0, "test_mode_settings"

    invoke-virtual {p1, p0, v0}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "test_mode_idfas"

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->U()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->k()Lcom/applovin/impl/sdk/n$a;

    move-result-object v0

    iget-object v0, v0, Lcom/applovin/impl/sdk/n$a;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->containsCaseInsensitiveString(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->U()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->g()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->U()Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->B:Lcom/applovin/impl/sdk/c/d;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->C:Lcom/applovin/impl/sdk/c/d;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    return-void
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    const-string v0, "b"

    return-object v0
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test_mode_settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "force_ad_network"

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c:Z

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->d:Ljava/lang/String;

    :cond_0
    const-string v0, "test_mode_network_next_session"

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->d()V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
