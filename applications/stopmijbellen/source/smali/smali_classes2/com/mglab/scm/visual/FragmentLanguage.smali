.class public Lcom/mglab/scm/visual/FragmentLanguage;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonConstantResourceId"
    }
.end annotation


# instance fields
.field public a:Lbutterknife/Unbinder;

.field public brCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public caCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public daCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public deATCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public elCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public enCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public esCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public frCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public itCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public nlCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public plCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ruCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public skCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public ukCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public viCheckBox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->ruCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->enCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->esCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->viCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->brCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->ukCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->skCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->elCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 9
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->nlCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 10
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->itCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 11
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->plCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 12
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->caCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 13
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->deATCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->frCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 15
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->daCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "sk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "ru"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_6
    const-string v1, "nl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_8
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_9
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_a
    const-string v1, "el"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_b
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_c
    const-string v1, "da"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_d
    const-string v2, "ca"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 17
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->enCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->viCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->ukCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 20
    :pswitch_2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->skCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 21
    :pswitch_3
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->ruCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 22
    :pswitch_4
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->brCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 23
    :pswitch_5
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->plCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 24
    :pswitch_6
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->nlCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 25
    :pswitch_7
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->itCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 26
    :pswitch_8
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->frCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 27
    :pswitch_9
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->esCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 28
    :pswitch_a
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->elCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 29
    :pswitch_b
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->deATCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 30
    :pswitch_c
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->daCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 31
    :pswitch_d
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->caCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xc5e -> :sswitch_d
        0xc7d -> :sswitch_c
        0xc81 -> :sswitch_b
        0xca7 -> :sswitch_a
        0xcae -> :sswitch_9
        0xccc -> :sswitch_8
        0xd2b -> :sswitch_7
        0xdbe -> :sswitch_6
        0xdfc -> :sswitch_5
        0xe04 -> :sswitch_4
        0xe43 -> :sswitch_3
        0xe58 -> :sswitch_2
        0xe96 -> :sswitch_1
        0xeb3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public brClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "pt"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "psetlanguage"

    .line 2
    invoke-static {v0, v1, p1}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentLanguage;->a()V

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p1

    new-instance v0, Lk8/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lk8/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lba/b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public caClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "ca"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public daClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "da"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public deATClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "de"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public elClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "el"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public enClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "en"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public esClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "es"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public frClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "fr"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public itClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "it"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public nlClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "nl"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c005c

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentLanguage;->a:Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/mglab/scm/visual/FragmentLanguage;->a()V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentLanguage;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f09003f

    .line 1
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09003e

    .line 2
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/o;

    move-result-object p1

    check-cast p1, Lf/j;

    invoke-virtual {p1}, Lf/j;->s()Lf/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f1101c4

    .line 3
    invoke-virtual {p1, p2}, Lf/a;->p(I)V

    :cond_0
    return-void
.end method

.method public plClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "pl"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public ruClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "ru"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public skClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "sk"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

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

.method public ukClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "uk"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method

.method public viClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "vi"

    .line 1
    invoke-virtual {p0, v0}, Lcom/mglab/scm/visual/FragmentLanguage;->c(Ljava/lang/String;)V

    return-void
.end method
