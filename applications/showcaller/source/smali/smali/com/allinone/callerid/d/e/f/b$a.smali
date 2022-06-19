.class Lcom/allinone/callerid/d/e/f/b$a;
.super Landroid/os/AsyncTask;
.source "DownloadDbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/f/b;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/d/e/f/a;

.field private b:Lcom/allinone/callerid/callscreen/bean/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/bean/DownloadInfo;Lcom/allinone/callerid/d/e/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/d/e/f/b$a;->b:Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/d/e/f/b$a;->a:Lcom/allinone/callerid/d/e/f/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/d/b/b;->b()Lcom/allinone/callerid/d/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/e/f/b$a;->b:Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/d/b/b;->a(Lcom/allinone/callerid/callscreen/bean/DownloadInfo;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/e/f/b$a;->a:Lcom/allinone/callerid/d/e/f/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/allinone/callerid/d/e/f/b$a;->b:Lcom/allinone/callerid/callscreen/bean/DownloadInfo;

    invoke-interface {v0, p1, v1}, Lcom/allinone/callerid/d/e/f/a;->a(ZLcom/allinone/callerid/callscreen/bean/DownloadInfo;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/f/b$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/f/b$a;->b(Ljava/lang/Boolean;)V

    return-void
.end method
