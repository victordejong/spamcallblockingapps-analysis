.class public final Lcom/callapp/contacts/api/helper/backup/DropBoxLoginActivity;
.super Lcom/dropbox/core/android/AuthActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0014\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/DropBoxLoginActivity;",
        "Lcom/dropbox/core/android/AuthActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/dropbox/core/android/AuthActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 14
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1202d0

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1326
    invoke-static/range {v2 .. v12}, Lcom/dropbox/core/android/AuthActivity;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/o;Lcom/dropbox/core/h;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/m;)V

    .line 1330
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/core/android/AuthActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-super {p0, p1}, Lcom/dropbox/core/android/AuthActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    .line 1325
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'appKey\' can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 9

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1}, Lcom/dropbox/core/android/AuthActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 20
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->c:Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;->get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object p1

    .line 2249
    sget-object v0, Lcom/dropbox/core/android/AuthActivity;->a:Landroid/content/Intent;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v5, v1

    goto :goto_2

    :cond_1
    const-string v2, "ACCESS_TOKEN"

    .line 2255
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACCESS_SECRET"

    .line 2256
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UID"

    .line 2257
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_0

    const-string v5, ""

    .line 2259
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v4, :cond_0

    .line 2260
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "CONSUMER_KEY"

    .line 2264
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "REFRESH_TOKEN"

    .line 2265
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const-string v7, "EXPIRES_AT"

    .line 2266
    invoke-virtual {v0, v7, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_3

    .line 2267
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 2270
    :goto_1
    new-instance v5, Lcom/dropbox/core/oauth/a;

    invoke-direct {v5, v3, v0, v4, v2}, Lcom/dropbox/core/oauth/a;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    .line 3111
    :cond_4
    iget-object v1, v5, Lcom/dropbox/core/oauth/a;->a:Ljava/lang/String;

    .line 20
    :goto_3
    invoke-virtual {p1, v1}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->a(Ljava/lang/String;)V

    return-void
.end method
