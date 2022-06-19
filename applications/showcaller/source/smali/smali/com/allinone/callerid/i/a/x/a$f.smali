.class Lcom/allinone/callerid/i/a/x/a$f;
.super Landroid/os/AsyncTask;
.source "EZSearchNumberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/x/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/x/a$f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/h;->b()Lcom/allinone/callerid/f/h;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/x/a$f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/h;->d(Ljava/lang/String;)Lcom/allinone/callerid/bean/SearchHis;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/allinone/callerid/bean/SearchHis;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/SearchHis;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/i/a/x/a$f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/SearchHis;->setNumber(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/f/h;->b()Lcom/allinone/callerid/f/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/f/h;->e(Lcom/allinone/callerid/bean/SearchHis;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/x/a$f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/x/a$f;->b(Ljava/lang/Void;)V

    return-void
.end method
