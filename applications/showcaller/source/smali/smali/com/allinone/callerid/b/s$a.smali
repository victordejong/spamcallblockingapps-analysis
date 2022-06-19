.class Lcom/allinone/callerid/b/s$a;
.super Ljava/lang/Object;
.source "QuickContactsSortAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/s;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/b/s;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/s;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/s$a;->e:Lcom/allinone/callerid/b/s;

    iput p2, p0, Lcom/allinone/callerid/b/s$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/s$a;->e:Lcom/allinone/callerid/b/s;

    invoke-static {v0}, Lcom/allinone/callerid/b/s;->a(Lcom/allinone/callerid/b/s;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/allinone/callerid/b/s$a;->e:Lcom/allinone/callerid/b/s;

    invoke-static {v0}, Lcom/allinone/callerid/b/s;->a(Lcom/allinone/callerid/b/s;)Landroid/widget/ListView;

    move-result-object v2

    iget v4, p0, Lcom/allinone/callerid/b/s$a;->d:I

    iget-object v0, p0, Lcom/allinone/callerid/b/s$a;->e:Lcom/allinone/callerid/b/s;

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/b/s;->getItemId(I)J

    move-result-wide v5

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
