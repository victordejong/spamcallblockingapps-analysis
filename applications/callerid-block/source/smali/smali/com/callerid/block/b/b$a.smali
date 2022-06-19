.class Lcom/callerid/block/b/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/b/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/b/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/b/b$a;->b:Lcom/callerid/block/b/b;

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

    iget-object v0, p0, Lcom/callerid/block/b/b$a;->b:Lcom/callerid/block/b/b;

    invoke-static {v0}, Lcom/callerid/block/b/b;->a(Lcom/callerid/block/b/b;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/b/b$a;->b:Lcom/callerid/block/b/b;

    invoke-static {v1}, Lcom/callerid/block/b/b;->a(Lcom/callerid/block/b/b;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/b/b$a;->b:Lcom/callerid/block/b/b;

    invoke-virtual {v2, p1}, Lcom/callerid/block/b/b;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
