.class Lcom/callerid/block/start/BlockListActivity$BlackAdapter$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/callerid/block/bean/EZBlackList;

.field final synthetic d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;ILcom/callerid/block/bean/EZBlackList;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$a;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iput p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$a;->b:I

    iput-object p3, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$a;->c:Lcom/callerid/block/bean/EZBlackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$a;->d:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$a;->b:I

    iget-object v1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$a;->c:Lcom/callerid/block/bean/EZBlackList;

    invoke-static {p1, v0, v1}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->b(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;ILcom/callerid/block/bean/EZBlackList;)V

    return-void
.end method
