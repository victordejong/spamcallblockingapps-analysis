.class Lcom/allinone/callerid/g/i$a$b;
.super Ljava/lang/Object;
.source "UnknownContentFragment.java"

# interfaces
.implements Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity$m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/i$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/i$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->o2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->p2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->o2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->p2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->o2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->p2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->o2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->p2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(ZLjava/lang/String;)V
    .locals 3

    const-string v0, " "

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->m2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->n2(Lcom/allinone/callerid/g/i;)Lcom/allinone/callerid/search/CallLogBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/allinone/callerid/search/CallLogBean;->x()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v2, ""

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr v1, p1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->m2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p2, p2, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->X()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1002a3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->m2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->m2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/g/i$a$b;->a:Lcom/allinone/callerid/g/i$a;

    iget-object p1, p1, Lcom/allinone/callerid/g/i$a;->d:Lcom/allinone/callerid/g/i;

    invoke-static {p1}, Lcom/allinone/callerid/g/i;->m2(Lcom/allinone/callerid/g/i;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
