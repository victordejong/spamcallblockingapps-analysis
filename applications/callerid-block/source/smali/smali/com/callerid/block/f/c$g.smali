.class final Lcom/callerid/block/f/c$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/f/c;->e0(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/callerid/block/bean/EZSearchContacts;)V
    .locals 2

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u672c\u5730\u4fdd\u5b58\u7684\u5eab\u8fd4\u56de\u6578\u64da\uff0c\u8a72\u5eab\u8fd4\u56de\u6578\u64da\u76f4\u63a5\u5c55\u793a"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/callerid/block/f/c;->M(Lcom/callerid/block/bean/EZSearchContacts;)V

    return-void
.end method

.method public b(Lcom/callerid/block/bean/EZSearchContacts;Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u96e2\u7dda\u89e3\u6790\u5668\u67e5\u8a62\u7d50\u679c"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callerid/block/bean/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x8

    const-string v4, ""

    if-eqz v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/callerid/block/f/c;->J()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/callerid/block/f/c;->R()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/callerid/block/f/c;->Q()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :try_start_0
    new-instance p1, Lcom/callerid/block/f/c$j;

    invoke-static {}, Lcom/callerid/block/f/c;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, p2}, Lcom/callerid/block/f/c$j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
