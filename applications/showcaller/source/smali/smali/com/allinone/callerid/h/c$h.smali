.class Lcom/allinone/callerid/h/c$h;
.super Ljava/lang/Object;
.source "OverlayView.java"

# interfaces
.implements Lcom/allinone/callerid/l/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/h/c;->K0(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/h/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/h/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/model/EZSearchContacts;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u96e2\u7dda\u89e3\u6790\u5668\u67e5\u8a62\u7d50\u679c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wbb"

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_5

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->E(Lcom/allinone/callerid/h/c;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->f(Lcom/allinone/callerid/h/c;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->f(Lcom/allinone/callerid/h/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v1}, Lcom/allinone/callerid/h/c;->F(Lcom/allinone/callerid/h/c;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getOperator()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object p1

    const-string v4, ""

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    iget-object v5, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v5}, Lcom/allinone/callerid/h/c;->N(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->N(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    if-eqz v3, :cond_3

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->M(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->M(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->H(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->H(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->I(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->G(Lcom/allinone/callerid/h/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {p1}, Lcom/allinone/callerid/h/c;->z(Lcom/allinone/callerid/h/c;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    invoke-static {v0}, Lcom/allinone/callerid/h/c;->C(Lcom/allinone/callerid/h/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/h/c$h$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/h/c$h$a;-><init>(Lcom/allinone/callerid/h/c$h;)V

    invoke-static {p1, v0, p2, v1}, Lcom/allinone/callerid/i/a/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/allinone/callerid/i/a/n/b;)V

    return-void
.end method

.method public b(Lcom/allinone/callerid/model/EZSearchContacts;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "wbb"

    const-string v1, "\u672c\u5730\u4fdd\u5b58\u7684\u5eab\u8fd4\u56de\u6578\u64da\uff0c\u8a72\u5eab\u8fd4\u56de\u6578\u64da\u76f4\u63a5\u5c55\u793a"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "search_offline_location_ok_new"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/h/c$h;->a:Lcom/allinone/callerid/h/c;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/h/c;->s0(Lcom/allinone/callerid/h/c;Lcom/allinone/callerid/model/EZSearchContacts;Z)V

    return-void
.end method
