.class Lcom/allinone/callerid/h/c$e;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->L0(Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    iput p2, p0, Lcom/allinone/callerid/h/c$e;->a:I

    iput p3, p0, Lcom/allinone/callerid/h/c$e;->b:I

    iput-boolean p4, p0, Lcom/allinone/callerid/h/c$e;->c:Z

    iput-object p5, p0, Lcom/allinone/callerid/h/c$e;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    iget-object v1, v0, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    iget-object v3, v2, Lcom/allinone/callerid/h/c;->l0:Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/allinone/callerid/h/c;->m0(Lcom/allinone/callerid/h/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/allinone/callerid/h/b;->c(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowManager$LayoutParams;)V

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "callstatus"

    const-string v1, "\u672a\u67e5\u8be2\u8fc7\u7684\u5c55\u793a\u60ac\u6d6e\u7a97"

    .line 4
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_21

    const-string v0, ""

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "status"

    .line 7
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1f

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->E(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->f(Lcom/allinone/callerid/h/c;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->f(Lcom/allinone/callerid/h/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object v3, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v3}, Lcom/allinone/callerid/h/c;->F(Lcom/allinone/callerid/h/c;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    :cond_1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "searchNumber"

    if-eqz p1, :cond_2

    :try_start_1
    const-string p1, "\u67e5\u8be2\u5b8c\u6210"

    .line 12
    invoke-static {v3, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "type_label"

    .line 14
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v5, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v5, p1}, Lcom/allinone/callerid/h/c;->P(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;

    const-string v5, "name"

    .line 16
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format_tel_number"

    .line 17
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->H(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->H(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    if-eqz v6, :cond_4

    .line 19
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 20
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->I(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_4
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6, v5}, Lcom/allinone/callerid/h/c;->J(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->A(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 24
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 25
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6, v5}, Lcom/allinone/callerid/h/c;->B(Lcom/allinone/callerid/h/c;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    const-string v6, "report_count"

    .line 27
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_7

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 29
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->K(Lcom/allinone/callerid/h/c;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0x7f08005e

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->R(Lcom/allinone/callerid/h/c;)V

    .line 31
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->S(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->T(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f100069

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->U(Lcom/allinone/callerid/h/c;)I

    move-result v6

    if-ne v6, v2, :cond_7

    .line 35
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->V(Lcom/allinone/callerid/h/c;)V

    :cond_7
    const-string v6, "avatar"

    .line 36
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 37
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 38
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0801b4

    iget-object v9, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v9}, Lcom/allinone/callerid/h/c;->K(Lcom/allinone/callerid/h/c;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-static {v7, v6, v8, v9}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    :cond_8
    const-string v6, "belong_area"

    .line 39
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 40
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 41
    sget-boolean v7, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v7, :cond_9

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u4f4d\u7f6e\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_9
    iget-object v7, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v7}, Lcom/allinone/callerid/h/c;->N(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->N(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v6

    const-string v7, "search_number_float_success"

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/allinone/callerid/util/f0;->E(Landroid/content/Context;)V

    :cond_a
    const-string v6, "operator"

    .line 47
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    .line 48
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_b

    .line 49
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    if-eqz v7, :cond_b

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 50
    iget-object v8, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v8}, Lcom/allinone/callerid/h/c;->M(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v10}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 51
    :cond_b
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->M(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v8}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/allinone/callerid/util/h1;->J(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :goto_1
    iget v6, p0, Lcom/allinone/callerid/h/c$e;->a:I

    if-ne v6, v2, :cond_e

    .line 53
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->i0(Lcom/allinone/callerid/h/c;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 54
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v6, :cond_c

    const-string v6, "wiki"

    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is_search_wiki_ok--block_count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v8}, Lcom/allinone/callerid/h/c;->k0(Lcom/allinone/callerid/h/c;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " declined_count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v8}, Lcom/allinone/callerid/h/c;->n0(Lcom/allinone/callerid/h/c;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_c
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->p0(Lcom/allinone/callerid/h/c;)V

    .line 57
    :cond_d
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6, v2}, Lcom/allinone/callerid/h/c;->d0(Lcom/allinone/callerid/h/c;Z)Z

    :cond_e
    if-eqz v5, :cond_10

    .line 58
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 59
    iget v6, p0, Lcom/allinone/callerid/h/c$e;->b:I

    if-ne v6, v2, :cond_f

    .line 60
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v6

    const-string v7, "unknown_incoming_search_name_ok"

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 61
    :cond_f
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v6

    const-string v7, "new_search_name_success"

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/allinone/callerid/util/f0;->F(Landroid/content/Context;)V

    :cond_10
    if-eqz p1, :cond_12

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 64
    iget v6, p0, Lcom/allinone/callerid/h/c$e;->b:I

    if-ne v6, v2, :cond_11

    .line 65
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v6

    const-string v7, "unknown_incoming_search_spam_ok"

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 66
    :cond_11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v6

    const-string v7, "search_number_float_spam"

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/allinone/callerid/util/f0;->L(Landroid/content/Context;)V

    :cond_12
    const-string v6, "soft_comments"

    .line 68
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 69
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_13

    .line 70
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/allinone/callerid/util/f0;->B(Landroid/content/Context;)V

    :cond_13
    const-string v6, "e164_tel_number"

    .line 71
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 72
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 73
    iget v7, p0, Lcom/allinone/callerid/h/c$e;->b:I

    if-ne v7, v2, :cond_14

    .line 74
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v7

    const-string v8, "unknown_incoming_search_e164_ok"

    invoke-virtual {v7, v8}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    :cond_14
    const-string v7, "cc"

    .line 75
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "faild_error_log"

    .line 76
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 77
    iget v9, p0, Lcom/allinone/callerid/h/c$e;->b:I

    if-ne v9, v2, :cond_15

    iget-boolean v9, p0, Lcom/allinone/callerid/h/c$e;->c:Z

    if-nez v9, :cond_15

    .line 78
    iget-object v9, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    iget-object v10, p0, Lcom/allinone/callerid/h/c$e;->d:Ljava/lang/String;

    invoke-static {v9, v10, v7, v6, v8}, Lcom/allinone/callerid/h/c;->q0(Lcom/allinone/callerid/h/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_15
    if-nez v8, :cond_16

    .line 79
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v6

    const-string v7, "new_search_failed"

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_16
    if-ne v8, v2, :cond_19

    .line 80
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v6

    const-string v7, "new_search_success"

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 81
    iget v6, p0, Lcom/allinone/callerid/h/c$e;->b:I

    if-ne v6, v2, :cond_18

    .line 82
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v6

    const-string v7, "unknown_incoming_search_ok"

    invoke-virtual {v6, v7}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 83
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->d:Ljava/lang/String;

    const-string v7, "140"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->d:Ljava/lang/String;

    const-string v7, "+91140"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->d:Ljava/lang/String;

    const-string v7, "0091140"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 84
    :cond_17
    iget-object v6, p0, Lcom/allinone/callerid/h/c$e;->e:Lcom/allinone/callerid/h/c;

    invoke-static {v6}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/allinone/callerid/util/f0;->D(Landroid/content/Context;)V

    .line 85
    :cond_18
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/allinone/callerid/util/f0;->G(Landroid/content/Context;)V

    :cond_19
    :goto_2
    const-string v6, "area_error_log"

    .line 86
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    if-eqz p1, :cond_1a

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_1a
    if-eqz v5, :cond_1d

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 88
    :cond_1b
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->w1(Z)V

    .line 89
    invoke-static {}, Lcom/allinone/callerid/util/a1;->v0()I

    move-result v5

    .line 90
    sget-boolean v6, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v6, :cond_1c

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "spam_or_name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    add-int/2addr v5, v2

    .line 92
    invoke-static {v5}, Lcom/allinone/callerid/util/a1;->c2(I)V

    goto :goto_3

    .line 93
    :cond_1d
    invoke-static {v4}, Lcom/allinone/callerid/util/a1;->w1(Z)V

    :goto_3
    if-eqz p1, :cond_1e

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 95
    invoke-static {v2}, Lcom/allinone/callerid/util/a1;->v1(Z)V

    goto :goto_4

    .line 96
    :cond_1e
    invoke-static {v4}, Lcom/allinone/callerid/util/a1;->v1(Z)V

    .line 97
    :goto_4
    iget-object p1, p0, Lcom/allinone/callerid/h/c$e;->d:Ljava/lang/String;

    invoke-static {v1, p1, v4}, Lcom/allinone/callerid/util/x0;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_1f
    const/16 v0, -0x14

    if-ne p1, v0, :cond_20

    .line 98
    invoke-static {}, Lcom/allinone/callerid/util/s;->a()V

    .line 99
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "search_result_status_20"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 100
    :cond_20
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "search_result_status_failed"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "search_number_exception"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    :cond_21
    :goto_5
    return-void
.end method
