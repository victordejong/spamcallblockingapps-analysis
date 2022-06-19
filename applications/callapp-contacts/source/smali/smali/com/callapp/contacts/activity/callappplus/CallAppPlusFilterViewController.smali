.class public Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/viewcontroller/ViewController;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;)V
    .locals 9

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a:Landroid/view/View;

    const v0, 0x7f0a03cf

    .line 29
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->c:Landroid/view/View;

    const v0, 0x7f0a0816

    .line 30
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120391

    .line 31
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0171

    .line 32
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->d:Landroid/view/View;

    const v1, 0x7f0a0106

    .line 33
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a040d

    .line 34
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a07ce

    .line 35
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a03f2

    .line 37
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v5

    const v6, 0x7f060244

    const v7, 0x7f0600ab

    if-eqz v5, :cond_0

    const v5, 0x7f060111

    .line 39
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    const v5, 0x7f060110

    .line 40
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 42
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 43
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const v5, 0x7f060112

    .line 46
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 49
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 50
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 55
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 56
    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    .line 57
    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getActiveFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->getActiveFilters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getContext(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getResources(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->a:Landroid/view/View;

    return-object v0
.end method

.method public isAllSelected()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->b:Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallappPlusFilterAdapter;->isAllSelected()Z

    move-result v0

    return v0
.end method

.method public isViewShown()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnCloseFiltersClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFilterViewController;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
