.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;
.super Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;",
        "Landroidx/lifecycle/u<",
        "Ljava/util/List<",
        "+",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002B\u0005\u00a2\u0006\u0002\u0010\u0005J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\tH\u0016J$\u0010\r\u001a\u001e\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u0003\u0018\u00010\u000eH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u001eH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;",
        "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;",
        "Landroidx/lifecycle/Observer;",
        "",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
        "()V",
        "viewModel",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;",
        "getBottomLayout",
        "Landroid/view/View;",
        "getBottomSectionData",
        "Lcom/callapp/contacts/model/SectionData;",
        "getHeaderLayout",
        "getSuggestionsAndContacts",
        "Landroid/util/Pair;",
        "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
        "getTopSectionData",
        "getViewType",
        "",
        "onChanged",
        "",
        "t",
        "onInviteClicked",
        "memoryContactItem",
        "Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;",
        "onViewCreated",
        "view",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "showSearchBox",
        "",
        "showShowAllButton",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V
    .locals 1

    const-string v0, "memoryContactItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    .line 101
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment$onInviteClicked$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBottomLayout()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBottomSectionData()Lcom/callapp/contacts/model/SectionData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeaderLayout()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSuggestionsAndContacts()Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
            ">;>;"
        }
    .end annotation

    .line 67
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactsWithPhoneNumber()Ljava/util/List;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 70
    new-instance v2, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    new-instance v3, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v3}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    check-cast v3, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    check-cast v3, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v2

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    const-string v4, "mci"

    .line 73
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    const-string v5, "mci.phone"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v4

    sget-object v5, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne v4, v5, :cond_0

    .line 74
    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getContactId()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    const-string v5, "contactData"

    .line 75
    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->isInstalledApp()Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    new-instance v4, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    const/16 v5, 0x18

    invoke-direct {v4, v3, v5}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 80
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final getTopSectionData()Lcom/callapp/contacts/model/SectionData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewType()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1084
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;->e()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    new-instance p1, Landroidx/lifecycle/ab;

    move-object p2, p0

    check-cast p2, Landroidx/lifecycle/ad;

    invoke-direct {p1, p2}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ad;)V

    const-class p2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ab;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p1

    const-string p2, "ViewModelProvider(this).\u2026arnViewModel::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    if-nez p1, :cond_0

    const-string p2, "viewModel"

    .line 35
    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {p2}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->getReferAndEarnBox()Lio/objectbox/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;->a(Lio/objectbox/a;)Lio/objectbox/a/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnFragment;->getViewLifecycleOwner()Landroidx/lifecycle/p;

    move-result-object p2

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/u;

    invoke-virtual {p1, p2, v0}, Lio/objectbox/a/a;->a(Landroidx/lifecycle/p;Landroidx/lifecycle/u;)V

    return-void
.end method
