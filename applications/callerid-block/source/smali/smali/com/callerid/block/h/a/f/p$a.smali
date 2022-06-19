.class Lcom/callerid/block/h/a/f/p$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/f/p;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/h/a/f/o;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/h/a/f/o;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p3, p0, Lcom/callerid/block/h/a/f/p$a;->a:Lcom/callerid/block/h/a/f/o;

    iput-object p2, p0, Lcom/callerid/block/h/a/f/p$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/callerid/block/h/a/f/p$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    iget-object p1, p0, Lcom/callerid/block/h/a/f/p$a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/callerid/block/h/a/f/p$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callerid/block/util/t0;->I(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Long;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/f/p$a;->a:Lcom/callerid/block/h/a/f/o;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/callerid/block/h/a/f/o;->a(J)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/p$a;->a([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/p$a;->b(Ljava/lang/Long;)V

    return-void
.end method
