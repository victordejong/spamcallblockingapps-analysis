.class public Lcom/callapp/contacts/widget/TopBarFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/TopBarFragment$TopBarEvents;,
        Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;
    }
.end annotation


# instance fields
.field private a:Lcom/balysv/materialmenu/MaterialMenuView;

.field b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/callapp/contacts/widget/TopBarFragment$TopBarEvents;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/TopBarFragment;)Lcom/callapp/contacts/widget/TopBarFragment$TopBarEvents;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/widget/TopBarFragment;->d:Lcom/callapp/contacts/widget/TopBarFragment$TopBarEvents;

    return-object p0
.end method


# virtual methods
.method protected final a(Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;Z)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/widget/TopBarFragment;->a:Lcom/balysv/materialmenu/MaterialMenuView;

    if-eqz v0, :cond_4

    .line 140
    sget-object v0, Lcom/callapp/contacts/widget/TopBarFragment$2;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 148
    sget-object p1, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    goto :goto_0

    .line 145
    :cond_0
    sget-object p1, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    goto :goto_0

    .line 142
    :cond_1
    sget-object p1, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    :goto_0
    if-eqz p2, :cond_3

    .line 153
    iget-object p2, p0, Lcom/callapp/contacts/widget/TopBarFragment;->a:Lcom/balysv/materialmenu/MaterialMenuView;

    .line 1132
    iput-object p1, p2, Lcom/balysv/materialmenu/MaterialMenuView;->b:Lcom/balysv/materialmenu/a$b;

    .line 1133
    iget-object p2, p2, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    .line 1655
    iget-object v0, p2, Lcom/balysv/materialmenu/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1656
    :try_start_0
    iget-boolean v1, p2, Lcom/balysv/materialmenu/a;->e:Z

    if-eqz v1, :cond_2

    .line 1657
    iget-object v1, p2, Lcom/balysv/materialmenu/a;->i:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 1659
    :cond_2
    iput-object p1, p2, Lcom/balysv/materialmenu/a;->g:Lcom/balysv/materialmenu/a$b;

    .line 1660
    invoke-virtual {p2}, Lcom/balysv/materialmenu/a;->start()V

    .line 1661
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 155
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/widget/TopBarFragment;->a:Lcom/balysv/materialmenu/MaterialMenuView;

    invoke-virtual {p2, p1}, Lcom/balysv/materialmenu/MaterialMenuView;->setIconState(Lcom/balysv/materialmenu/a$b;)V

    :cond_4
    return-void
.end method

.method protected getBackgroundResource()I
    .locals 1

    const v0, 0x7f0805ac

    return v0
.end method

.method protected getBgColor()I
    .locals 1

    const v0, 0x7f060088

    return v0
.end method

.method protected final getIconState()Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/widget/TopBarFragment;->a:Lcom/balysv/materialmenu/MaterialMenuView;

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->BACK:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    return-object v0

    .line 165
    :cond_0
    sget-object v0, Lcom/callapp/contacts/widget/TopBarFragment$2;->b:[I

    iget-object v1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->a:Lcom/balysv/materialmenu/MaterialMenuView;

    .line 2128
    iget-object v1, v1, Lcom/balysv/materialmenu/MaterialMenuView;->a:Lcom/balysv/materialmenu/a;

    .line 2694
    iget-object v1, v1, Lcom/balysv/materialmenu/a;->f:Lcom/balysv/materialmenu/a$b;

    .line 165
    invoke-virtual {v1}, Lcom/balysv/materialmenu/a$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 171
    sget-object v0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->BACK:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    return-object v0

    .line 169
    :cond_1
    sget-object v0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->TOGGLE_MENU:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    return-object v0

    .line 167
    :cond_2
    sget-object v0, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->BACK:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    return-object v0
.end method

.method protected getNewStateIconClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 36
    new-instance v0, Lcom/callapp/contacts/widget/TopBarFragment$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/TopBarFragment$1;-><init>(Lcom/callapp/contacts/widget/TopBarFragment;)V

    return-object v0
.end method

.method protected getRootViewResId()I
    .locals 1

    const v0, 0x7f0d0290

    return v0
.end method

.method protected final isLayoutReady()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/TopBarFragment;->e:Z

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 p3, 0x0

    .line 66
    iput-boolean p3, p0, Lcom/callapp/contacts/widget/TopBarFragment;->e:Z

    .line 67
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/TopBarFragment;->getRootViewResId()I

    move-result v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->b:Landroid/view/ViewGroup;

    .line 68
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/TopBarFragment;->getBackgroundResource()I

    move-result p2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/TopBarFragment;->getBgColor()I

    move-result v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/TopBarFragment;->getBgColor()I

    move-result v1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-static {p1, p2, v0, v1, p3}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;IIII)V

    .line 69
    iget-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->b:Landroid/view/ViewGroup;

    const p2, 0x7f0a07b5

    .line 1101
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/balysv/materialmenu/MaterialMenuView;

    iput-object p2, p0, Lcom/callapp/contacts/widget/TopBarFragment;->a:Lcom/balysv/materialmenu/MaterialMenuView;

    if-eqz p2, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/TopBarFragment;->getNewStateIconClickListener()Landroid/view/View$OnClickListener;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/balysv/materialmenu/MaterialMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1104
    iget-object p2, p0, Lcom/callapp/contacts/widget/TopBarFragment;->a:Lcom/balysv/materialmenu/MaterialMenuView;

    sget-object p3, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {p2, p3}, Lcom/balysv/materialmenu/MaterialMenuView;->setIconState(Lcom/balysv/materialmenu/a$b;)V

    :cond_0
    const p2, 0x7f0a0a41

    .line 1107
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->c:Landroid/widget/TextView;

    .line 71
    iget-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->b:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/TopBarFragment;->e:Z

    .line 88
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->e:Z

    .line 79
    iget-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/TopBarFragment;->setTitleText(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->a:Lcom/balysv/materialmenu/MaterialMenuView;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p1, v0}, Lcom/balysv/materialmenu/MaterialMenuView;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/TopBarFragment;->isLayoutReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment;->f:Ljava/lang/String;

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/TopBarFragment;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
