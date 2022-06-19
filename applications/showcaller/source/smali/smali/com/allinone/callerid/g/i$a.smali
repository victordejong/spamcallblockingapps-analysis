.class Lcom/allinone/callerid/g/i$a;
.super Ljava/lang/Object;
.source "UnknownContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/i;->t2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/g/i;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    new-instance v0, Lcom/allinone/callerid/g/i$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/i$a$a;-><init>(Lcom/allinone/callerid/g/i$a;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {v0}, Lcom/allinone/callerid/g/i;->b2(Lcom/allinone/callerid/g/i;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {v0}, Lcom/allinone/callerid/g/i;->k2(Lcom/allinone/callerid/g/i;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {v0}, Lcom/allinone/callerid/g/i;->l2(Lcom/allinone/callerid/g/i;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {v0}, Lcom/allinone/callerid/g/i;->l2(Lcom/allinone/callerid/g/i;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/g/i$a$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/i$a$b;-><init>(Lcom/allinone/callerid/g/i$a;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;->n1(Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;)V

    :cond_0
    return-void
.end method
