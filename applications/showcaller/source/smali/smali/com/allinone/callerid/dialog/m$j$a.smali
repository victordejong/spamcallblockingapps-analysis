.class Lcom/allinone/callerid/dialog/m$j$a;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m$j;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/dialog/m$j;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/m$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$j$a;->a:Lcom/allinone/callerid/dialog/m$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/dialog/m$j$a;->a:Lcom/allinone/callerid/dialog/m$j;

    iget-object v0, v0, Lcom/allinone/callerid/dialog/m$j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$j$a;->a:Lcom/allinone/callerid/dialog/m$j;

    iget-object p1, p1, Lcom/allinone/callerid/dialog/m$j;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$j$a;->a:Lcom/allinone/callerid/dialog/m$j;

    iget-object p1, p1, Lcom/allinone/callerid/dialog/m$j;->f:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$j$a;->a:Lcom/allinone/callerid/dialog/m$j;

    iget-object p1, p1, Lcom/allinone/callerid/dialog/m$j;->g:Lcom/allinone/callerid/b/a;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$j$a;->a:Lcom/allinone/callerid/dialog/m$j;

    iget-object p1, p1, Lcom/allinone/callerid/dialog/m$j;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$j$a;->a:Lcom/allinone/callerid/dialog/m$j;

    iget-object p1, p1, Lcom/allinone/callerid/dialog/m$j;->f:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method
