.class Lcom/allinone/callerid/b/o$b;
.super Ljava/lang/Object;
.source "MatchNumberAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/o;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/b/o;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/o;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/o$b;->e:Lcom/allinone/callerid/b/o;

    iput p2, p0, Lcom/allinone/callerid/b/o$b;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/o$b;->e:Lcom/allinone/callerid/b/o;

    invoke-static {v0}, Lcom/allinone/callerid/b/o;->a(Lcom/allinone/callerid/b/o;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/allinone/callerid/b/o$b;->e:Lcom/allinone/callerid/b/o;

    invoke-static {v0}, Lcom/allinone/callerid/b/o;->a(Lcom/allinone/callerid/b/o;)Landroid/widget/ListView;

    move-result-object v2

    iget v4, p0, Lcom/allinone/callerid/b/o$b;->d:I

    iget-object v0, p0, Lcom/allinone/callerid/b/o$b;->e:Lcom/allinone/callerid/b/o;

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/b/o;->getItemId(I)J

    move-result-wide v5

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
