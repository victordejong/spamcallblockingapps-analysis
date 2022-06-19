.class Lcom/allinone/callerid/d/e/e/a$c;
.super Landroid/os/AsyncTask;
.source "ContactsAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/e/a;
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
        "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/d/e/e/b;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/allinone/callerid/d/e/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/d/e/e/a$c;->a:Lcom/allinone/callerid/d/e/e/b;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/e/e/a$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/a$c;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/h1;->Z(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/d/b/c;->f(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/a$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/d/b/c;->g(Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/a$c;->a:Lcom/allinone/callerid/d/e/e/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/allinone/callerid/d/e/e/b;->a(Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/e/a$c;->a([Ljava/lang/String;)Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/e/a$c;->b(Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;)V

    return-void
.end method
