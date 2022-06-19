.class Lcom/allinone/callerid/start/SelfStartAcitity$a;
.super Ljava/lang/Object;
.source "SelfStartAcitity.java"

# interfaces
.implements Lcom/allinone/callerid/util/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/SelfStartAcitity;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/SelfStartAcitity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/SelfStartAcitity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/SelfStartAcitity$a;->a:Lcom/allinone/callerid/start/SelfStartAcitity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/j0;->b()Lcom/allinone/callerid/util/j0;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/start/SelfStartAcitity$a;->a:Lcom/allinone/callerid/start/SelfStartAcitity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/j0;->c(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/j0;->b()Lcom/allinone/callerid/util/j0;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/start/SelfStartAcitity$a;->a:Lcom/allinone/callerid/start/SelfStartAcitity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/j0;->c(Landroid/content/Context;)V

    return-void
.end method
