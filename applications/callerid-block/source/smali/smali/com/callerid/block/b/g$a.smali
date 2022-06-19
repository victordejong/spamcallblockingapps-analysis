.class Lcom/callerid/block/b/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/b/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/callerid/block/b/g;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/b/g$a;->c:Lcom/callerid/block/b/g;

    iput p2, p0, Lcom/callerid/block/b/g$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/callerid/block/b/g$a;->c:Lcom/callerid/block/b/g;

    invoke-static {v0}, Lcom/callerid/block/b/g;->a(Lcom/callerid/block/b/g;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/b/g$a;->c:Lcom/callerid/block/b/g;

    invoke-static {v0}, Lcom/callerid/block/b/g;->a(Lcom/callerid/block/b/g;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/callerid/block/b/g$a;->c:Lcom/callerid/block/b/g;

    invoke-static {v0}, Lcom/callerid/block/b/g;->a(Lcom/callerid/block/b/g;)Landroid/widget/ListView;

    move-result-object v2

    iget v4, p0, Lcom/callerid/block/b/g$a;->b:I

    iget-object v0, p0, Lcom/callerid/block/b/g$a;->c:Lcom/callerid/block/b/g;

    invoke-virtual {v0, v4}, Lcom/callerid/block/b/g;->getItemId(I)J

    move-result-wide v5

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
