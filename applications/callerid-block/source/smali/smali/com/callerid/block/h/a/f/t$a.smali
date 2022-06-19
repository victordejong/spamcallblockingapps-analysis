.class Lcom/callerid/block/h/a/f/t$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/f/t;
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
.field private a:Lcom/callerid/block/h/a/f/s;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callerid/block/h/a/f/s;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p4, p0, Lcom/callerid/block/h/a/f/t$a;->a:Lcom/callerid/block/h/a/f/s;

    iput-object p2, p0, Lcom/callerid/block/h/a/f/t$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/callerid/block/h/a/f/t$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100112

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/callerid/block/h/a/f/t$a;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/callerid/block/util/t0;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->d:Ljava/lang/String;

    const v1, 0x7f100114

    const-string v2, " "

    const-string v3, ""

    const/4 v4, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->b:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->d:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/t0;->b0(Landroid/content/Context;)I

    move-result p1

    if-le p1, v4, :cond_2

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/t0;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->d:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/t0;->b0(Landroid/content/Context;)I

    move-result p1

    if-le p1, v4, :cond_2

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/t0;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->d:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    iget-object v0, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/t0;->b0(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callerid/block/util/n0;->Q0(Landroid/content/Context;Z)V

    new-instance p1, Lcom/callerid/block/util/i;

    iget-object v0, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/callerid/block/util/i;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/callerid/block/util/n0;->y(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f100044

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/callerid/block/h/a/f/t$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/i;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->c:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->b:Ljava/lang/String;

    :goto_3
    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->d:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/callerid/block/h/a/f/t$a;->f:Z

    :cond_4
    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->d:Ljava/lang/String;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->c:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->b:Ljava/lang/String;

    :goto_4
    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->d:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/callerid/block/h/a/f/t$a;->f:Z

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/callerid/block/util/n0;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/callerid/block/h/a/f/t$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callerid/block/util/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->g:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_7

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->c:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->b:Ljava/lang/String;

    goto :goto_4

    :cond_8
    :goto_5
    return-object v3
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/callerid/block/h/a/f/t$a;->a:Lcom/callerid/block/h/a/f/s;

    iget-object v0, p0, Lcom/callerid/block/h/a/f/t$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/callerid/block/h/a/f/t$a;->e:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/callerid/block/h/a/f/t$a;->f:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/callerid/block/h/a/f/s;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/t$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/t$a;->b(Ljava/lang/String;)V

    return-void
.end method
