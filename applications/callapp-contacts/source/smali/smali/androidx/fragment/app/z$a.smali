.class final Landroidx/fragment/app/z$a;
.super Landroidx/fragment/app/z$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final f:Landroidx/fragment/app/p;


# direct methods
.method constructor <init>(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/p;Landroidx/core/os/a;)V
    .locals 1

    .line 1149
    iget-object v0, p3, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 705
    invoke-direct {p0, p1, p2, v0, p4}, Landroidx/fragment/app/z$b;-><init>(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V

    .line 707
    iput-object p3, p0, Landroidx/fragment/app/z$a;->f:Landroidx/fragment/app/p;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 1549
    iget-object v0, p0, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    .line 712
    sget-object v1, Landroidx/fragment/app/z$b$a;->ADDING:Landroidx/fragment/app/z$b$a;

    if-ne v0, v1, :cond_3

    .line 713
    iget-object v0, p0, Landroidx/fragment/app/z$a;->f:Landroidx/fragment/app/p;

    .line 2149
    iget-object v0, v0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 714
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    const/4 v2, 0x2

    .line 717
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestFocus: Saved focused view "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for Fragment "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2558
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 722
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    .line 726
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 727
    iget-object v2, p0, Landroidx/fragment/app/z$a;->f:Landroidx/fragment/app/p;

    invoke-virtual {v2}, Landroidx/fragment/app/p;->r()V

    .line 728
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 732
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x4

    .line 733
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getPostOnViewCreatedAlpha()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 1

    .line 741
    invoke-super {p0}, Landroidx/fragment/app/z$b;->b()V

    .line 742
    iget-object v0, p0, Landroidx/fragment/app/z$a;->f:Landroidx/fragment/app/p;

    invoke-virtual {v0}, Landroidx/fragment/app/p;->b()V

    return-void
.end method
