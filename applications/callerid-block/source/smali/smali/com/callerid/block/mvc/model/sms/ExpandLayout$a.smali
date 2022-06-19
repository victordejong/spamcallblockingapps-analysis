.class Lcom/callerid/block/mvc/model/sms/ExpandLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/model/sms/ExpandLayout;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/model/sms/ExpandLayout;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/model/sms/ExpandLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/model/sms/ExpandLayout$a;->b:Lcom/callerid/block/mvc/model/sms/ExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/mvc/model/sms/ExpandLayout$a;->b:Lcom/callerid/block/mvc/model/sms/ExpandLayout;

    invoke-static {v0}, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->a(Lcom/callerid/block/mvc/model/sms/ExpandLayout;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/model/sms/ExpandLayout$a;->b:Lcom/callerid/block/mvc/model/sms/ExpandLayout;

    invoke-static {v0}, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->c(Lcom/callerid/block/mvc/model/sms/ExpandLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->f(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callerid/block/mvc/model/sms/ExpandLayout;->b(Lcom/callerid/block/mvc/model/sms/ExpandLayout;I)I

    :cond_0
    return-void
.end method
