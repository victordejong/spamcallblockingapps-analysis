.class Lcom/allinone/callerid/i/a/k/h$a;
.super Landroid/os/AsyncTask;
.source "ReadMissedContentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/k/h;
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
.field private a:Lcom/allinone/callerid/i/a/k/g;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/allinone/callerid/i/a/k/h$a;->a:Lcom/allinone/callerid/i/a/k/g;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/i/a/k/h$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/allinone/callerid/i/a/k/h$a;->c:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->e:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/k/h$a;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/allinone/callerid/util/h1;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    const v1, 0x7f1001e2

    const-string v2, " "

    const-string v3, ""

    const/4 v4, 0x1

    if-nez p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    .line 6
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->R()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1001b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->e:Ljava/lang/String;

    goto/16 :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->z0(Landroid/content/Context;)I

    move-result p1

    if-le p1, v4, :cond_2

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->z0(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->e:Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->e:Ljava/lang/String;

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->z0(Landroid/content/Context;)I

    move-result p1

    if-le p1, v4, :cond_4

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->z0(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->e:Ljava/lang/String;

    goto :goto_1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->e:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->v1(Z)V

    .line 17
    new-instance v0, Lcom/allinone/callerid/util/m;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/allinone/callerid/util/m;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/allinone/callerid/util/a1;->t()Z

    move-result v1

    const v2, 0x7f100081

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/allinone/callerid/i/a/k/h$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/m;->j(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->e:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    goto :goto_2

    .line 22
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    .line 23
    :goto_2
    iput-boolean v4, p0, Lcom/allinone/callerid/i/a/k/h$a;->f:Z

    goto :goto_4

    .line 24
    :cond_6
    invoke-static {}, Lcom/allinone/callerid/util/a1;->F()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-static {p1}, Lcom/allinone/callerid/util/a1;->j1(Z)V

    .line 26
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->e:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 28
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    goto :goto_3

    .line 29
    :cond_7
    iget-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    .line 30
    :goto_3
    iput-boolean v4, p0, Lcom/allinone/callerid/i/a/k/h$a;->f:Z

    .line 31
    :cond_8
    :goto_4
    invoke-static {}, Lcom/allinone/callerid/util/a1;->u2()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->g:Z

    .line 32
    invoke-static {}, Lcom/allinone/callerid/util/a1;->l2()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/allinone/callerid/i/a/k/h$a;->h:Z

    return-object v3
.end method

.method protected b(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/k/h$a;->a:Lcom/allinone/callerid/i/a/k/g;

    iget-object v1, p0, Lcom/allinone/callerid/i/a/k/h$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/allinone/callerid/i/a/k/h$a;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/allinone/callerid/i/a/k/h$a;->f:Z

    iget-boolean v4, p0, Lcom/allinone/callerid/i/a/k/h$a;->g:Z

    iget-boolean v5, p0, Lcom/allinone/callerid/i/a/k/h$a;->h:Z

    invoke-interface/range {v0 .. v5}, Lcom/allinone/callerid/i/a/k/g;->a(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/k/h$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/k/h$a;->b(Ljava/lang/String;)V

    return-void
.end method
