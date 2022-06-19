.class Lcom/allinone/callerid/d/e/e/a$b;
.super Landroid/os/AsyncTask;
.source "ContactsAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/d/e/e/a;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/allinone/callerid/d/e/e/a$a;

.field private b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/bean/HomeInfo;Ljava/util/List;Lcom/allinone/callerid/d/e/e/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/allinone/callerid/callscreen/bean/HomeInfo;",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;",
            ">;",
            "Lcom/allinone/callerid/d/e/e/a$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/allinone/callerid/d/e/e/a$b;->a:Lcom/allinone/callerid/d/e/e/a$a;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/d/e/e/a$b;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    .line 4
    iput-object p2, p0, Lcom/allinone/callerid/d/e/e/a$b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/d/e/e/a$b;->c:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/d/e/e/a$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    .line 3
    new-instance v1, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;

    invoke-direct {v1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/allinone/callerid/d/e/e/a$b;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getData_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setDataId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getContacts_id()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setContacts_id(I)V

    .line 6
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setNumber(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/allinone/callerid/d/e/e/a$b;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setPath(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/allinone/callerid/d/e/e/a$b;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setThemtname(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getSortLetters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setSortLetters(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/a$b;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdiy()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setIsdiy(Z)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/a$b;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUseVideoAudioRing()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->setUseVideoAudioRing(Z)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/d/b/c;->d()Lcom/allinone/callerid/d/b/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/d/b/c;->a(Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/d/e/e/a$b;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdefault()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    invoke-static {}, Lcom/allinone/callerid/d/b/e;->e()Lcom/allinone/callerid/d/b/e;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/a$b;->b:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/d/b/e;->c(Ljava/lang/String;)V

    .line 16
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/d/e/e/a$b;->a:Lcom/allinone/callerid/d/e/e/a$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/allinone/callerid/d/e/e/a$a;->a(Z)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/e/a$b;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/d/e/e/a$b;->b(Ljava/lang/Boolean;)V

    return-void
.end method
