.class Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;
.super Ljava/lang/Object;
.source "DisturbCustomActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/l/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/NoDisturbBean;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-static {v2}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->a0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Lcom/allinone/callerid/b/a0/b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/allinone/callerid/b/z/b;->A(Ljava/util/ArrayList;Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->a0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Lcom/allinone/callerid/b/a0/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->b0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->c0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->c0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity$b;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;->b0(Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
