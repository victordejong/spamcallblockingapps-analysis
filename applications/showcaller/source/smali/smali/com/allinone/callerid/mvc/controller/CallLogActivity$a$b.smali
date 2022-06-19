.class Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;

    iput p2, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;

    iget-object p1, p1, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;->e:Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;

    iget-object p2, p2, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a;->a:Lcom/allinone/callerid/mvc/controller/CallLogActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/CallLogActivity;->X(Lcom/allinone/callerid/mvc/controller/CallLogActivity;)Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;->d:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->j()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b$a;-><init>(Lcom/allinone/callerid/mvc/controller/CallLogActivity$a$b;)V

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/i/a/g/i;->b(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/g/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
