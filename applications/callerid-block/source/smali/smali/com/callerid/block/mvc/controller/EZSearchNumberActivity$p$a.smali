.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$a;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p$a;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;

    iget-object v1, v0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->d:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->A:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$p;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v1, p1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
