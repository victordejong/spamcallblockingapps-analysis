.class final Lcom/facebook/g$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/g;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/g$b;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/facebook/g$b;Landroid/content/Context;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/facebook/g$7;->a:Lcom/facebook/g$b;

    iput-object p2, p0, Lcom/facebook/g$7;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1388
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object v0

    .line 2099
    iget-object v1, v0, Lcom/facebook/b;->a:Lcom/facebook/a;

    invoke-virtual {v1}, Lcom/facebook/a;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2102
    invoke-virtual {v0, v1, v2}, Lcom/facebook/b;->a(Lcom/facebook/AccessToken;Z)V

    .line 1389
    :cond_0
    invoke-static {}, Lcom/facebook/o;->a()Lcom/facebook/o;

    move-result-object v0

    .line 3069
    iget-object v1, v0, Lcom/facebook/o;->a:Lcom/facebook/n;

    invoke-virtual {v1}, Lcom/facebook/n;->a()Lcom/facebook/Profile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3072
    invoke-virtual {v0, v1, v2}, Lcom/facebook/o;->a(Lcom/facebook/Profile;Z)V

    .line 1390
    :cond_1
    invoke-static {}, Lcom/facebook/AccessToken;->isCurrentAccessTokenActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1391
    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1394
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 1401
    :cond_2
    invoke-static {}, Lcom/facebook/g;->u()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/facebook/g;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/appevents/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1403
    invoke-static {}, Lcom/facebook/u;->a()V

    .line 1406
    iget-object v0, p0, Lcom/facebook/g$7;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/g;->a(Landroid/content/Context;)Lcom/facebook/appevents/g;

    move-result-object v0

    .line 3486
    iget-object v0, v0, Lcom/facebook/appevents/g;->a:Lcom/facebook/appevents/h;

    invoke-virtual {v0}, Lcom/facebook/appevents/h;->b()V

    const/4 v0, 0x0

    return-object v0
.end method
