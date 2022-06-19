.class Lcom/callerid/block/h/a/h/e$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/h/e;
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
        "Lcom/callerid/block/bean/EZSearchContacts;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/h/a/h/d;

.field private b:Lcom/callerid/block/bean/EZSearchContacts;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/callerid/block/h/a/h/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/h/a/h/e$a;->a:Lcom/callerid/block/h/a/h/d;

    iput-object p1, p0, Lcom/callerid/block/h/a/h/e$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/h/a/h/e$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/d/d;->d(Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/h/a/h/e$a;->b:Lcom/callerid/block/bean/EZSearchContacts;

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "searchNumber"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contacts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/h/a/h/e$a;->b:Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {v1}, Lcom/callerid/block/bean/EZSearchContacts;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/callerid/block/h/a/h/e$a;->b:Lcom/callerid/block/bean/EZSearchContacts;

    return-object p1
.end method

.method protected b(Lcom/callerid/block/bean/EZSearchContacts;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/h/e$a;->a:Lcom/callerid/block/h/a/h/d;

    invoke-interface {v0, p1}, Lcom/callerid/block/h/a/h/d;->a(Lcom/callerid/block/bean/EZSearchContacts;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/h/e$a;->a([Ljava/lang/String;)Lcom/callerid/block/bean/EZSearchContacts;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/callerid/block/bean/EZSearchContacts;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/h/e$a;->b(Lcom/callerid/block/bean/EZSearchContacts;)V

    return-void
.end method
