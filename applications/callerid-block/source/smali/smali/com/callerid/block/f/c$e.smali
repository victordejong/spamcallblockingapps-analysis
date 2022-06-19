.class final Lcom/callerid/block/f/c$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/h/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/f/c;->W(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/f/c$e;->a:I

    iput-object p2, p0, Lcom/callerid/block/f/c$e;->b:Ljava/lang/String;

    iput p3, p0, Lcom/callerid/block/f/c$e;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callerid/block/bean/EZSearchContacts;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/callerid/block/f/c;->Q()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/f/c;->B()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/callerid/block/f/c;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/callerid/block/f/c;->C(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/callerid/block/f/c;->P()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/callerid/block/f/c;->P()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/callerid/block/f/c;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/callerid/block/f/c;->A()I

    move-result v4

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/callerid/block/util/p;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_4
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getTag_sub()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/callerid/block/f/c;->D()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/callerid/block/f/c;->E()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->F()Landroid/widget/RelativeLayout;

    move-result-object v3

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getTag_main()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Lcom/callerid/block/f/c;->G()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/callerid/block/f/c;->E()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->H()Landroid/widget/RelativeLayout;

    move-result-object v3

    goto :goto_4

    :cond_9
    :goto_5
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/callerid/block/f/c$e;->a:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    const v4, 0x7f080065

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    if-nez v1, :cond_b

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->I()V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    if-lez v1, :cond_c

    invoke-static {}, Lcom/callerid/block/f/c;->S()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->I()V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->K()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/callerid/block/util/n0;->Q0(Landroid/content/Context;Z)V

    goto :goto_7

    :cond_c
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callerid/block/util/n0;->Q0(Landroid/content/Context;Z)V

    :cond_d
    :goto_7
    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched()Z

    move-result v0

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->isSearched_buyu()Z

    move-result p1

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/callerid/block/f/c$e;->b:Ljava/lang/String;

    iget v1, p0, Lcom/callerid/block/f/c$e;->c:I

    iget v2, p0, Lcom/callerid/block/f/c$e;->a:I

    invoke-static {v0, v1, v2, p1}, Lcom/callerid/block/f/c;->L(Ljava/lang/String;IIZ)V

    goto :goto_8

    :cond_e
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "searched_ok"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget p1, p0, Lcom/callerid/block/f/c$e;->a:I

    if-ne p1, v5, :cond_10

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "unknow_searched_ok"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget p1, p0, Lcom/callerid/block/f/c$e;->c:I

    if-ne p1, v5, :cond_10

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "unknow_incoming_searched_ok"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    iget-object p1, p0, Lcom/callerid/block/f/c$e;->b:Ljava/lang/String;

    iget v1, p0, Lcom/callerid/block/f/c$e;->c:I

    iget v2, p0, Lcom/callerid/block/f/c$e;->a:I

    invoke-static {p1, v1, v2, v0}, Lcom/callerid/block/f/c;->L(Ljava/lang/String;IIZ)V

    :cond_10
    :goto_8
    return-void
.end method
