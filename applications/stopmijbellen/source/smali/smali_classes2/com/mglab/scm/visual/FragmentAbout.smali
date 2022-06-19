.class public Lcom/mglab/scm/visual/FragmentAbout;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mglab/scm/visual/FragmentAbout$a;
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public a:Lbutterknife/Unbinder;

.field public b:J

.field public c:I

.field public d:Z

.field public versionTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public vkImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/mglab/scm/visual/FragmentAbout;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mglab/scm/visual/FragmentAbout;->c:I

    .line 3
    iput-boolean v0, p0, Lcom/mglab/scm/visual/FragmentAbout;->d:Z

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0056

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentAbout;->a:Lbutterknife/Unbinder;

    .line 3
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentAbout;->versionTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lf8/g;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p0, Lcom/mglab/scm/visual/FragmentAbout;->vkImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lf8/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    const-string v1, "RU"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentAbout;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    return-void
.end method

.method public onFbImageClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const v0, 0x7f1100de

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    const p2, 0x7f11001d

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    check-cast p1, Lf/j;

    invoke-virtual {p1}, Lf/j;->s()Lf/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Lf/a;->p(I)V

    :cond_0
    return-void
.end method

.method public onVkImageClick()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const v0, 0x7f11020e

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openDev()V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/mglab/scm/visual/FragmentAbout;->b:J

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_2

    .line 2
    iget v0, p0, Lcom/mglab/scm/visual/FragmentAbout;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mglab/scm/visual/FragmentAbout;->c:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_3

    .line 3
    iget-boolean v0, p0, Lcom/mglab/scm/visual/FragmentAbout;->d:Z

    if-nez v0, :cond_3

    .line 4
    iput-boolean v1, p0, Lcom/mglab/scm/visual/FragmentAbout;->d:Z

    .line 5
    new-instance v0, Le2/g$a;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Le2/g$a;-><init>(Landroid/content/Context;)V

    const-string v1, "Dev code entry"

    .line 7
    iput-object v1, v0, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v1, 0x7f06005b

    .line 8
    invoke-virtual {v0, v1}, Le2/g$a;->l(I)Le2/g$a;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f060091

    goto :goto_0

    :cond_0
    const v2, 0x7f06005e

    :goto_0
    invoke-virtual {v0, v2}, Le2/g$a;->a(I)Le2/g$a;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08010f

    .line 11
    invoke-static {v2, v3}, Ld0/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v3

    .line 13
    invoke-static {v2, v3}, Lf8/g;->H(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 14
    iput-object v2, v0, Le2/g$a;->E:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f06005b

    goto :goto_1

    :cond_1
    const v2, 0x7f060033

    :goto_1
    invoke-virtual {v0, v2}, Le2/g$a;->f(I)Le2/g$a;

    .line 16
    invoke-virtual {v0, v1}, Le2/g$a;->c(I)Le2/g$a;

    .line 17
    iput-boolean v4, v0, Le2/g$a;->y:Z

    .line 18
    iput-boolean v4, v0, Le2/g$a;->z:Z

    const v1, 0x7f0c0052

    .line 19
    invoke-virtual {v0, v1, v4}, Le2/g$a;->d(IZ)Le2/g$a;

    const v1, 0x7f11018f

    .line 20
    invoke-virtual {v0, v1}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v1, Lz2/k;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lz2/k;-><init>(Ljava/lang/Object;I)V

    .line 21
    iput-object v1, v0, Le2/g$a;->u:Le2/g$c;

    .line 22
    sget-object v1, Lz2/o;->f:Lz2/o;

    .line 23
    iput-object v1, v0, Le2/g$a;->v:Le2/g$c;

    const v1, 0x7f11006e

    .line 24
    invoke-virtual {v0, v1}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object v0

    invoke-virtual {v0}, Le2/g$a;->j()Le2/g;

    move-result-object v0

    .line 25
    iget-object v1, v0, Le2/g;->c:Le2/g$a;

    iget-object v1, v1, Le2/g$a;->o:Landroid/view/View;

    .line 26
    sget-object v2, Le2/b;->a:Le2/b;

    invoke-virtual {v0, v2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    const v2, 0x7f090299

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rengwuxian/materialedittext/MaterialEditText;

    .line 28
    new-instance v2, Lcom/mglab/scm/visual/FragmentAbout$a;

    invoke-direct {v2, v0}, Lcom/mglab/scm/visual/FragmentAbout$a;-><init>(Le2/g;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 29
    :cond_2
    iput v4, p0, Lcom/mglab/scm/visual/FragmentAbout;->c:I

    .line 30
    iput-boolean v4, p0, Lcom/mglab/scm/visual/FragmentAbout;->d:Z

    .line 31
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mglab/scm/visual/FragmentAbout;->b:J

    return-void
.end method

.method public sendEmailClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mglab/scm/visual/c;->p(Landroid/content/Context;)V

    return-void
.end method

.method public translationClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mglab/scm/visual/c;->q(Landroid/content/Context;)V

    return-void
.end method
