.class Lcom/allinone/callerid/i/a/q/a$a;
.super Landroid/os/AsyncTask;
.source "ContactPdtManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/i/a/q/a;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/allinone/callerid/i/a/q/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/allinone/callerid/i/a/q/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/i/a/q/a$a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/allinone/callerid/i/a/q/a$a;->b:Lcom/allinone/callerid/i/a/q/c;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/i/a/q/a$a;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/h1;->Z(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/q/a$a;->b:Lcom/allinone/callerid/i/a/q/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/allinone/callerid/i/a/q/c;->a(J)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/q/a$a;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/i/a/q/a$a;->b(Ljava/lang/Integer;)V

    return-void
.end method
