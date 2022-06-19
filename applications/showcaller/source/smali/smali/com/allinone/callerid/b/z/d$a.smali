.class Lcom/allinone/callerid/b/z/d$a;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/d;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

.field final synthetic e:Lcom/allinone/callerid/b/z/d$c;

.field final synthetic f:Lcom/allinone/callerid/b/z/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/d;Lcom/allinone/callerid/bean/recorder/CustomRecord;Lcom/allinone/callerid/b/z/d$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/d$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    iput-object p3, p0, Lcom/allinone/callerid/b/z/d$a;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d;->D(Lcom/allinone/callerid/b/z/d;)Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    move-result-object p1

    iget-boolean p1, p1, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->K:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->isSelect()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d$c;->O(Lcom/allinone/callerid/b/z/d$c;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d$c;->P(Lcom/allinone/callerid/b/z/d$c;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d$c;->Q(Lcom/allinone/callerid/b/z/d$c;)Landroid/widget/FrameLayout;

    move-result-object p1

    const v0, 0x7f060126

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d;->E(Lcom/allinone/callerid/b/z/d;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/z/d$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/bean/recorder/CustomRecord;->setSelect(Z)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d$c;->O(Lcom/allinone/callerid/b/z/d$c;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d$c;->P(Lcom/allinone/callerid/b/z/d$c;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->e:Lcom/allinone/callerid/b/z/d$c;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d$c;->Q(Lcom/allinone/callerid/b/z/d$c;)Landroid/widget/FrameLayout;

    move-result-object p1

    const v0, 0x7f060060

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d;->E(Lcom/allinone/callerid/b/z/d;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/z/d$a;->d:Lcom/allinone/callerid/bean/recorder/CustomRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/d;->D(Lcom/allinone/callerid/b/z/d;)Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;->h0()V

    goto :goto_1

    .line 14
    :cond_1
    new-instance p1, Landroidx/appcompat/app/a$a;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/d$a;->f:Lcom/allinone/callerid/b/z/d;

    invoke-static {v0}, Lcom/allinone/callerid/b/z/d;->F(Lcom/allinone/callerid/b/z/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f10007d

    .line 15
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->p(I)Landroidx/appcompat/app/a$a;

    move-result-object p1

    const v1, 0x7f100002

    .line 16
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/a$a;->g(I)Landroidx/appcompat/app/a$a;

    move-result-object p1

    new-instance v1, Lcom/allinone/callerid/b/z/d$a$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/b/z/d$a$b;-><init>(Lcom/allinone/callerid/b/z/d$a;)V

    .line 17
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/a$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    const v0, 0x7f1000bc

    new-instance v1, Lcom/allinone/callerid/b/z/d$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/b/z/d$a$a;-><init>(Lcom/allinone/callerid/b/z/d$a;)V

    .line 18
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/a$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    :goto_1
    return-void
.end method
