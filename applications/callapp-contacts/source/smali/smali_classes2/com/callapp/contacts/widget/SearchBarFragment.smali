.class public Lcom/callapp/contacts/widget/SearchBarFragment;
.super Lcom/callapp/contacts/widget/SimpleSearchBarFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/SearchBarFragment$FragState;
    }
.end annotation


# instance fields
.field private c:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SearchBarFragment;)Lcom/callapp/contacts/widget/SearchBarFragment$FragState;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/callapp/contacts/widget/SearchBarFragment;->c:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    return-object p0
.end method

.method private a(Lcom/callapp/contacts/widget/SearchBarFragment$FragState;Z)V
    .locals 1

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchBarFragment;->c:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    .line 58
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SearchBarFragment;->isLayoutReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/callapp/contacts/widget/SearchBarFragment$2;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SearchBarFragment;->c()V

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SearchBarFragment;->a(Z)V

    .line 65
    sget-object p1, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->TOGGLE_MENU:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/widget/SearchBarFragment;->a(Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;Z)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SearchBarFragment;->getSearchText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/SearchBarFragment;->a(Z)V

    .line 69
    sget-object p1, Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;->BACK:Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/widget/SearchBarFragment;->a(Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/SearchBarFragment;Lcom/callapp/contacts/widget/SearchBarFragment$FragState;)V
    .locals 1

    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/SearchBarFragment;->a(Lcom/callapp/contacts/widget/SearchBarFragment$FragState;Z)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 99
    invoke-super {p0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->a()V

    .line 100
    sget-object v0, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->SEARCH_OPENED:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/widget/SearchBarFragment;->a(Lcom/callapp/contacts/widget/SearchBarFragment$FragState;Z)V

    return-void
.end method

.method protected getBgColor()I
    .locals 1

    const v0, 0x7f060127

    return v0
.end method

.method protected getNewStateIconClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 77
    new-instance v0, Lcom/callapp/contacts/widget/SearchBarFragment$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/SearchBarFragment$1;-><init>(Lcom/callapp/contacts/widget/SearchBarFragment;)V

    return-object v0
.end method

.method protected getRootViewResId()I
    .locals 1

    const v0, 0x7f0d0126

    return v0
.end method

.method protected getSearchBoxHintColor()I
    .locals 1

    const v0, 0x7f06010f

    .line 28
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getSearchBoxTextColor()I
    .locals 1

    const v0, 0x7f0600ab

    .line 33
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    sget-object p1, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->SEARCH_CLOSED:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/SearchBarFragment;->a(Lcom/callapp/contacts/widget/SearchBarFragment$FragState;Z)V

    return-void
.end method
