.class Lcom/allinone/callerid/b/a0/b$a;
.super Ljava/lang/Object;
.source "WhiteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/a0/b;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/bean/NoDisturbBean;

.field final synthetic f:Lcom/allinone/callerid/b/a0/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/a0/b;ILcom/allinone/callerid/bean/NoDisturbBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/a0/b$a;->f:Lcom/allinone/callerid/b/a0/b;

    iput p2, p0, Lcom/allinone/callerid/b/a0/b$a;->d:I

    iput-object p3, p0, Lcom/allinone/callerid/b/a0/b$a;->e:Lcom/allinone/callerid/bean/NoDisturbBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/b$a;->f:Lcom/allinone/callerid/b/a0/b;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b;->D(Lcom/allinone/callerid/b/a0/b;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/allinone/callerid/b/a0/b$a;->d:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/b$a;->f:Lcom/allinone/callerid/b/a0/b;

    iget v0, p0, Lcom/allinone/callerid/b/a0/b$a;->d:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->n(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/b$a;->f:Lcom/allinone/callerid/b/a0/b;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/b;->E(Lcom/allinone/callerid/b/a0/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->k(II)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/b$a;->e:Lcom/allinone/callerid/bean/NoDisturbBean;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/NoDisturbBean;->getNumber()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/b/a0/b$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/b/a0/b$a$a;-><init>(Lcom/allinone/callerid/b/a0/b$a;)V

    invoke-static {p1, v0}, Lcom/allinone/callerid/i/a/l/e/c;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/l/e/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
