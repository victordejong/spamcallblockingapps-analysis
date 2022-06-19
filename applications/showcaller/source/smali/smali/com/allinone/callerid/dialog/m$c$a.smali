.class Lcom/allinone/callerid/dialog/m$c$a;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/g/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/dialog/m$c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/m$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$c$a;->a:Lcom/allinone/callerid/dialog/m$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/EZSimpleContact;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/dialog/m$c$a;->a:Lcom/allinone/callerid/dialog/m$c;

    iget-object v0, v0, Lcom/allinone/callerid/dialog/m$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$c$a;->a:Lcom/allinone/callerid/dialog/m$c;

    iget-object p1, p1, Lcom/allinone/callerid/dialog/m$c;->e:Lcom/allinone/callerid/b/b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$c$a;->a:Lcom/allinone/callerid/dialog/m$c;

    iget-object p1, p1, Lcom/allinone/callerid/dialog/m$c;->f:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$c$a;->a:Lcom/allinone/callerid/dialog/m$c;

    iget-object p1, p1, Lcom/allinone/callerid/dialog/m$c;->g:Landroid/widget/ListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void
.end method
