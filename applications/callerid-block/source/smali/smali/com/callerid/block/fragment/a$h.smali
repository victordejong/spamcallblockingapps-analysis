.class Lcom/callerid/block/fragment/a$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/customview/SideBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/fragment/a;->l2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/fragment/a;


# direct methods
.method constructor <init>(Lcom/callerid/block/fragment/a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/fragment/a$h;->a:Lcom/callerid/block/fragment/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/fragment/a$h;->a:Lcom/callerid/block/fragment/a;

    invoke-static {v0}, Lcom/callerid/block/fragment/a;->e2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/b/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callerid/block/b/f;->getPositionForSection(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/callerid/block/fragment/a$h;->a:Lcom/callerid/block/fragment/a;

    invoke-static {v2}, Lcom/callerid/block/fragment/a;->f2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/NestedScrollingListView;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/callerid/block/fragment/a$h;->a:Lcom/callerid/block/fragment/a;

    invoke-static {v2}, Lcom/callerid/block/fragment/a;->f2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/NestedScrollingListView;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    const-string v0, "\u2605"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/fragment/a$h;->a:Lcom/callerid/block/fragment/a;

    invoke-static {p1}, Lcom/callerid/block/fragment/a;->f2(Lcom/callerid/block/fragment/a;)Lcom/callerid/block/customview/NestedScrollingListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    return-void
.end method
