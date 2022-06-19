.class Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;
.super Ljava/lang/Object;
.source "UnknownContactActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->a:Ljava/lang/String;

    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/f/b;->e(Ljava/lang/String;Lcom/allinone/callerid/i/a/a;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "block_dialog_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/allinone/callerid/bean/EZBlackList;

    invoke-direct {p1}, Lcom/allinone/callerid/bean/EZBlackList;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->b:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b;->d:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0;->a:Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->k0(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/EZBlackList;->setName(Ljava/lang/String;)V

    :goto_0
    const-string v0, "true"

    .line 9
    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setIs_myblock(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/bean/EZBlackList;->setNumber(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a$b;-><init>(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$c0$b$a;Lcom/allinone/callerid/bean/EZBlackList;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/f/b;->a(Lcom/allinone/callerid/bean/EZBlackList;Lcom/allinone/callerid/i/a/a;)V

    :goto_1
    return-void
.end method
