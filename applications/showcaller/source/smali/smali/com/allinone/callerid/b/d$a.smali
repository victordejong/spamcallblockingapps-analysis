.class Lcom/allinone/callerid/b/d$a;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/b/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/d$a;->e:Lcom/allinone/callerid/b/d;

    iput p2, p0, Lcom/allinone/callerid/b/d$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/d$a;->e:Lcom/allinone/callerid/b/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/d;->a(Lcom/allinone/callerid/b/d;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/d$a;->e:Lcom/allinone/callerid/b/d;

    invoke-static {v0}, Lcom/allinone/callerid/b/d;->b(Lcom/allinone/callerid/b/d;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/allinone/callerid/b/d$a;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
