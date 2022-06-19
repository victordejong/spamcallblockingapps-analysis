.class Lcom/allinone/callerid/d/e/e/d$b;
.super Landroid/os/AsyncTask;
.source "DefalutAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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


# direct methods
.method public constructor <init>(Lcom/allinone/callerid/d/e/e/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/d/e/e/d$b;->a:Lcom/allinone/callerid/d/e/e/c;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/d/b/e;->f()Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/d$b;->a:Lcom/allinone/callerid/d/e/e/c;

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

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/e/d$b;->a([Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/e/d$b;->b(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    return-void
.end method
