.class Lcom/allinone/callerid/mvc/controller/report/a$b;
.super Ljava/lang/Object;
.source "MyReportFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/w/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/report/a;->u2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/report/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/report/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/search/CallLogBean;",
            ">;III)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/report/a;->k2(Lcom/allinone/callerid/mvc/controller/report/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/report/a;->j2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/report/a;->m2(Lcom/allinone/callerid/mvc/controller/report/a;I)I

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1, p3}, Lcom/allinone/callerid/mvc/controller/report/a;->o2(Lcom/allinone/callerid/mvc/controller/report/a;I)I

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1, p4}, Lcom/allinone/callerid/mvc/controller/report/a;->q2(Lcom/allinone/callerid/mvc/controller/report/a;I)I

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->j2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p1

    const/16 p2, 0x8

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->j2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->a2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->a2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p4}, Lcom/allinone/callerid/mvc/controller/report/a;->j2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->a2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->r2(Lcom/allinone/callerid/mvc/controller/report/a;)Lcom/allinone/callerid/b/r;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->a2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->s2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->r2(Lcom/allinone/callerid/mvc/controller/report/a;)Lcom/allinone/callerid/b/r;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/report/a;->a2(Lcom/allinone/callerid/mvc/controller/report/a;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/b/r;->b(Ljava/util/ArrayList;)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->t2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->s2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->t2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->l2(Lcom/allinone/callerid/mvc/controller/report/a;)I

    move-result p1

    const-string p2, ""

    if-lez p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->b2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->c2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/report/a;->l2(Lcom/allinone/callerid/mvc/controller/report/a;)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->n2(Lcom/allinone/callerid/mvc/controller/report/a;)I

    move-result p1

    if-lez p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->d2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->e2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/report/a;->n2(Lcom/allinone/callerid/mvc/controller/report/a;)I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->p2(Lcom/allinone/callerid/mvc/controller/report/a;)I

    move-result p1

    if-lez p1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->f2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->g2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p4}, Lcom/allinone/callerid/mvc/controller/report/a;->p2(Lcom/allinone/callerid/mvc/controller/report/a;)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->s2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/report/a$b;->a:Lcom/allinone/callerid/mvc/controller/report/a;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/report/a;->t2(Lcom/allinone/callerid/mvc/controller/report/a;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method
