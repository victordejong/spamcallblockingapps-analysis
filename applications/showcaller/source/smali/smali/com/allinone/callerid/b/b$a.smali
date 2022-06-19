.class Lcom/allinone/callerid/b/b$a;
.super Ljava/lang/Object;
.source "AddFromContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/b$a;->d:Lcom/allinone/callerid/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/b$a;->d:Lcom/allinone/callerid/b/b;

    invoke-static {v0}, Lcom/allinone/callerid/b/b;->a(Lcom/allinone/callerid/b/b;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/b$a;->d:Lcom/allinone/callerid/b/b;

    invoke-static {v1}, Lcom/allinone/callerid/b/b;->a(Lcom/allinone/callerid/b/b;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/b/b$a;->d:Lcom/allinone/callerid/b/b;

    invoke-virtual {v2, p1}, Lcom/allinone/callerid/b/b;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
