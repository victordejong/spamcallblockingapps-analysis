.class Lcom/allinone/callerid/util/y$a;
.super Ljava/lang/Object;
.source "InitApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/y;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/allinone/callerid/util/y;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/y;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/y$a;->e:Lcom/allinone/callerid/util/y;

    iput-object p2, p0, Lcom/allinone/callerid/util/y$a;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/util/y$a;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/util/y$a;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/allinone/callerid/util/h1;->W(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "is_android"

    const-string v2, "1"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://info.show-caller.com/gonglue_xilie/ping.php"

    .line 5
    invoke-static {v1, v0}, Lcom/allinone/callerid/j/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "tony"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    .line 9
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "in_control"

    .line 10
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 11
    new-instance v0, Lcom/allinone/callerid/model/a;

    invoke-direct {v0}, Lcom/allinone/callerid/model/a;-><init>()V

    const-string v2, "update_url"

    .line 12
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Lcom/allinone/callerid/model/a;->d(Ljava/lang/String;)V

    const-string v2, "min_version_in_maintenance"

    .line 14
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/model/a;->c(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/util/y$a;->e:Lcom/allinone/callerid/util/y;

    invoke-static {v1}, Lcom/allinone/callerid/util/y;->a(Lcom/allinone/callerid/util/y;)Lcom/allinone/callerid/util/y$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/allinone/callerid/util/y$a;->e:Lcom/allinone/callerid/util/y;

    invoke-static {v1}, Lcom/allinone/callerid/util/y;->a(Lcom/allinone/callerid/util/y;)Lcom/allinone/callerid/util/y$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/allinone/callerid/util/y$b;->a(Lcom/allinone/callerid/model/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
