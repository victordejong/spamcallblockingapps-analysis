.class Lcom/allinone/callerid/b/g$a;
.super Ljava/lang/Object;
.source "CommentAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/g;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/b/g;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/g$a;->e:Lcom/allinone/callerid/b/g;

    iput p2, p0, Lcom/allinone/callerid/b/g$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/g$a;->e:Lcom/allinone/callerid/b/g;

    invoke-static {v0}, Lcom/allinone/callerid/b/g;->A(Lcom/allinone/callerid/b/g;)Lcom/allinone/callerid/b/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/g$a;->e:Lcom/allinone/callerid/b/g;

    invoke-static {v0}, Lcom/allinone/callerid/b/g;->A(Lcom/allinone/callerid/b/g;)Lcom/allinone/callerid/b/g$b;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/b/g$a;->d:I

    invoke-interface {v0, p1, v1}, Lcom/allinone/callerid/b/g$b;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
