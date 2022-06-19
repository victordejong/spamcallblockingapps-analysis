.class Lcom/allinone/callerid/i/a/f/b$e;
.super Landroid/os/AsyncTask;
.source "BlockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
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
.field private a:Lcom/allinone/callerid/i/a/a;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/allinone/callerid/i/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/i/a/f/b$e;->a:Lcom/allinone/callerid/i/a/a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/f/b$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    .line 1
    new-instance p1, Lcom/allinone/callerid/util/m;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/allinone/callerid/util/m;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/f/b$e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/m;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/f/b$e;->a:Lcom/allinone/callerid/i/a/a;

    invoke-interface {p1}, Lcom/allinone/callerid/i/a/a;->a()V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/f/b$e;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/f/b$e;->b(Ljava/lang/Void;)V

    return-void
.end method
