.class public Lcom/verizon/ads/support/utils/ActivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/verizon/ads/support/utils/ActivityUtils;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/utils/ActivityUtils;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActivityContext(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 90
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 95
    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 97
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    .line 99
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    return v2

    :cond_2
    return v0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 38
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 48
    sget-object p1, Lcom/verizon/ads/support/utils/ActivityUtils;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to start activity for intent"

    invoke-virtual {p1, v0, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static startActivityFromUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object p0, Lcom/verizon/ads/support/utils/ActivityUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to start activity for null url"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 73
    invoke-static {p0, v0}, Lcom/verizon/ads/support/utils/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static startCustomTabActivityFromUrl(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    sget-object p0, Lcom/verizon/ads/support/utils/ActivityUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to start custom tab activity for null or empty url"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    if-nez p0, :cond_1

    .line 124
    sget-object p0, Lcom/verizon/ads/support/utils/ActivityUtils;->a:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to start custom tab activity for null context"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v1

    .line 131
    :cond_1
    :try_start_0
    new-instance v0, Landroidx/browser/customtabs/d$a;

    invoke-direct {v0}, Landroidx/browser/customtabs/d$a;-><init>()V

    .line 133
    invoke-virtual {v0}, Landroidx/browser/customtabs/d$a;->a()Landroidx/browser/customtabs/d;

    move-result-object v0

    .line 135
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_2

    .line 136
    iget-object v2, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/browser/customtabs/d;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 142
    sget-object p1, Lcom/verizon/ads/support/utils/ActivityUtils;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Error launching custom tab activity."

    invoke-virtual {p1, v0, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method
