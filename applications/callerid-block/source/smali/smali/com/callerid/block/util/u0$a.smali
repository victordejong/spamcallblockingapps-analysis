.class Lcom/callerid/block/util/u0$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/util/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/util/u0$a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/callerid/block/util/u0$a;->b:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string p1, ""

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/util/u0$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/util/u0$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "wbb"

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "whatsapp_contacts:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/d/e;->a()Lcom/callerid/block/d/e;

    move-result-object v1

    iget-object v3, p0, Lcom/callerid/block/util/u0$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/callerid/block/d/e;->b(Ljava/lang/String;)Lcom/callerid/block/bean/WhatsAppBean;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "whatsAppBean:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/callerid/block/bean/WhatsAppBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/callerid/block/bean/WhatsAppBean;->setLastcalltime(J)V

    iget v0, p0, Lcom/callerid/block/util/u0$a;->b:I

    invoke-virtual {v1, v0}, Lcom/callerid/block/bean/WhatsAppBean;->setType(I)V

    invoke-static {}, Lcom/callerid/block/d/e;->a()Lcom/callerid/block/d/e;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lastcalltime"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/callerid/block/d/e;->e(Lcom/callerid/block/bean/WhatsAppBean;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/callerid/block/bean/WhatsAppBean;

    invoke-direct {v1}, Lcom/callerid/block/bean/WhatsAppBean;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/callerid/block/bean/WhatsAppBean;->setLastcalltime(J)V

    iget v2, p0, Lcom/callerid/block/util/u0$a;->b:I

    invoke-virtual {v1, v2}, Lcom/callerid/block/bean/WhatsAppBean;->setType(I)V

    iget-object v2, p0, Lcom/callerid/block/util/u0$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/callerid/block/bean/WhatsAppBean;->setNumber(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callerid/block/bean/WhatsAppBean;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/d/e;->a()Lcom/callerid/block/d/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/callerid/block/d/e;->d(Lcom/callerid/block/bean/WhatsAppBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->h0(Landroid/content/Context;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/util/u0$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/util/u0$a;->b(Ljava/lang/String;)V

    return-void
.end method
