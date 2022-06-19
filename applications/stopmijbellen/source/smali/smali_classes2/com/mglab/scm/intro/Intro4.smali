.class public Lcom/mglab/scm/intro/Intro4;
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

.field public contacts:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public copyCallLogIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public copyContactsIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public dbDownloadTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public descriptionTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public downloadDBIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public pbCallLog:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public pbContacts:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public pbDb:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public phone:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public waitTV:Landroid/widget/TextView;
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
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "android.permission.READ_CALL_LOG"

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.CALL_PHONE"

    const/16 v5, 0x1a

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v1, v5, :cond_5

    const-string v1, "android.permission.ANSWER_PHONE_CALLS"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    :goto_4
    const/4 v0, 0x1

    goto :goto_8

    :cond_4
    const/4 v0, 0x0

    goto :goto_8

    .line 7
    :cond_5
    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_4

    goto :goto_4

    .line 10
    :goto_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf8/g;->a(Landroid/content/Context;)Z

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/mglab/scm/intro/Intro4;->phone:Landroid/widget/ImageView;

    const v3, 0x7f08008d

    const v4, 0x7f0800cc

    if-eqz v0, :cond_9

    const v5, 0x7f08008d

    goto :goto_9

    :cond_9
    const v5, 0x7f0800cc

    :goto_9
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v2, p0, Lcom/mglab/scm/intro/Intro4;->copyCallLogIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    const v5, 0x7f08008d

    goto :goto_a

    :cond_a
    const v5, 0x7f0800cc

    :goto_a
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-object v2, p0, Lcom/mglab/scm/intro/Intro4;->contacts:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    const v5, 0x7f08008d

    goto :goto_b

    :cond_b
    const v5, 0x7f0800cc

    :goto_b
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v2, p0, Lcom/mglab/scm/intro/Intro4;->copyContactsIV:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    const v4, 0x7f08008d

    :cond_c
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    sget-boolean v2, Lcom/mglab/scm/intro/IntroActivity;->p:Z

    if-nez v2, :cond_e

    if-nez v1, :cond_d

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v1, 0x1

    .line 16
    :goto_d
    iget-object v2, p0, Lcom/mglab/scm/intro/Intro4;->pbContacts:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    if-eqz v1, :cond_f

    const/16 v5, 0x8

    goto :goto_e

    :cond_f
    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 17
    iget-object v2, p0, Lcom/mglab/scm/intro/Intro4;->copyContactsIV:Landroid/widget/ImageView;

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_f

    :cond_10
    const/16 v1, 0x8

    :goto_f
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    sget-boolean v1, Lcom/mglab/scm/intro/IntroActivity;->q:Z

    if-nez v1, :cond_12

    if-nez v0, :cond_11

    goto :goto_10

    :cond_11
    const/4 v0, 0x0

    goto :goto_11

    :cond_12
    :goto_10
    const/4 v0, 0x1

    .line 19
    :goto_11
    iget-object v1, p0, Lcom/mglab/scm/intro/Intro4;->pbCallLog:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_13

    const/16 v2, 0x8

    goto :goto_12

    :cond_13
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Lcom/mglab/scm/intro/Intro4;->copyCallLogIV:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_13

    :cond_14
    const/16 v0, 0x8

    :goto_13
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro4;->pbDb:Landroid/widget/ProgressBar;

    sget-boolean v1, Lcom/mglab/scm/intro/IntroActivity;->r:Z

    const/4 v2, 0x3

    if-nez v1, :cond_16

    sget v1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    sget-boolean v5, Lcom/mglab/scm/intro/IntroActivity;->p:Z

    if-lt v1, v2, :cond_15

    goto :goto_14

    :cond_15
    const/4 v1, 0x0

    goto :goto_15

    :cond_16
    :goto_14
    const/16 v1, 0x8

    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro4;->downloadDBIV:Landroid/widget/ImageView;

    sget-boolean v1, Lcom/mglab/scm/intro/IntroActivity;->r:Z

    if-nez v1, :cond_17

    sget v1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    sget-boolean v5, Lcom/mglab/scm/intro/IntroActivity;->p:Z

    if-lt v1, v2, :cond_18

    :cond_17
    const/4 v4, 0x0

    :cond_18
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro4;->downloadDBIV:Landroid/widget/ImageView;

    sget-boolean v1, Lcom/mglab/scm/intro/IntroActivity;->r:Z

    if-eqz v1, :cond_19

    sget v1, Lcom/mglab/scm/intro/IntroActivity;->s:I

    sget-boolean v4, Lcom/mglab/scm/intro/IntroActivity;->p:Z

    if-ge v1, v2, :cond_19

    goto :goto_16

    :cond_19
    const v3, 0x7f080167

    :goto_16
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro4;->dbDownloadTextView:Landroid/widget/TextView;

    const v1, 0x7f1101e6

    new-array v2, v6, [Ljava/lang/Object;

    .line 25
    sget v3, Lcom/mglab/scm/intro/IntroActivity;->t:I

    const/16 v4, 0x64

    if-nez v3, :cond_1a

    sget-boolean v5, Lcom/mglab/scm/intro/IntroActivity;->r:Z

    if-eqz v5, :cond_1a

    const/16 v5, 0x64

    goto :goto_17

    :cond_1a
    const/4 v5, 0x0

    :goto_17
    if-eqz v3, :cond_1b

    .line 26
    sget v5, Lcom/mglab/scm/intro/IntroActivity;->u:I

    mul-int/lit8 v5, v5, 0x64

    div-int/2addr v5, v3

    .line 27
    :cond_1b
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro4;->descriptionTV:Landroid/widget/TextView;

    sget-object v1, Lcom/mglab/scm/intro/IntroActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro4;->waitTV:Landroid/widget/TextView;

    invoke-static {}, Lcom/mglab/scm/intro/IntroActivity;->v()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, ""

    goto :goto_18

    :cond_1c
    const v1, 0x7f1101f1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00d3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/mglab/scm/intro/Intro4;->a:Lbutterknife/Unbinder;

    .line 3
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lba/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->f(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/b;->m(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 4
    iget-object v0, p0, Lcom/mglab/scm/intro/Intro4;->a:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->a()V

    return-void
.end method

.method public onMessageEvent(Lk8/p;)V
    .locals 0
    .annotation runtime Lba/k;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/intro/Intro4;->a()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/intro/Intro4;->a()V

    return-void
.end method

.method public onRetryClick()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, La6/d;->f(ILba/b;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/mglab/scm/intro/Intro4;->a()V

    return-void
.end method
