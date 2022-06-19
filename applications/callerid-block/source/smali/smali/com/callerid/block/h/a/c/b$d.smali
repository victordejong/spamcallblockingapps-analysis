.class Lcom/callerid/block/h/a/c/b$d;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/h/a/c/a;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/callerid/block/h/a/c/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/h/a/c/b$d;->a:Lcom/callerid/block/h/a/c/a;

    iput-object p1, p0, Lcom/callerid/block/h/a/c/b$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    new-instance p1, Lcom/callerid/block/util/i;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/callerid/block/util/i;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/c/b$d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/i;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/c/b$d;->a:Lcom/callerid/block/h/a/c/a;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/callerid/block/h/a/c/a;->a(Z)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/c/b$d;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/c/b$d;->b(Ljava/lang/Boolean;)V

    return-void
.end method
