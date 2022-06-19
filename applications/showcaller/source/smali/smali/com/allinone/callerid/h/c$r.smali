.class Lcom/allinone/callerid/h/c$r;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/b0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->z0(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    iput-object p2, p0, Lcom/allinone/callerid/h/c$r;->a:Ljava/lang/String;

    iput p3, p0, Lcom/allinone/callerid/h/c$r;->b:I

    iput p4, p0, Lcom/allinone/callerid/h/c$r;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/model/EZSearchContacts;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched()Z

    move-result v1

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->isSearched_buyu()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    iget-object v4, p0, Lcom/allinone/callerid/h/c$r;->a:Ljava/lang/String;

    iget v5, p0, Lcom/allinone/callerid/h/c$r;->b:I

    iget v6, p0, Lcom/allinone/callerid/h/c$r;->c:I

    invoke-static {v1, v4, v5, v6, v2}, Lcom/allinone/callerid/h/c;->D(Lcom/allinone/callerid/h/c;Ljava/lang/String;IIZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    iget-object v2, v1, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/allinone/callerid/h/c$r;->c:I

    if-ne v2, v3, :cond_1

    .line 5
    invoke-static {v1}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    iget-object v5, v4, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v4}, Lcom/allinone/callerid/h/b;->c(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "callstatus"

    const-string v2, "\u964c\u751f\u672c\u5730\u6709\u6570\u636e\u5c55\u793a"

    .line 7
    invoke-static {v1, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget v1, p0, Lcom/allinone/callerid/h/c$r;->c:I

    if-ne v1, v3, :cond_2

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "unknow_searched_ok"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 10
    iget v1, p0, Lcom/allinone/callerid/h/c$r;->b:I

    if-ne v1, v3, :cond_2

    .line 11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "unknow_incoming_searched_ok"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 12
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->E(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->f(Lcom/allinone/callerid/h/c;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->f(Lcom/allinone/callerid/h/c;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->F(Lcom/allinone/callerid/h/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->H(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->H(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    if-eqz v1, :cond_5

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 19
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->I(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_5
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    .line 22
    :cond_6
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 24
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2, v1}, Lcom/allinone/callerid/h/c;->B(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2, v1}, Lcom/allinone/callerid/h/c;->J(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 29
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0801b4

    iget-object v6, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->K(Lcom/allinone/callerid/h/c;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v2, v1, v5, v6}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_9

    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 33
    iget-object v5, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v5}, Lcom/allinone/callerid/h/c;->M(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 34
    :cond_9
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->M(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v5, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v5}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :goto_2
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 37
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->N(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->N(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 39
    :cond_a
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2, v1}, Lcom/allinone/callerid/h/c;->P(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->Q(Lcom/allinone/callerid/h/c;)I

    move-result v2

    if-ne v2, v3, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 42
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->K(Lcom/allinone/callerid/h/c;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->R(Lcom/allinone/callerid/h/c;)V

    .line 44
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->S(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v5}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->U(Lcom/allinone/callerid/h/c;)I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 48
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->V(Lcom/allinone/callerid/h/c;)V

    .line 49
    :cond_b
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->v1(Z)V

    goto :goto_3

    .line 50
    :cond_c
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->v1(Z)V

    .line 51
    :goto_3
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->Q(Lcom/allinone/callerid/h/c;)I

    move-result v1

    if-ne v1, v3, :cond_12

    .line 52
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getSubtype()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getKeyword()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "keyword_show"

    if-eqz v1, :cond_10

    .line 54
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 55
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 57
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "subtype_show"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "subtype"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->S(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->W(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_d

    .line 63
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->Y(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :cond_d
    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->W(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0, v3}, Lcom/allinone/callerid/h/c;->a0(Lcom/allinone/callerid/h/c;Z)Z

    goto/16 :goto_4

    :cond_e
    if-eqz v2, :cond_12

    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 67
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->S(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->W(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 71
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->Y(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->W(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0, v3}, Lcom/allinone/callerid/h/c;->a0(Lcom/allinone/callerid/h/c;Z)Z

    goto :goto_4

    :cond_10
    if-eqz v2, :cond_12

    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 75
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->S(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->W(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_11

    .line 79
    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->Y(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :cond_11
    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->W(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0, v3}, Lcom/allinone/callerid/h/c;->a0(Lcom/allinone/callerid/h/c;Z)Z

    .line 82
    :cond_12
    :goto_4
    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->Q(Lcom/allinone/callerid/h/c;)I

    move-result v0

    if-ne v0, v3, :cond_15

    .line 83
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBlock_count()I

    move-result v0

    .line 84
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getDeclined_count()I

    move-result v1

    .line 85
    sget-boolean v2, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v2, :cond_13

    const-string v2, "wiki"

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "block_count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " declined_count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_13
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2, v0, v1}, Lcom/allinone/callerid/h/c;->b0(Lcom/allinone/callerid/h/c;II)V

    .line 88
    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->O(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->O(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x3

    if-ge v0, v2, :cond_14

    if-lt v1, v2, :cond_15

    .line 89
    :cond_14
    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0, v3}, Lcom/allinone/callerid/h/c;->d0(Lcom/allinone/callerid/h/c;Z)Z

    .line 90
    :cond_15
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getWiki_search_time()J

    move-result-wide v0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x5265c00

    cmp-long v4, v2, v0

    if-lez v4, :cond_16

    .line 92
    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/h/c$r;->a:Ljava/lang/String;

    iget v3, p0, Lcom/allinone/callerid/h/c$r;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/allinone/callerid/h/c;->e0(Lcom/allinone/callerid/h/c;Landroid/content/Context;Ljava/lang/String;I)V

    .line 93
    :cond_16
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->isSubtype_isserach()Z

    move-result p1

    if-nez p1, :cond_18

    .line 94
    iget-object p1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->a:Ljava/lang/String;

    iget v1, p0, Lcom/allinone/callerid/h/c$r;->c:I

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/h/c;->f0(Lcom/allinone/callerid/h/c;Ljava/lang/String;I)V

    goto :goto_5

    .line 95
    :cond_17
    iget-object p1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->a:Ljava/lang/String;

    iget v2, p0, Lcom/allinone/callerid/h/c$r;->b:I

    iget v3, p0, Lcom/allinone/callerid/h/c$r;->c:I

    invoke-static {p1, v1, v2, v3, v0}, Lcom/allinone/callerid/h/c;->D(Lcom/allinone/callerid/h/c;Ljava/lang/String;IIZ)V

    .line 96
    iget-object p1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/h/c$r;->a:Ljava/lang/String;

    iget v2, p0, Lcom/allinone/callerid/h/c$r;->c:I

    invoke-static {p1, v0, v1, v2}, Lcom/allinone/callerid/h/c;->e0(Lcom/allinone/callerid/h/c;Landroid/content/Context;Ljava/lang/String;I)V

    .line 97
    iget-object p1, p0, Lcom/allinone/callerid/h/c$r;->d:Lcom/allinone/callerid/h/c;

    iget-object v0, p0, Lcom/allinone/callerid/h/c$r;->a:Ljava/lang/String;

    iget v1, p0, Lcom/allinone/callerid/h/c$r;->c:I

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/h/c;->f0(Lcom/allinone/callerid/h/c;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_5
    return-void
.end method
