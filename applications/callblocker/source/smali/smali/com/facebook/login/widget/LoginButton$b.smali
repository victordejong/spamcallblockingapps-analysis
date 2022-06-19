.class public Lcom/facebook/login/widget/LoginButton$b;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/widget/LoginButton;


# direct methods
.method protected constructor <init>(Lcom/facebook/login/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$b;->b()Lcom/facebook/login/m;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$a;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$a;->a(Lcom/facebook/login/widget/LoginButton$a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/m;->a(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V

    .line 806
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 802
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getNativeFragment()Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$a;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$a;->a(Lcom/facebook/login/widget/LoginButton$a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/m;->a(Landroid/app/Fragment;Ljava/util/Collection;)V

    goto :goto_0

    .line 804
    :cond_1
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v1}, Lcom/facebook/login/widget/LoginButton;->e(Lcom/facebook/login/widget/LoginButton;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton;->d(Lcom/facebook/login/widget/LoginButton;)Lcom/facebook/login/widget/LoginButton$a;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/login/widget/LoginButton$a;->a(Lcom/facebook/login/widget/LoginButton$a;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/m;->a(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 809
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$b;->b()Lcom/facebook/login/m;

    move-result-object v1

    .line 810
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/login/widget/LoginButton;->f(Lcom/facebook/login/widget/LoginButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/login/q$d;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 814
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/facebook/login/q$d;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 817
    invoke-static {}, Lcom/facebook/r;->a()Lcom/facebook/r;

    move-result-object v0

    .line 818
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/r;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 819
    iget-object v4, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    .line 820
    invoke-virtual {v4}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/login/q$d;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 822
    invoke-virtual {v0}, Lcom/facebook/r;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 819
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 828
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 829
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v5, Lcom/facebook/login/widget/LoginButton$b$1;

    invoke-direct {v5, p0, v1}, Lcom/facebook/login/widget/LoginButton$b$1;-><init>(Lcom/facebook/login/widget/LoginButton$b;Lcom/facebook/login/m;)V

    .line 830
    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 835
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 836
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 840
    :goto_1
    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/facebook/login/q$d;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 838
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/login/m;->b()V

    goto :goto_1
.end method

.method protected b()Lcom/facebook/login/m;
    .locals 2

    .prologue
    .line 843
    invoke-static {}, Lcom/facebook/login/m;->a()Lcom/facebook/login/m;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getDefaultAudience()Lcom/facebook/login/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/m;->a(Lcom/facebook/login/b;)Lcom/facebook/login/m;

    .line 845
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getLoginBehavior()Lcom/facebook/login/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/m;->a(Lcom/facebook/login/i;)Lcom/facebook/login/m;

    .line 846
    iget-object v1, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v1}, Lcom/facebook/login/widget/LoginButton;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/m;->a(Ljava/lang/String;)Lcom/facebook/login/m;

    .line 847
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 774
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0, p1}, Lcom/facebook/login/widget/LoginButton;->a(Lcom/facebook/login/widget/LoginButton;Landroid/view/View;)V

    .line 776
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object v0

    .line 777
    invoke-static {}, Lcom/facebook/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 779
    iget-object v3, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v3}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/login/widget/LoginButton$b;->a(Landroid/content/Context;)V

    .line 784
    :goto_0
    new-instance v3, Lcom/facebook/a/m;

    iget-object v4, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-virtual {v4}, Lcom/facebook/login/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/a/m;-><init>(Landroid/content/Context;)V

    .line 786
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 787
    const-string/jumbo v5, "logging_in"

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    const-string/jumbo v0, "access_token_expired"

    .line 792
    invoke-static {}, Lcom/facebook/a;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 790
    :goto_2
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 794
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$b;->a:Lcom/facebook/login/widget/LoginButton;

    invoke-static {v0}, Lcom/facebook/login/widget/LoginButton;->c(Lcom/facebook/login/widget/LoginButton;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lcom/facebook/a/m;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 795
    return-void

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/widget/LoginButton$b;->a()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 787
    goto :goto_1

    :cond_2
    move v2, v1

    .line 792
    goto :goto_2
.end method
