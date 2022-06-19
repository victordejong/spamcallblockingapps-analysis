.class Lcom/allinone/callerid/g/e$f;
.super Ljava/lang/Object;
.source "EZSearchFragment.java"

# interfaces
.implements Lcom/allinone/callerid/b/t$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e;->r3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->K2(Lcom/allinone/callerid/g/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/allinone/callerid/g/e;->L2(Lcom/allinone/callerid/g/e;Z)Z

    .line 5
    invoke-virtual {p2, v1}, Lcom/allinone/callerid/search/CallLogBean;->Q0(Z)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->V2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p2}, Lcom/allinone/callerid/g/e;->M2(Lcom/allinone/callerid/g/e;)Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f040126

    const v1, 0x7f060060

    invoke-static {p2, v0, v1}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->O2(Lcom/allinone/callerid/g/e;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->N2(Lcom/allinone/callerid/g/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->U2(Lcom/allinone/callerid/g/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/allinone/callerid/search/CallLogBean;

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->K2(Lcom/allinone/callerid/g/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->b0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Lcom/allinone/callerid/search/CallLogBean;->Q0(Z)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->V2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p2, v0}, Lcom/allinone/callerid/search/CallLogBean;->Q0(Z)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v0}, Lcom/allinone/callerid/g/e;->M2(Lcom/allinone/callerid/g/e;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040126

    const v2, 0x7f060060

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->V2(Lcom/allinone/callerid/g/e;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->N2(Lcom/allinone/callerid/g/e;)V

    goto/16 :goto_1

    .line 12
    :cond_1
    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->Y()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    const-string v2, "favtest"

    const-string v3, "contact_tony"

    if-eqz p1, :cond_3

    .line 13
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 14
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-virtual {v4, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 16
    invoke-virtual {p1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17
    iget-object v3, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v3}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v3

    const-class v4, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8054\u7cfb\u4eba\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    iget-object p2, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 21
    iget-object p1, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    .line 22
    :cond_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 23
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 24
    invoke-virtual {v4, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    invoke-virtual {p1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 26
    iget-object v3, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {v3}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object v3

    const-class v4, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 27
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_4

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u964c\u751f\u4eba\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/allinone/callerid/search/CallLogBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_4
    iget-object p2, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 30
    iget-object p1, p0, Lcom/allinone/callerid/g/e$f;->a:Lcom/allinone/callerid/g/e;

    invoke-static {p1}, Lcom/allinone/callerid/g/e;->e2(Lcom/allinone/callerid/g/e;)Lcom/allinone/callerid/mvc/controller/MainActivity;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return-void
.end method
