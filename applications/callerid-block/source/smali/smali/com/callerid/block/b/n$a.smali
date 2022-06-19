.class Lcom/callerid/block/b/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/b/n;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/callerid/block/b/n;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/n;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/b/n$a;->c:Lcom/callerid/block/b/n;

    iput p2, p0, Lcom/callerid/block/b/n$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/callerid/block/b/n$a;->c:Lcom/callerid/block/b/n;

    invoke-static {p1}, Lcom/callerid/block/b/n;->a(Lcom/callerid/block/b/n;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/b/n$a;->c:Lcom/callerid/block/b/n;

    invoke-static {v0}, Lcom/callerid/block/b/n;->a(Lcom/callerid/block/b/n;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/callerid/block/b/n$a;->b:I

    iget-object v2, p0, Lcom/callerid/block/b/n$a;->c:Lcom/callerid/block/b/n;

    invoke-virtual {v2, v1}, Lcom/callerid/block/b/n;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
