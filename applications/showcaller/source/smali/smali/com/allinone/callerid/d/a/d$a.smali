.class Lcom/allinone/callerid/d/a/d$a;
.super Ljava/lang/Object;
.source "SelectVideoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/a/d;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

.field final synthetic e:Lcom/allinone/callerid/d/a/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/a/d;Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/a/d$a;->e:Lcom/allinone/callerid/d/a/d;

    iput-object p2, p0, Lcom/allinone/callerid/d/a/d$a;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/d/a/d$a;->e:Lcom/allinone/callerid/d/a/d;

    invoke-static {p1}, Lcom/allinone/callerid/d/a/d;->C(Lcom/allinone/callerid/d/a/d;)Lcom/allinone/callerid/d/a/d$b;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/d/a/d$a;->d:Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-interface {p1, v0}, Lcom/allinone/callerid/d/a/d$b;->a(Lcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
