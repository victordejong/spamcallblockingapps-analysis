.class Lcom/allinone/callerid/i/a/e/a$b;
.super Landroid/os/AsyncTask;
.source "AdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/e/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/e/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/e/a$b;->a:Lcom/allinone/callerid/i/a/e/c;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/a;->c()Lcom/allinone/callerid/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/f/a;->b()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/e/a$b;->a:Lcom/allinone/callerid/i/a/e/c;

    invoke-interface {p1}, Lcom/allinone/callerid/i/a/e/c;->close()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/e/a$b;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/e/a$b;->b(Ljava/lang/Void;)V

    return-void
.end method
