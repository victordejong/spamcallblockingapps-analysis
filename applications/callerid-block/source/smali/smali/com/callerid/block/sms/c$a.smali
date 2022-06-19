.class Lcom/callerid/block/sms/c$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/sms/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/sms/c$a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/callerid/block/sms/c$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/sms/c$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/callerid/block/d/c;->c()Lcom/callerid/block/d/c;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/sms/c$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/d/c;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/sms/c$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "type_label"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/callerid/block/sms/c$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-virtual {v3, p1, v2}, Lcom/callerid/block/d/d;->f(Lcom/callerid/block/bean/EZSearchContacts;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/callerid/block/sms/c$a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/callerid/block/util/t0;->a0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/callerid/block/sms/c$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-virtual {v3, p1, v2}, Lcom/callerid/block/d/d;->f(Lcom/callerid/block/bean/EZSearchContacts;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-direct {p1}, Lcom/callerid/block/bean/EZSearchContacts;-><init>()V

    iget-object v0, p0, Lcom/callerid/block/sms/c$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setOld_tel_number(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/sms/c$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/bean/EZSearchContacts;->setType_label(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callerid/block/d/d;->c(Lcom/callerid/block/bean/EZSearchContacts;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/callerid/block/sms/c$a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.callerid.block.SMS_INIT_DATA"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/sms/c$a;->c:Landroid/content/Context;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.callerid.block.REPORT_OK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/sms/c$a;->c:Landroid/content/Context;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.callerid.block.RELOAD_DATA_VEST"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/callerid/block/sms/c$a;->c:Landroid/content/Context;

    invoke-static {v0}, Ld/p/a/a;->b(Landroid/content/Context;)Ld/p/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld/p/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method
