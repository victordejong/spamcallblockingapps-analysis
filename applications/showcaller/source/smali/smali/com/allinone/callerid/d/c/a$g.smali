.class Lcom/allinone/callerid/d/c/a$g;
.super Ljava/lang/Object;
.source "IncomingCallScreen.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/b0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/c/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/allinone/callerid/d/c/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    iput-object p2, p0, Lcom/allinone/callerid/d/c/a$g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/model/EZSearchContacts;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

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
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    iget-object v4, p0, Lcom/allinone/callerid/d/c/a$g;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->u(Lcom/allinone/callerid/d/c/a;)I

    move-result v5

    invoke-static {v1, v4, v5, v2}, Lcom/allinone/callerid/d/c/a;->v(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->u(Lcom/allinone/callerid/d/c/a;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "unknow_searched_ok"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "unknow_incoming_searched_ok"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/c/a;->w(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/c/a;->w(Lcom/allinone/callerid/d/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/c/a;->f(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->u(Lcom/allinone/callerid/d/c/a;)I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 14
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/c/a;->h(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getAvatar()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 17
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0801b4

    iget-object v6, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v6}, Lcom/allinone/callerid/d/c/a;->i(Lcom/allinone/callerid/d/c/a;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v2, v1, v5, v6}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getBelong_area()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 20
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/c/a;->j(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->j(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    :cond_6
    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getType_label()Ljava/lang/String;

    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v2}, Lcom/allinone/callerid/d/c/a;->u(Lcom/allinone/callerid/d/c/a;)I

    move-result v2

    if-ne v2, v3, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 24
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->i(Lcom/allinone/callerid/d/c/a;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f08005e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->k(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {v1}, Lcom/allinone/callerid/d/c/a;->l(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/allinone/callerid/model/EZSearchContacts;->getReport_count()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->d(Lcom/allinone/callerid/d/c/a;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f100069

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->l(Lcom/allinone/callerid/d/c/a;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    invoke-static {v3}, Lcom/allinone/callerid/util/a1;->v1(Z)V

    goto :goto_1

    .line 29
    :cond_7
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->v1(Z)V

    goto :goto_1

    .line 30
    :cond_8
    iget-object p1, p0, Lcom/allinone/callerid/d/c/a$g;->b:Lcom/allinone/callerid/d/c/a;

    iget-object v1, p0, Lcom/allinone/callerid/d/c/a$g;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/allinone/callerid/d/c/a;->u(Lcom/allinone/callerid/d/c/a;)I

    move-result v2

    invoke-static {p1, v1, v2, v0}, Lcom/allinone/callerid/d/c/a;->v(Lcom/allinone/callerid/d/c/a;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
