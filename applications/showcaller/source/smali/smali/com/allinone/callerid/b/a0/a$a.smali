.class Lcom/allinone/callerid/b/a0/a$a;
.super Ljava/lang/Object;
.source "DialogWeekAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/a0/a;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/WeekInfo;

.field final synthetic e:Lcom/allinone/callerid/b/a0/a$b;

.field final synthetic f:Lcom/allinone/callerid/b/a0/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/a0/a;Lcom/allinone/callerid/bean/WeekInfo;Lcom/allinone/callerid/b/a0/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    iput-object p2, p0, Lcom/allinone/callerid/b/a0/a$a;->d:Lcom/allinone/callerid/bean/WeekInfo;

    iput-object p3, p0, Lcom/allinone/callerid/b/a0/a$a;->e:Lcom/allinone/callerid/b/a0/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->d:Lcom/allinone/callerid/bean/WeekInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/WeekInfo;->getWeekId()I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->e:Lcom/allinone/callerid/b/a0/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a$b;->N(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {p1, v1}, Lcom/allinone/callerid/b/a0/a;->G(Lcom/allinone/callerid/b/a0/a;Z)V

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {p1, v2}, Lcom/allinone/callerid/b/a0/a;->G(Lcom/allinone/callerid/b/a0/a;Z)V

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->e:Lcom/allinone/callerid/b/a0/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a$b;->N(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->e:Lcom/allinone/callerid/b/a0/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a$b;->N(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->d:Lcom/allinone/callerid/bean/WeekInfo;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/WeekInfo;->setSelect(Z)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a;->H(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a;->J(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {v0}, Lcom/allinone/callerid/b/a0/a;->I(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/WeekInfo;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/WeekInfo;->setSelect(Z)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a;->L(Lcom/allinone/callerid/b/a0/a;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {v0}, Lcom/allinone/callerid/b/a0/a;->K(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/b/a0/a$b;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a$b;->N(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->e:Lcom/allinone/callerid/b/a0/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a$b;->N(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->d:Lcom/allinone/callerid/bean/WeekInfo;

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/bean/WeekInfo;->setSelect(Z)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a;->M(Lcom/allinone/callerid/b/a0/a;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a;->N(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a;->E(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {v0}, Lcom/allinone/callerid/b/a0/a;->D(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/bean/WeekInfo;

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/bean/WeekInfo;->setSelect(Z)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a;->L(Lcom/allinone/callerid/b/a0/a;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/a0/a$a;->f:Lcom/allinone/callerid/b/a0/a;

    invoke-static {v0}, Lcom/allinone/callerid/b/a0/a;->F(Lcom/allinone/callerid/b/a0/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->Y(I)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/b/a0/a$b;

    if-eqz p1, :cond_3

    .line 18
    invoke-static {p1}, Lcom/allinone/callerid/b/a0/a$b;->N(Lcom/allinone/callerid/b/a0/a$b;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
