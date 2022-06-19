.class Lcom/allinone/callerid/b/z/g$c;
.super Ljava/lang/Object;
.source "StrangerRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/g;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/z/g;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/g$c;->d:Lcom/allinone/callerid/b/z/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/z/g$c;->d:Lcom/allinone/callerid/b/z/g;

    invoke-static {v0}, Lcom/allinone/callerid/b/z/g;->F(Lcom/allinone/callerid/b/z/g;)Lcom/allinone/callerid/b/z/g$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/g$c;->d:Lcom/allinone/callerid/b/z/g;

    invoke-static {v0}, Lcom/allinone/callerid/b/z/g;->F(Lcom/allinone/callerid/b/z/g;)Lcom/allinone/callerid/b/z/g$g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/allinone/callerid/b/z/g$g;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
