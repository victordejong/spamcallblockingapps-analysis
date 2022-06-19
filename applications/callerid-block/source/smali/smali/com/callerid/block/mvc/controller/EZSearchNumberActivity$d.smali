.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$d;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$d;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p2, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->B:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/callerid/block/bean/EZCountryCode;

    invoke-virtual {p1, p2}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y0(Lcom/callerid/block/bean/EZCountryCode;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$d;->b:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->z:Lcom/rey/material/app/Dialog;

    invoke-virtual {p1}, Lcom/rey/material/app/Dialog;->dismiss()V

    return-void
.end method
