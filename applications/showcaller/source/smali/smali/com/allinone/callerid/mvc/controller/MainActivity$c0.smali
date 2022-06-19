.class Lcom/allinone/callerid/mvc/controller/MainActivity$c0;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->l1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a1(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1, v2}, Lcom/allinone/callerid/mvc/controller/MainActivity;->b1(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/github/clans/fab/FloatingActionButton;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->e0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 7
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a1(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1, v2}, Lcom/allinone/callerid/mvc/controller/MainActivity;->b1(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)V

    .line 10
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/github/clans/fab/FloatingActionButton;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->e0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 13
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a1(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1, v2}, Lcom/allinone/callerid/mvc/controller/MainActivity;->b1(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)V

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->c0(Lcom/allinone/callerid/mvc/controller/MainActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    .line 17
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/github/clans/fab/FloatingActionButton;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->d0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 21
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->Z0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a1(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1, v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->b1(Lcom/allinone/callerid/mvc/controller/MainActivity;Z)V

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->c1(Lcom/allinone/callerid/mvc/controller/MainActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageResource(I)V

    .line 25
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->a0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/github/clans/fab/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/github/clans/fab/FloatingActionButton;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$c0;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->b0(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception p1

    .line 28
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
