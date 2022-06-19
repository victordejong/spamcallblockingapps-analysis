.class Lcom/allinone/callerid/g/e$i$a$a;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/z/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e$i$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e$i$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e$i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$i$a$a;->a:Lcom/allinone/callerid/g/e$i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/e$i$a$a;->a:Lcom/allinone/callerid/g/e$i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/e$i$a;->a:Lcom/allinone/callerid/g/e$i;

    iget-object p1, p1, Lcom/allinone/callerid/g/e$i;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/e$i$a$a;->a:Lcom/allinone/callerid/g/e$i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/e$i$a;->a:Lcom/allinone/callerid/g/e$i;

    iget-object p1, p1, Lcom/allinone/callerid/g/e$i;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->W2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/b/t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    :cond_0
    return-void
.end method
