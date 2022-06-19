.class Lcom/allinone/callerid/b/z/a$a;
.super Ljava/lang/Object;
.source "AddCustomAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/a;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

.field final synthetic e:Lcom/allinone/callerid/b/z/a$b;

.field final synthetic f:Lcom/allinone/callerid/b/z/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/a;Lcom/allinone/callerid/bean/recorder/CustomRecord;Lcom/allinone/callerid/b/z/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->f:Lcom/allinone/callerid/b/z/a;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/a$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    iput-object p3, p0, Lcom/allinone/callerid/b/z/a$a;->e:Lcom/allinone/callerid/b/z/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->isSelect()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->e:Lcom/allinone/callerid/b/z/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->O(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->e:Lcom/allinone/callerid/b/z/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->P(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->e:Lcom/allinone/callerid/b/z/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->Q(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/FrameLayout;

    move-result-object p1

    const v0, 0x7f060126

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->f:Lcom/allinone/callerid/b/z/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a;->D(Lcom/allinone/callerid/b/z/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/z/a$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->e:Lcom/allinone/callerid/b/z/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->O(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->e:Lcom/allinone/callerid/b/z/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->P(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->e:Lcom/allinone/callerid/b/z/a$b;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a$b;->Q(Lcom/allinone/callerid/b/z/a$b;)Landroid/widget/FrameLayout;

    move-result-object p1

    const v0, 0x7f060060

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->f:Lcom/allinone/callerid/b/z/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a;->D(Lcom/allinone/callerid/b/z/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/z/a$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/b/z/a$a;->f:Lcom/allinone/callerid/b/z/a;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/a;->E(Lcom/allinone/callerid/b/z/a;)Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomAddActivity;->f0()V

    return-void
.end method
