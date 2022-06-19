.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/bean/SearchHis;

.field final synthetic c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;Lcom/callerid/block/bean/SearchHis;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;->b:Lcom/callerid/block/bean/SearchHis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;->b:Lcom/callerid/block/bean/SearchHis;

    invoke-virtual {v0}, Lcom/callerid/block/bean/SearchHis;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->s:Lcom/callerid/block/customview/DeletableEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->e0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q$a;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$q;->c:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->p0()V

    return-void
.end method
