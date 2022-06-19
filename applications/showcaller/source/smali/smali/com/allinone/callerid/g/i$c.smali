.class Lcom/allinone/callerid/g/i$c;
.super Ljava/lang/Object;
.source "UnknownContentFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/i;->w2()V
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
    iput-object p1, p0, Lcom/allinone/callerid/g/i$c;->d:Lcom/allinone/callerid/g/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/k/b;->d()Lcom/allinone/callerid/f/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/g/i$c;->d:Lcom/allinone/callerid/g/i;

    invoke-static {v1}, Lcom/allinone/callerid/g/i;->n2(Lcom/allinone/callerid/g/i;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/k/b;->e(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/g/i$c;->d:Lcom/allinone/callerid/g/i;

    invoke-static {v1}, Lcom/allinone/callerid/g/i;->l2(Lcom/allinone/callerid/g/i;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    move-result-object v1

    new-instance v2, Lcom/allinone/callerid/g/i$c$a;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/g/i$c$a;-><init>(Lcom/allinone/callerid/g/i$c;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
