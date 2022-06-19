.class Lcom/allinone/callerid/i/a/q/a$e;
.super Landroid/os/AsyncTask;
.source "ContactPdtManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/q/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
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
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:I

.field d:Ljava/lang/String;

.field e:Lcom/allinone/callerid/i/a/r/d;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/allinone/callerid/i/a/r/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/i/a/q/a$e;->b:Landroid/content/Context;

    .line 4
    iput p2, p0, Lcom/allinone/callerid/i/a/q/a$e;->c:I

    .line 5
    iput-object p3, p0, Lcom/allinone/callerid/i/a/q/a$e;->d:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/allinone/callerid/i/a/q/a$e;->e:Lcom/allinone/callerid/i/a/r/d;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/i/a/q/a$e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/allinone/callerid/i/a/q/a$e;->c:I

    int-to-long v3, v3

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    const-string v1, " "

    if-eqz p1, :cond_2

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data1"

    .line 6
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v3}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    .line 9
    invoke-virtual {v3, v2}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/allinone/callerid/i/a/q/a$e;->d:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    iget-object v2, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    if-lez p1, :cond_5

    const/4 p1, 0x0

    .line 14
    :goto_1
    iget-object v3, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_5

    .line 15
    iget-object v3, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-le v3, p1, :cond_4

    .line 16
    iget-object v4, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v4}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 17
    iget-object v4, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 19
    :goto_3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/search/CallLogBean;

    .line 21
    invoke-static {}, Lcom/allinone/callerid/f/f;->b()Lcom/allinone/callerid/f/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/f;->d(Ljava/lang/String;)Lcom/allinone/callerid/model/EZSearchContacts;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 22
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/search/CallLogBean;->F0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/i/a/q/a$e;->e:Lcom/allinone/callerid/i/a/r/d;

    iget-object v0, p0, Lcom/allinone/callerid/i/a/q/a$e;->a:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/allinone/callerid/i/a/r/d;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/q/a$e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/q/a$e;->b(Ljava/lang/String;)V

    return-void
.end method
