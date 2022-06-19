.class Lcom/allinone/callerid/b/x$a;
.super Ljava/lang/Object;
.source "StartChooseLangAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/x;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/b/x;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/x;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/x$a;->e:Lcom/allinone/callerid/b/x;

    iput p2, p0, Lcom/allinone/callerid/b/x$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/x$a;->e:Lcom/allinone/callerid/b/x;

    invoke-static {p1}, Lcom/allinone/callerid/b/x;->a(Lcom/allinone/callerid/b/x;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/x$a;->e:Lcom/allinone/callerid/b/x;

    invoke-static {v0}, Lcom/allinone/callerid/b/x;->a(Lcom/allinone/callerid/b/x;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/b/x$a;->d:I

    iget-object v2, p0, Lcom/allinone/callerid/b/x$a;->e:Lcom/allinone/callerid/b/x;

    invoke-virtual {v2, v1}, Lcom/allinone/callerid/b/x;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
