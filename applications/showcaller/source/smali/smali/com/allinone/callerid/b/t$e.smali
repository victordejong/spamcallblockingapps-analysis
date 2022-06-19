.class Lcom/allinone/callerid/b/t$e;
.super Ljava/lang/Object;
.source "RecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/t;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/b/t;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/t;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/t$e;->e:Lcom/allinone/callerid/b/t;

    iput p2, p0, Lcom/allinone/callerid/b/t$e;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/b/t$e;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v0}, Lcom/allinone/callerid/b/t;->E(Lcom/allinone/callerid/b/t;)Lcom/allinone/callerid/b/t$m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/t$e;->e:Lcom/allinone/callerid/b/t;

    invoke-static {v0}, Lcom/allinone/callerid/b/t;->E(Lcom/allinone/callerid/b/t;)Lcom/allinone/callerid/b/t$m;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/b/t$e;->d:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/allinone/callerid/b/t$m;->b(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
