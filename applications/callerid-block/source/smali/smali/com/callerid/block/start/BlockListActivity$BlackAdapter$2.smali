.class Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;
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

.field final synthetic c:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;->c:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iput p2, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1;

    const v0, 0x7f110159

    invoke-direct {p1, p0, v0}, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2$1;-><init>(Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;I)V

    const v0, 0x7f0c00d3

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog$Builder;->f(I)Lcom/rey/material/app/Dialog$Builder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog$Builder;->n(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-virtual {p1, v0}, Lcom/rey/material/app/Dialog$Builder;->g(Ljava/lang/CharSequence;)Lcom/rey/material/app/Dialog$Builder;

    invoke-static {p1}, Lcom/rey/material/app/a;->K1(Lcom/rey/material/app/a$b;)Lcom/rey/material/app/a;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;->c:Lcom/callerid/block/start/BlockListActivity$BlackAdapter;

    iget-object v0, v0, Lcom/callerid/block/start/BlockListActivity$BlackAdapter;->e:Lcom/callerid/block/start/BlockListActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/j;->i()Landroidx/fragment/app/p;

    move-result-object v0

    const-class v1, Lcom/callerid/block/start/BlockListActivity$BlackAdapter$2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/p;->d(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->h()I

    return-void
.end method
