.class Lcom/allinone/callerid/i/a/j/a$b;
.super Landroid/os/AsyncTask;
.source "CommentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/j/a;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/i/a/j/c;

.field private b:Lcom/allinone/callerid/bean/CommentContent;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/bean/CommentContent;Lcom/allinone/callerid/i/a/j/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/i/a/j/a$b;->a:Lcom/allinone/callerid/i/a/j/c;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/j/a$b;->b:Lcom/allinone/callerid/bean/CommentContent;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/i/a/j/a$b;->b:Lcom/allinone/callerid/bean/CommentContent;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CommentContent;->getType_label()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/i/a/j/a$b;->b:Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CommentContent;->getType_label()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/f/d;->a()Lcom/allinone/callerid/f/d;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/j/a$b;->b:Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/d;->c(Lcom/allinone/callerid/bean/CommentContent;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/j/a$b;->b:Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CommentContent;->getContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/i/a/j/a$b;->b:Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/CommentContent;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {}, Lcom/allinone/callerid/f/d;->a()Lcom/allinone/callerid/f/d;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/j/a$b;->b:Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/d;->c(Lcom/allinone/callerid/bean/CommentContent;)V

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/f/e;->d()Lcom/allinone/callerid/f/e;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/j/a$b;->b:Lcom/allinone/callerid/bean/CommentContent;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/CommentContent;->getTel_number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/f/e;->k(Ljava/lang/String;)V

    const-string p1, "ok"

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/j/a$b;->a:Lcom/allinone/callerid/i/a/j/c;

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/j/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/j/a$b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/j/a$b;->b(Ljava/lang/String;)V

    return-void
.end method
