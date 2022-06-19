.class Lcom/allinone/callerid/d/a/b$b;
.super Ljava/lang/Object;
.source "HomeRecycleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/a/b;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field final synthetic e:Lcom/allinone/callerid/d/a/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/a/b;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/a/b$b;->e:Lcom/allinone/callerid/d/a/b;

    iput-object p2, p0, Lcom/allinone/callerid/d/a/b$b;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/d/a/b$b;->e:Lcom/allinone/callerid/d/a/b;

    invoke-static {p1}, Lcom/allinone/callerid/d/a/b;->D(Lcom/allinone/callerid/d/a/b;)Lcom/allinone/callerid/d/a/b$e;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/a/b$b;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-interface {p1, v0}, Lcom/allinone/callerid/d/a/b$e;->a(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V

    return-void
.end method
