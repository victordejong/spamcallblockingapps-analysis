.class Lcom/allinone/callerid/i/a/p/c$b;
.super Landroid/os/AsyncTask;
.source "BlookFramnentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/p/c;
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
.field a:Lcom/allinone/callerid/i/a/p/b;

.field private b:I


# direct methods
.method constructor <init>(Lcom/allinone/callerid/i/a/p/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/p/c$b;->a:Lcom/allinone/callerid/i/a/p/b;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p1, "0"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/f/b;->a()Lcom/allinone/callerid/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/f/b;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    :cond_0
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v0()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/i/a/p/c$b;->b:I

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/p/c$b;->a:Lcom/allinone/callerid/i/a/p/b;

    iget v1, p0, Lcom/allinone/callerid/i/a/p/c$b;->b:I

    invoke-interface {v0, p1, v1}, Lcom/allinone/callerid/i/a/p/b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/p/c$b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/p/c$b;->b(Ljava/lang/String;)V

    return-void
.end method
