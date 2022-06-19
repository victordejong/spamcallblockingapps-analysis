.class Lcom/allinone/callerid/d/e/e/d$a;
.super Landroid/os/AsyncTask;
.source "DefalutAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/d/e/e/c;

.field private b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Lcom/allinone/callerid/d/e/e/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/d/e/e/d$a;->a:Lcom/allinone/callerid/d/e/e/c;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/e/e/d$a;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/d$a;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/d/b/e;->a(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/d$a;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/d/b/c;->c(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/d/e/e/d$a;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/d/e/e/d$a;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    return-object p1
.end method

.method protected b(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/d$a;->a:Lcom/allinone/callerid/d/e/e/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1, p1}, Lcom/allinone/callerid/d/e/e/c;->a(ZLcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/e/d$a;->a([Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/e/d$a;->b(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    return-void
.end method
