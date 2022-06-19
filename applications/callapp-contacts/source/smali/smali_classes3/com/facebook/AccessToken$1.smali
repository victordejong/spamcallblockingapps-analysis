.class final Lcom/facebook/AccessToken$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/ae$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessToken;->createFromNativeLinkingIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/AccessToken$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/AccessToken$a;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/facebook/AccessToken$a;Ljava/lang/String;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/facebook/AccessToken$1;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/facebook/AccessToken$1;->b:Lcom/facebook/AccessToken$a;

    iput-object p3, p0, Lcom/facebook/AccessToken$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/FacebookException;)V
    .locals 0

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    const-string v0, "id"

    .line 424
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 425
    iget-object v0, p0, Lcom/facebook/AccessToken$1;->a:Landroid/os/Bundle;

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 426
    iget-object v0, p0, Lcom/facebook/AccessToken$1;->a:Landroid/os/Bundle;

    sget-object v1, Lcom/facebook/c;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/c;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcom/facebook/AccessToken$1;->c:Ljava/lang/String;

    .line 427
    invoke-static {p1, v0, v1, v2, v3}, Lcom/facebook/AccessToken;->access$000(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/c;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 434
    :catch_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Unable to generate access token due to missing user id"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    return-void
.end method
