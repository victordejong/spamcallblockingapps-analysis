.class Lcom/allinone/callerid/i/a/k/f$a;
.super Landroid/os/AsyncTask;
.source "ReadContactsNameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/k/f;
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
.field private a:Lcom/allinone/callerid/i/a/k/e;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/i/a/k/f$a;->a:Lcom/allinone/callerid/i/a/k/e;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/i/a/k/f$a;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/f$a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/f$a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/k/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/h1;->Z(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/i/a/k/f$a;->d:I

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/f$a;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/k/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/k/f$a;->a:Lcom/allinone/callerid/i/a/k/e;

    iget v1, p0, Lcom/allinone/callerid/i/a/k/f$a;->d:I

    invoke-interface {v0, v1, p1}, Lcom/allinone/callerid/i/a/k/e;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/k/f$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/k/f$a;->b(Ljava/lang/String;)V

    return-void
.end method
