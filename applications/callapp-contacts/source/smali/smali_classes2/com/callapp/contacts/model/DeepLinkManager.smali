.class public Lcom/callapp/contacts/model/DeepLinkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEEP_LINK_PATH:Ljava/lang/String; = "/deeplink"

.field private static final DEEP_LINK_SCHEME_CALLAPP_CALLBACK:Ljava/lang/String; = "callapp-callback"

.field private static final PARAMETER_ACTIVITY_NAME:Ljava/lang/String; = "activityName"

.field private static final SCHEME_OPEN_CALLAPP_PLUS:Ljava/lang/String; = "open-callapp-plus"

.field public static final SCHEME_PRIVACY_POLICY:Ljava/lang/String; = "privacypolicy"

.field public static final SCHEME_TERMS_OF_SERVICE:Ljava/lang/String; = "termsosservice"

.field private static final TAG:Ljava/lang/String; = "DeepLinkManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeepLinkClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 95
    sget-object v1, Lcom/callapp/contacts/model/DeepLinkManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot convert "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to class object: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static handleDeepLink(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z
    .locals 5

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "callapp-callback"

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "open-callapp-plus"

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return v1

    :cond_1
    const-string v3, "privacypolicy"

    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v0, 0x7f120548

    new-array v3, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    const-string v3, "termsosservice"

    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1206e8

    new-array v3, v1, [Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_3
    :goto_1
    if-eqz p1, :cond_8

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/deeplink"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 66
    :cond_4
    invoke-static {p0, p1}, Lcom/callapp/contacts/model/DeepLinkManager;->intentToActivityPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 68
    sget-object p0, Lcom/callapp/contacts/model/DeepLinkManager;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return v2

    .line 72
    :cond_5
    invoke-static {v0}, Lcom/callapp/contacts/model/DeepLinkManager;->getDeepLinkClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_6

    .line 74
    sget-object p0, Lcom/callapp/contacts/model/DeepLinkManager;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return v2

    .line 78
    :cond_6
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 79
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "RETURN_TO_PREVIOUS_CLASS"

    .line 80
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    return v1

    .line 62
    :cond_8
    :goto_2
    sget-object p0, Lcom/callapp/contacts/model/DeepLinkManager;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return v2
.end method

.method public static intentToActivityPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "activityName"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
