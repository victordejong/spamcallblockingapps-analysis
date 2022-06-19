.class Lcom/allinone/callerid/i/a/i/g$b;
.super Landroid/os/AsyncTask;
.source "QueryCollectInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/i/g;
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
        "Ljava/util/List<",
        "Lcom/allinone/callerid/bean/CollectInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/i/f;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/i/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/i/g$b;->a:Lcom/allinone/callerid/i/a/i/f;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/CollectInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/c;->b()Lcom/allinone/callerid/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/f/c;->d()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/CollectInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/i/g$b;->a:Lcom/allinone/callerid/i/a/i/f;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/i/f;->a(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/g$b;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/i/g$b;->b(Ljava/util/List;)V

    return-void
.end method
