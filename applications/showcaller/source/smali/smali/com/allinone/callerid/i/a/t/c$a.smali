.class Lcom/allinone/callerid/i/a/t/c$a;
.super Landroid/os/AsyncTask;
.source "ShortcutsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/t/c;
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
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/allinone/callerid/util/q0;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/allinone/callerid/util/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/allinone/callerid/i/a/t/c$a;->b:Lcom/allinone/callerid/util/q0;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance p1, Lcom/allinone/callerid/util/n;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/allinone/callerid/util/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/allinone/callerid/util/n;->c()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/i/a/t/c$a;->a:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v0, "ok"

    const/16 v1, 0x19

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/t/c$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_6

    :cond_0
    :goto_0
    move-object p1, v0

    goto :goto_3

    .line 5
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/h1;->b0()Z

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_6

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/i/a/t/c$a;->b:Lcom/allinone/callerid/util/q0;

    invoke-virtual {p1}, Lcom/allinone/callerid/util/q0;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 9
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 10
    iget-object v4, p0, Lcom/allinone/callerid/i/a/t/c$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_2

    .line 11
    iget-object v4, p0, Lcom/allinone/callerid/i/a/t/c$a;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/i/a/t/c$a;->b:Lcom/allinone/callerid/util/q0;

    invoke-virtual {p1}, Lcom/allinone/callerid/util/q0;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 14
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 15
    iget-object v4, p0, Lcom/allinone/callerid/i/a/t/c$a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 16
    iget-object v4, p0, Lcom/allinone/callerid/i/a/t/c$a;->a:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/allinone/callerid/search/CallLogBean;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 17
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 18
    :goto_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_7

    iget-object v1, p0, Lcom/allinone/callerid/i/a/t/c$a;->a:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/i/a/t/c$a;->a:Ljava/util/List;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/allinone/callerid/i/a/t/c;->a(Ljava/util/List;Landroid/content/Context;)V

    goto :goto_4

    :cond_7
    move-object v0, p1

    :goto_4
    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/t/c$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/t/c$a;->b(Ljava/lang/String;)V

    return-void
.end method
