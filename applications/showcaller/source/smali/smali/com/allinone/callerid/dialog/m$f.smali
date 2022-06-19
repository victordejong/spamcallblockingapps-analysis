.class Lcom/allinone/callerid/dialog/m$f;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m;->e(Landroid/content/Context;Ljava/util/ArrayList;Lcom/allinone/callerid/i/a/l/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/allinone/callerid/b/a0/a;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/allinone/callerid/b/a0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$f;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/allinone/callerid/dialog/m$f;->e:Lcom/allinone/callerid/b/a0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/dialog/m$f;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/dialog/m$f;->e:Lcom/allinone/callerid/b/a0/a;

    iget-object v1, p0, Lcom/allinone/callerid/dialog/m$f;->d:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/b/z/b;->A(Ljava/util/ArrayList;Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/dialog/m$f;->e:Lcom/allinone/callerid/b/a0/a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/allinone/callerid/dialog/m$f$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/dialog/m$f$a;-><init>(Lcom/allinone/callerid/dialog/m$f;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/l/d;->b(Lcom/allinone/callerid/i/a/l/c;)V

    :goto_0
    return-void
.end method
