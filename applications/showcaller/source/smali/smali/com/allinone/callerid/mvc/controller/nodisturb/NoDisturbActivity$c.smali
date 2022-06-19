.class Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;
.super Ljava/lang/Object;
.source "NoDisturbActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->e:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->e:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    const v0, 0x7f100018

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->e:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/dialog/m;->j(Landroid/app/Activity;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p2}, Lcom/allinone/callerid/util/i1/a;->m(I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->e:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->e0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->e:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->e:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1, p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->f0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;Z)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Lcom/allinone/callerid/util/i1/a;->m(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->e:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->e0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;->e:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    const v0, 0x7f100294

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
