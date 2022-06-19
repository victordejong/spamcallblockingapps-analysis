.class Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/SuggestNameActivity;->T(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/callerid/block/mvc/controller/SuggestNameActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;->d:Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/EZSearchContacts;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/callerid/block/d/d;->f(Lcom/callerid/block/bean/EZSearchContacts;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;->d:Lcom/callerid/block/mvc/controller/SuggestNameActivity;

    new-instance v1, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/SuggestNameActivity$d$a;-><init>(Lcom/callerid/block/mvc/controller/SuggestNameActivity$d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
