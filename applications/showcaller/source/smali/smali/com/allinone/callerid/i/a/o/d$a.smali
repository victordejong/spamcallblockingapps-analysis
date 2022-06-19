.class Lcom/allinone/callerid/i/a/o/d$a;
.super Landroid/os/AsyncTask;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/o/d;
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
        "Lcom/allinone/callerid/bean/ParserIpBean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/o/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/o/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/o/d$a;->a:Lcom/allinone/callerid/i/a/o/b;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/allinone/callerid/bean/ParserIpBean;
    .locals 0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/i/a/o/c;->a()Lcom/allinone/callerid/i/a/o/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/i/a/o/c;->b()Lcom/allinone/callerid/bean/ParserIpBean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/allinone/callerid/bean/ParserIpBean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/o/d$a;->a:Lcom/allinone/callerid/i/a/o/b;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/o/b;->a(Lcom/allinone/callerid/bean/ParserIpBean;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/o/d$a;->a([Ljava/lang/String;)Lcom/allinone/callerid/bean/ParserIpBean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/bean/ParserIpBean;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/o/d$a;->b(Lcom/allinone/callerid/bean/ParserIpBean;)V

    return-void
.end method
