.class Lcom/callerid/block/mvc/controller/EZDialActivity$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZDialActivity$d;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/callerid/block/mvc/controller/EZDialActivity$d;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZDialActivity$d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d$a;->c:Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d$a;->b:Landroid/view/View;

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

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d$a;->c:Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/EZDialActivity$d;->e:Lcom/callerid/block/mvc/controller/EZDialActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/EZDialActivity;->U(Lcom/callerid/block/mvc/controller/EZDialActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d$a;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/callerid/block/mvc/controller/EZDialActivity$d$a;->c:Lcom/callerid/block/mvc/controller/EZDialActivity$d;

    invoke-virtual {v2, p1}, Landroid/widget/ResourceCursorAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
