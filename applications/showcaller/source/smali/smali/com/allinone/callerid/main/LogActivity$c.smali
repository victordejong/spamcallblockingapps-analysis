.class Lcom/allinone/callerid/main/LogActivity$c;
.super Landroid/os/Handler;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allinone/callerid/main/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/main/LogActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/main/LogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    const-string v2, "\u6d4b\u8bd5\u7ed3\u679c\uff1aOK\n\n"

    if-eq v0, v1, :cond_12

    const/16 v1, 0x14

    if-eq v0, v1, :cond_11

    const/16 v1, 0x1e

    const-string v3, "\u8bf7\u6c42\u5931\u8d25\n\n"

    const/4 v4, 0x0

    if-eq v0, v1, :cond_10

    const/16 v1, 0x28

    const-string v5, "18813032887"

    if-eq v0, v1, :cond_f

    const/16 v1, 0x50

    if-eq v0, v1, :cond_e

    const/16 v1, 0x64

    if-eq v0, v1, :cond_d

    const/16 v1, 0x6e

    const-string v3, "\n\u5931\u8d25\u4e2a\u6570\uff1a"

    const-string v6, "\u6210\u529f\u4e2a\u6570\uff1a"

    if-eq v0, v1, :cond_c

    const/16 v1, 0xd2

    const-string v7, "2.\u6279\u91cf\u67e5\u8be2\u7684\u7ed3\u679c\uff1a\n"

    const-string v8, "\u6d4b\u8bd5\u7ed3\u679c\uff1aFailed\n\n"

    if-eq v0, v1, :cond_b

    const/16 v1, 0xd3

    if-eq v0, v1, :cond_a

    const/16 v1, 0x136

    const-string v7, "3.\u53f7\u7801\u67e5\u8be2\u7684\u7ed3\u679c\uff1a\n"

    if-eq v0, v1, :cond_9

    const/16 v1, 0x137

    if-eq v0, v1, :cond_8

    const/16 v1, 0x19a

    const-string v7, "4.\u83b7\u53d6CC\u8bf7\u6c42\uff1a\n"

    if-eq v0, v1, :cond_7

    const/16 v1, 0x19b

    if-eq v0, v1, :cond_6

    const/16 v1, 0x32a

    const-string v2, "5.\u65e5\u5fd7\u6536\u96c6\u63a5\u53e3\uff1a\n"

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3f2

    const-string v2, "7.\u68c0\u67e5\u79bb\u7ebfdb\u63a5\u53e3\uff08\u65b0\uff09\uff1a\n"

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3f3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x456

    if-eq v0, v1, :cond_1

    const/16 v1, 0x457

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->b0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8.\u68c0\u67e5\u79bb\u7ebf\u89e3\u6790\u5668\u63a5\u53e3\uff1a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->c0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u68c0\u67e5\u79bb\u7ebf\u89e3\u6790\u5668\u7ed3\u679c\uff1aOK\n\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->h0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v1}, Lcom/allinone/callerid/main/LogActivity;->d0(Lcom/allinone/callerid/main/LogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v1}, Lcom/allinone/callerid/main/LogActivity;->f0(Lcom/allinone/callerid/main/LogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->b0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8.\u68c0\u67e5\u79bb\u7ebf\u89e3\u6790\u5668\uff1a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->c0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u68c0\u67e5\u79bb\u7ebf\u89e3\u6790\u5668\uff1aFailed\n\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->h0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v1}, Lcom/allinone/callerid/main/LogActivity;->d0(Lcom/allinone/callerid/main/LogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v1}, Lcom/allinone/callerid/main/LogActivity;->f0(Lcom/allinone/callerid/main/LogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 11
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->Z(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->a0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u68c0\u67e5\u79bb\u7ebfdb\u63a5\u53e3\uff08\u65b0\uff09\u7ed3\u679c\uff1aOK\n\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$j;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$j;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 15
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->Z(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->a0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u68c0\u67e5\u79bb\u7ebfdb\u63a5\u53e3\uff08\u65b0\uff09\u7ed3\u679c\uff1aFailed\n\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$j;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$j;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 19
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->X(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->Y(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u65e5\u5fd7\u6536\u96c6\u63a5\u53e3\u7ed3\u679c\uff1aOK\n\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$i;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$i;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 23
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->X(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->Y(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u65e5\u5fd7\u6536\u96c6\u63a5\u53e3\u7ed3\u679c\uff1aFailed\n\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$i;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$i;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 27
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->u0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->v0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1, v5}, Lcom/allinone/callerid/main/LogActivity;->w0(Lcom/allinone/callerid/main/LogActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->u0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->u0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->v0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1, v5}, Lcom/allinone/callerid/main/LogActivity;->w0(Lcom/allinone/callerid/main/LogActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 36
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->s0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->s0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->t0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$f;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$f;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 41
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->s0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->s0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->t0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$f;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$f;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 46
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->q0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->q0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->r0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$h;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$h;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 51
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->q0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->q0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/customview/ExpandTextView;->setContent(Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->r0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$h;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$h;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 56
    :cond_c
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->c0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "8.\u68c0\u67e5\u79bb\u7ebf\u89e3\u6790\u5668\u8bf7\u6c42\u5931\u8d25\n\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->h0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v1}, Lcom/allinone/callerid/main/LogActivity;->d0(Lcom/allinone/callerid/main/LogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v1}, Lcom/allinone/callerid/main/LogActivity;->f0(Lcom/allinone/callerid/main/LogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 58
    :cond_d
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->a0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "7.\u68c0\u67e5\u79bb\u7ebfdb\u63a5\u53e3\uff08\u65b0\uff09\u8bf7\u6c42\u5931\u8d25\n\n"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$j;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$j;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 60
    :cond_e
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->Y(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$i;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$i;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 62
    :cond_f
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->v0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1, v5}, Lcom/allinone/callerid/main/LogActivity;->w0(Lcom/allinone/callerid/main/LogActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_10
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->s0(Lcom/allinone/callerid/main/LogActivity;)Lcom/allinone/callerid/customview/ExpandTextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->t0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$f;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$f;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 67
    :cond_11
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->r0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$h;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$h;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 69
    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {v0}, Lcom/allinone/callerid/main/LogActivity;->W(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.\u83b7\u53d6\u670d\u52a1\u7aef\u7684\u65f6\u95f4\uff1a\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/allinone/callerid/util/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->j0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    new-instance p1, Lcom/allinone/callerid/main/LogActivity$g;

    iget-object v0, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-direct {p1, v0}, Lcom/allinone/callerid/main/LogActivity$g;-><init>(Lcom/allinone/callerid/main/LogActivity;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 73
    :cond_13
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->W(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/allinone/callerid/main/LogActivity$c;->a:Lcom/allinone/callerid/main/LogActivity;

    invoke-static {p1}, Lcom/allinone/callerid/main/LogActivity;->j0(Lcom/allinone/callerid/main/LogActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u83b7\u53d6\u670d\u52a1\u7aef\u7684\u65f6\u95f4\uff1a\u8fd4\u56de\u503c\u4e3a\u7a7a\uff0c\u8bf7\u67e5\u770b\u7f51\u7edc\u7b49\u539f\u56e0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
