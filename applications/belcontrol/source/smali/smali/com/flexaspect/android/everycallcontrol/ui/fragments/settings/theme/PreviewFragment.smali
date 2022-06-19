.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;
.super Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment<",
        "Lfv0;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public l:Lqt0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;-><init>()V

    return-void
.end method

.method private synthetic J(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public static L(Lqt0;)Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;
    .locals 3

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public F()V
    .locals 0

    return-void
.end method

.method public synthetic K(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;->J(Landroid/view/View;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1, p2}, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lqt0;

    iput-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;->l:Lqt0;

    :cond_0
    const p2, 0x7f0a06a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0a0685

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0671

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0687

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a066d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0354

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a0355

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a04c7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v7, p1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    const v9, 0x7f060044

    invoke-static {v8, v9}, Lg8;->d(Landroid/content/Context;I)I

    move-result v8

    const v9, 0x7f0800d3

    iget-object v10, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;->l:Lqt0;

    sget-object v11, Lqt0;->a:Lqt0;

    const v12, 0x7f060195

    if-ne v10, v11, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    invoke-static {v8, v12}, Lg8;->d(Landroid/content/Context;I)I

    move-result v8

    const v9, 0x7f0800d1

    goto :goto_0

    :cond_1
    sget-object v11, Lqt0;->b:Lqt0;

    if-ne v10, v11, :cond_2

    const v9, 0x7f0800d2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v8, Landroid/content/Context;

    const v10, 0x7f06003c

    invoke-static {v8, v10}, Lg8;->d(Landroid/content/Context;I)I

    move-result v8

    :cond_2
    :goto_0
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    const v7, 0x7f06004b

    invoke-static {v6, v7}, Lg8;->d(Landroid/content/Context;I)I

    move-result v6

    const v7, 0x7f0802fc

    iget-object v8, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;->l:Lqt0;

    sget-object v9, Lqt0;->c:Lqt0;

    if-ne v8, v9, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    invoke-static {v6, v12}, Lg8;->d(Landroid/content/Context;I)I

    move-result v6

    const v7, 0x7f0802fb

    :cond_3
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    const p2, 0x7f0a0346

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lb31;

    invoke-direct {p2, p0}, Lb31;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/settings/theme/PreviewFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public v(Lsb1;)V
    .locals 0

    invoke-super {p0, p1}, Lqb1;->v(Lsb1;)V

    invoke-virtual {p1}, Lsb1;->h()V

    return-void
.end method

.method public y()V
    .locals 1

    const v0, 0x7f0d014e

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;->k:I

    return-void
.end method
