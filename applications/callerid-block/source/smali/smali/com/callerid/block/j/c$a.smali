.class Lcom/callerid/block/j/c$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/j/c;
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
        "Lcom/callerid/block/bean/ParserIpBean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/j/a;


# direct methods
.method constructor <init>(Lcom/callerid/block/j/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/callerid/block/j/c$a;->a:Lcom/callerid/block/j/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/callerid/block/bean/ParserIpBean;
    .locals 0

    invoke-static {}, Lcom/callerid/block/j/b;->a()Lcom/callerid/block/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callerid/block/j/b;->b()Lcom/callerid/block/bean/ParserIpBean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/callerid/block/bean/ParserIpBean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/j/c$a;->a:Lcom/callerid/block/j/a;

    invoke-interface {v0, p1}, Lcom/callerid/block/j/a;->a(Lcom/callerid/block/bean/ParserIpBean;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/j/c$a;->a([Ljava/lang/String;)Lcom/callerid/block/bean/ParserIpBean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/callerid/block/bean/ParserIpBean;

    invoke-virtual {p0, p1}, Lcom/callerid/block/j/c$a;->b(Lcom/callerid/block/bean/ParserIpBean;)V

    return-void
.end method
