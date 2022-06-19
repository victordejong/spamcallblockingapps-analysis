.class Lcom/callerid/block/start/LogActivity$e;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/start/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callerid/block/start/LogActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/callerid/block/start/LogActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callerid/block/start/LogActivity$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/callerid/block/start/LogActivity$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callerid/block/start/LogActivity;

    if-eqz v0, :cond_14

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_13

    const/4 v2, 0x1

    const-string v3, "\u6d4b\u8bd5\u7ed3\u679c\uff1aOK\n\n"

    if-eq v1, v2, :cond_12

    const/16 v2, 0x14

    if-eq v1, v2, :cond_11

    const/16 v2, 0x1e

    const-string v4, "\u8bf7\u6c42\u5931\u8d25\n\n"

    const/4 v5, 0x0

    if-eq v1, v2, :cond_10

    const/16 v2, 0x28

    if-eq v1, v2, :cond_f

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_e

    const/16 v2, 0x46

    if-eq v1, v2, :cond_d

    const/16 v2, 0x64

    const-string v4, "\u5931\u8d25\u4e2a\u6570\uff1a"

    const-string v6, "\n"

    const-string v7, "\u6210\u529f\u4e2a\u6570\uff1a"

    if-eq v1, v2, :cond_c

    const/16 v2, 0xd2

    const-string v8, "2.\u6279\u91cf\u67e5\u8be2\u7684\u7ed3\u679c\uff1a\n"

    const-string v9, "\u6d4b\u8bd5\u7ed3\u679c\uff1aFailed\n\n"

    if-eq v1, v2, :cond_b

    const/16 v2, 0xd3

    if-eq v1, v2, :cond_a

    const/16 v2, 0x136

    const-string v8, "3.\u53f7\u7801\u67e5\u8be2\u7684\u7ed3\u679c\uff1a\n"

    if-eq v1, v2, :cond_9

    const/16 v2, 0x137

    if-eq v1, v2, :cond_8

    const/16 v2, 0x19a

    const-string v8, "4.\u83b7\u53d6CC\u8bf7\u6c42\uff1a\n"

    if-eq v1, v2, :cond_7

    const/16 v2, 0x19b

    if-eq v1, v2, :cond_6

    const/16 v2, 0x262

    const-string v8, "5.\u68c0\u67e5\u79bb\u7ebf\u6570\u636e\u662f\u5426\u66f4\u65b0\uff1a\n"

    if-eq v1, v2, :cond_5

    const/16 v2, 0x263

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2c6

    const-string v3, "6.\u9996\u6b21\u83b7\u53d6\u79bb\u7ebfspam\u6570\u636e\uff1a\n"

    if-eq v1, v2, :cond_3

    const/16 v2, 0x2c7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3f2

    const-string v3, "7.\u65e5\u5fd7\u6536\u96c6\u63a5\u53e3\uff1a\n"

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3f3

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->T(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->U(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "\u65e5\u5fd7\u6536\u96c6\u63a5\u53e3\u7ed3\u679c\uff1aOK\n\n"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->Z(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->T(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->U(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "\u65e5\u5fd7\u6536\u96c6\u63a5\u53e3\u7ed3\u679c\uff1aFailed\n\n"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->Z(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->R(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->R(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callerid/block/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->S(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "\u9996\u6b21\u83b7\u53d6\u79bb\u7ebfspam\u6570\u636e\u6d4b\u8bd5\u7ed3\u679c\uff1aOK\n\n"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$j;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->R(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->R(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callerid/block/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->S(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "\u9996\u6b21\u83b7\u53d6\u79bb\u7ebfspam\u6570\u636e\u6d4b\u8bd5\u7ed3\u679c\uff1aFailed\n\n"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$j;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->n0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->Q(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$i;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->n0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->Q(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$i;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->l0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->m0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$h;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->l0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->l0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->m0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$h;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->j0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->j0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callerid/block/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->k0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$d;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->j0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->j0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callerid/block/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->k0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$d;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->h0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->h0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callerid/block/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->i0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$g;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->h0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->h0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/callerid/block/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->i0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$g;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_c
    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->U(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "7.\u65e5\u5fd7\u6536\u96c6\u63a5\u53e3\u8bf7\u6c42\u5931\u8d25\n\n"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->Z(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->V(Lcom/callerid/block/start/LogActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->X(Lcom/callerid/block/start/LogActivity;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->S(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$j;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto/16 :goto_1

    :cond_e
    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->Q(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$i;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto :goto_1

    :cond_f
    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->m0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$h;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto :goto_1

    :cond_10
    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->j0(Lcom/callerid/block/start/LogActivity;)Lcom/callerid/block/customview/ExpandTextView;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->k0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$d;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto :goto_1

    :cond_11
    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->i0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$g;-><init>(Lcom/callerid/block/start/LogActivity;)V

    goto :goto_1

    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->O(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1.\u83b7\u53d6\u670d\u52a1\u7aef\u7684\u65f6\u95f4\uff1a\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/callerid/block/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->c0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/callerid/block/start/LogActivity$f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, v0}, Lcom/callerid/block/start/LogActivity$f;-><init>(Lcom/callerid/block/start/LogActivity;)V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :cond_13
    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->O(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/callerid/block/start/LogActivity;->c0(Lcom/callerid/block/start/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u670d\u52a1\u7aef\u7684\u65f6\u95f4\uff1a\u8fd4\u56de\u503c\u4e3a\u7a7a\uff0c\u8bf7\u67e5\u770b\u7f51\u7edc\u7b49\u539f\u56e0"

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_14
    :goto_3
    return-void
.end method
