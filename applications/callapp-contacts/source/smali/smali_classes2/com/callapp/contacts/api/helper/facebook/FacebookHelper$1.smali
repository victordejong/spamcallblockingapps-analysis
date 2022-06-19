.class Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;Landroid/app/Activity;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 265
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->m()Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;->a:Landroid/app/Activity;

    instance-of v1, v1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "user_posts"

    .line 267
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    invoke-static {}, Lcom/facebook/login/g;->a()Lcom/facebook/login/g;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v2}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->a(Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;)Lcom/facebook/e;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    .line 1171
    instance-of v4, v2, Lcom/facebook/internal/c;

    if-eqz v4, :cond_3

    .line 1175
    check-cast v2, Lcom/facebook/internal/c;

    sget-object v4, Lcom/facebook/internal/c$c;->Login:Lcom/facebook/internal/c$c;

    .line 1177
    invoke-virtual {v4}, Lcom/facebook/internal/c$c;->toRequestCode()I

    move-result v4

    new-instance v5, Lcom/facebook/login/g$1;

    invoke-direct {v5, v1, v3}, Lcom/facebook/login/g$1;-><init>(Lcom/facebook/login/g;Lcom/facebook/f;)V

    const-string v1, "callback"

    .line 1176
    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2035
    iget-object v1, v2, Lcom/facebook/internal/c;->a:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-static {}, Lcom/facebook/login/g;->a()Lcom/facebook/login/g;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;->a:Landroid/app/Activity;

    .line 2396
    invoke-static {v0}, Lcom/facebook/login/g;->a(Ljava/util/Collection;)V

    .line 2567
    new-instance v10, Lcom/facebook/login/LoginClient$Request;

    iget-object v4, v1, Lcom/facebook/login/g;->a:Lcom/facebook/login/d;

    if-eqz v0, :cond_1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2570
    :goto_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, v1, Lcom/facebook/login/g;->b:Lcom/facebook/login/b;

    iget-object v7, v1, Lcom/facebook/login/g;->c:Ljava/lang/String;

    .line 2574
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v8

    .line 2575
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/facebook/login/LoginClient$Request;-><init>(Lcom/facebook/login/d;Ljava/util/Set;Lcom/facebook/login/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    invoke-virtual {v10, v0}, Lcom/facebook/login/LoginClient$Request;->setRerequest(Z)V

    .line 2515
    new-instance v0, Lcom/facebook/login/g$a;

    invoke-direct {v0, v2}, Lcom/facebook/login/g$a;-><init>(Landroid/app/Activity;)V

    .line 2593
    invoke-interface {v0}, Lcom/facebook/login/i;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v10}, Lcom/facebook/login/g;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    .line 2596
    sget-object v2, Lcom/facebook/internal/c$c;->Login:Lcom/facebook/internal/c$c;

    .line 2597
    invoke-virtual {v2}, Lcom/facebook/internal/c$c;->toRequestCode()I

    move-result v2

    new-instance v3, Lcom/facebook/login/g$3;

    invoke-direct {v3, v1}, Lcom/facebook/login/g$3;-><init>(Lcom/facebook/login/g;)V

    .line 2596
    invoke-static {v2, v3}, Lcom/facebook/internal/c;->a(ILcom/facebook/internal/c$a;)V

    .line 2605
    invoke-static {v0, v10}, Lcom/facebook/login/g;->a(Lcom/facebook/login/i;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 2608
    :cond_2
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 2614
    invoke-interface {v0}, Lcom/facebook/login/i;->a()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/facebook/login/LoginClient$Result$a;->ERROR:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v1

    move-object v8, v10

    .line 2613
    invoke-static/range {v3 .. v8}, Lcom/facebook/login/g;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    .line 2620
    throw v1

    .line 1172
    :cond_3
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 272
    iget-object v1, p0, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper$1;->b:Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->b()V

    .line 273
    const-class v1, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void
.end method
