.class Lcom/callerid/block/mvc/controller/SelectContactsActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/SelectContactsActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$a;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$a;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->Q(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Lcom/callerid/block/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$a;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {v0, p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->S(Lcom/callerid/block/mvc/controller/SelectContactsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$a;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {v0}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->Q(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Lcom/callerid/block/b/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/callerid/block/b/c;->x(Ljava/util/ArrayList;Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/SelectContactsActivity$a;->a:Lcom/callerid/block/mvc/controller/SelectContactsActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/SelectContactsActivity;->Q(Lcom/callerid/block/mvc/controller/SelectContactsActivity;)Lcom/callerid/block/b/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->k()V

    :cond_0
    return-void
.end method
