.class Lcom/callerid/block/h/a/f/r$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/f/r;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/h/a/f/q;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/q;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p3, p0, Lcom/callerid/block/h/a/f/r$a;->a:Lcom/callerid/block/h/a/f/q;

    iput-object p2, p0, Lcom/callerid/block/h/a/f/r$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/callerid/block/h/a/f/r$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/h/a/f/r$a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/callerid/block/h/a/f/r$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/f/r$a;->a:Lcom/callerid/block/h/a/f/q;

    invoke-interface {v0, p1}, Lcom/callerid/block/h/a/f/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/r$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/r$a;->b(Ljava/lang/String;)V

    return-void
.end method
