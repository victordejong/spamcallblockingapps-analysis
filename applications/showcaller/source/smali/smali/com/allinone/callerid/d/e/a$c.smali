.class Lcom/allinone/callerid/d/e/a$c;
.super Landroid/os/AsyncTask;
.source "ActionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/d/e/a$b;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;IZLcom/allinone/callerid/d/e/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/allinone/callerid/d/e/a$c;->a:Lcom/allinone/callerid/d/e/a$b;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/e/a$c;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/allinone/callerid/d/e/a$c;->c:Z

    .line 5
    iput p2, p0, Lcom/allinone/callerid/d/e/a$c;->d:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/d/b/a;->a()Lcom/allinone/callerid/d/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/e/a$c;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/allinone/callerid/d/e/a$c;->c:Z

    iget v2, p0, Lcom/allinone/callerid/d/e/a$c;->d:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/allinone/callerid/d/b/a;->c(Ljava/lang/String;ZI)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/e/a$c;->a:Lcom/allinone/callerid/d/e/a$b;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/allinone/callerid/d/e/a$b;->a()V

    :cond_0
    return-void
.end method

.method protected varargs c([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/a$c;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/a$c;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/a$c;->c([Ljava/lang/String;)V

    return-void
.end method
