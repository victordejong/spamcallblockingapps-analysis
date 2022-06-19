.class Lcom/allinone/callerid/i/a/l/b$a;
.super Landroid/os/AsyncTask;
.source "DisturbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/l/b;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/allinone/callerid/i/a/l/a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/allinone/callerid/i/a/l/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/l/b$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/i/a/l/b$a;->b:Lcom/allinone/callerid/i/a/l/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/l/b$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/allinone/callerid/i/a/l/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/l/b$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/allinone/callerid/i/a/l/b;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Lcom/allinone/callerid/f/j/b;->a()Lcom/allinone/callerid/f/j/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/f/j/b;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->a()I

    move-result p1

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->b()I

    move-result v0

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->d()I

    move-result v1

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->e()I

    move-result v2

    .line 10
    invoke-static {p1, v0, v1, v2}, Lcom/allinone/callerid/util/i;->q(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 12
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 13
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 14
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 15
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 16
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 17
    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/l/b$a;->b:Lcom/allinone/callerid/i/a/l/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/allinone/callerid/i/a/l/a;->a(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/l/b$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/l/b$a;->b(Ljava/lang/Boolean;)V

    return-void
.end method
