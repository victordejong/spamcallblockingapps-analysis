.class Lcom/callerid/block/mvc/controller/ContactActivity$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/ContactActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/ContactActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/ContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/ContactActivity$i;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$i;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->f0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/customview/LImageButton;

    move-result-object v0

    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Lcom/callerid/block/customview/LImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/ContactActivity$i;->a:Lcom/callerid/block/mvc/controller/ContactActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/ContactActivity;->e0(Lcom/callerid/block/mvc/controller/ContactActivity;)Lcom/callerid/block/search/CallLogBean;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/callerid/block/search/CallLogBean;->B0(Ljava/lang/String;)V

    return-void
.end method
