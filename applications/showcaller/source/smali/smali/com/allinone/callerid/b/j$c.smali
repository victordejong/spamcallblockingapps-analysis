.class Lcom/allinone/callerid/b/j$c;
.super Ljava/lang/Object;
.source "DialAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/j;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/b/j;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/j$c;->e:Lcom/allinone/callerid/b/j;

    iput p2, p0, Lcom/allinone/callerid/b/j$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/j$c;->e:Lcom/allinone/callerid/b/j;

    invoke-static {v0}, Lcom/allinone/callerid/b/j;->a(Lcom/allinone/callerid/b/j;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/allinone/callerid/b/j$c;->e:Lcom/allinone/callerid/b/j;

    invoke-static {v0}, Lcom/allinone/callerid/b/j;->a(Lcom/allinone/callerid/b/j;)Landroid/widget/ListView;

    move-result-object v2

    iget v4, p0, Lcom/allinone/callerid/b/j$c;->d:I

    iget-object v0, p0, Lcom/allinone/callerid/b/j$c;->e:Lcom/allinone/callerid/b/j;

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/b/j;->getItemId(I)J

    move-result-wide v5

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    const/4 p1, 0x1

    return p1
.end method
