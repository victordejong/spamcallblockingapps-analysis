.class Lcom/allinone/callerid/dialog/m$f$a;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/l/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/m$f;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/dialog/m$f;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/m$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/m$f$a;->a:Lcom/allinone/callerid/dialog/m$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/WeekInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/dialog/m$f$a;->a:Lcom/allinone/callerid/dialog/m$f;

    iget-object v0, v0, Lcom/allinone/callerid/dialog/m$f;->e:Lcom/allinone/callerid/b/a0/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/allinone/callerid/b/z/b;->A(Ljava/util/ArrayList;Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/dialog/m$f$a;->a:Lcom/allinone/callerid/dialog/m$f;

    iget-object p1, p1, Lcom/allinone/callerid/dialog/m$f;->e:Lcom/allinone/callerid/b/a0/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    :cond_0
    return-void
.end method
