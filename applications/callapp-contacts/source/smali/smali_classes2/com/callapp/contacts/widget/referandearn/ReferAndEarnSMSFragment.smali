.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;
.super Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u001e2\u00020\u00012\u00020\u0002:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\tH\u0016J$\u0010\r\u001a\u001e\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0018\u00010\u000eH\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\u001a\u001a\u00020\u0015H\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u001cH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;",
        "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;",
        "Landroid/view/View$OnClickListener;",
        "()V",
        "contactData",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "referAndEarnShareOptionsFragmentListener",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;",
        "getBottomLayout",
        "Landroid/view/View;",
        "getBottomSectionData",
        "Lcom/callapp/contacts/model/SectionData;",
        "getHeaderLayout",
        "getSuggestionsAndContacts",
        "Landroid/util/Pair;",
        "",
        "Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;",
        "getTopSectionData",
        "getViewType",
        "",
        "onAttach",
        "",
        "context",
        "Landroid/content/Context;",
        "onClick",
        "p0",
        "onDetach",
        "showSearchBox",
        "",
        "showShowAllButton",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;


# instance fields
.field private f:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

.field private g:Lcom/callapp/contacts/model/contact/ContactData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->f:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    return-object p0
.end method

.method public static final synthetic b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;)Lcom/callapp/contacts/model/contact/ContactData;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->g:Lcom/callapp/contacts/model/contact/ContactData;

    return-object p0
.end method


# virtual methods
.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getBottomLayout()Landroid/view/View;
    .locals 8

    .line 67
    new-instance v7, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "requireContext()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Landroid/view/View$OnClickListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v0, 0x7f12066f

    .line 68
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1203da

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Activities.getString(R.string.invite_and_earn)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f060051

    .line 69
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    .line 68
    invoke-virtual {v7, v0, v1, v2}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->setData(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    check-cast v7, Landroid/view/View;

    return-object v7
.end method

.method public final getBottomSectionData()Lcom/callapp/contacts/model/SectionData;
    .locals 2

    .line 94
    new-instance v0, Lcom/callapp/contacts/model/SectionData;

    const v1, 0x7f120709

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getHeaderLayout()Landroid/view/View;
    .locals 7

    .line 74
    new-instance v6, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeaderSMS;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "requireContext()"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeaderSMS;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->g:Lcom/callapp/contacts/model/contact/ContactData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const v0, 0x7f12034c

    .line 76
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activities.getString(R.string.friends)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string v1, "contactData?.let { it.na\u2026.friends).toLowerCase() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f120051

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 77
    invoke-static {v1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activities.getString(R.s\u2026ontact_button_text, name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getHeaderLayout$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getHeaderLayout$1;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v0, v1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeaderSMS;->setData(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 78
    check-cast v6, Landroid/view/View;

    return-object v6
.end method

.method public final getSuggestionsAndContacts()Landroid/util/Pair;
    .locals 18
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

    move-object/from16 v8, p0

    .line 103
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->getContactsWithPhoneNumber()Ljava/util/List;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    new-instance v2, Lcom/callapp/contacts/loader/device/CacheLoader;

    invoke-direct {v2}, Lcom/callapp/contacts/loader/device/CacheLoader;-><init>()V

    check-cast v2, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/loader/LocalGenomeLoader;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Lcom/callapp/contacts/loader/LocalGenomeLoader;-><init>(Z)V

    check-cast v2, Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setDisableContactEvents()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->setLoadOnlyFromCache()Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v10

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v1

    check-cast v15, Ljava/util/List;

    .line 113
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLog()Ljava/util/Stack;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "callLogData.iterator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.callapp.contacts.activity.calllog.AggregateCallLogData"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;

    .line 117
    invoke-virtual {v2}, Lcom/callapp/contacts/activity/calllog/AggregateCallLogData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    const-string v3, "callLogRecord.getPhone()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    new-instance v7, Lcom/callapp/contacts/framework/util/MultiTaskRunner;

    invoke-direct {v7}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;-><init>()V

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "mci"

    if-eqz v0, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    .line 122
    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    const-string v1, "mci.phone"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->getLineType()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v0

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    if-ne v0, v1, :cond_1

    .line 123
    new-instance v17, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v4, v12

    move-object v5, v15

    move-object v6, v13

    move-object v9, v7

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$getSuggestionsAndContacts$1;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;Lcom/callapp/contacts/loader/api/ContactLoader;Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, v17

    check-cast v0, Lcom/callapp/contacts/manager/task/Task;

    invoke-virtual {v9, v0}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a(Lcom/callapp/contacts/manager/task/Task;)V

    goto :goto_2

    :cond_1
    move-object v9, v7

    :goto_2
    move-object v7, v9

    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    move-object v9, v7

    .line 146
    invoke-virtual {v9}, Lcom/callapp/contacts/framework/util/MultiTaskRunner;->a()V

    const-string v0, "callLog"

    .line 148
    invoke-static {v13, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/util/Collection;

    const/4 v0, 0x0

    invoke-interface {v11, v0, v13}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    const-string v2, "favorites"

    .line 149
    invoke-static {v12, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v11, v0, v12}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 150
    invoke-interface {v14, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-interface {v14, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, "allContactsWithMobileOnly"

    .line 152
    invoke-static {v11, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v0, v8, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->g:Lcom/callapp/contacts/model/contact/ContactData;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 156
    new-instance v3, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    new-instance v4, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;

    invoke-direct {v4, v0, v2}, Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;-><init>(Lcom/callapp/contacts/model/contact/ContactData;Z)V

    invoke-direct {v3, v4}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;-><init>(Lcom/callapp/contacts/activity/contact/list/MemoryContactItem;)V

    .line 157
    invoke-virtual {v3, v2}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->setChecked(Z)V

    const/4 v0, 0x0

    .line 158
    invoke-interface {v14, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 159
    invoke-interface {v11, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/16 v3, 0xf

    .line 163
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/f/d;->d(II)I

    move-result v3

    const/4 v4, 0x0

    .line 165
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v3, :cond_6

    .line 166
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    .line 167
    move-object v6, v0

    check-cast v6, Ljava/util/Collection;

    new-array v7, v2, [Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 168
    iget-object v6, v8, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->g:Lcom/callapp/contacts/model/contact/ContactData;

    if-nez v6, :cond_4

    .line 170
    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/callapp/contacts/activity/invite/BadgeMemoryContactItem;->setChecked(Z)V

    .line 172
    :cond_4
    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 176
    :cond_6
    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final getTopSectionData()Lcom/callapp/contacts/model/SectionData;
    .locals 2

    .line 98
    new-instance v0, Lcom/callapp/contacts/model/SectionData;

    const v1, 0x7f120710

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getViewType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->onAttach(Landroid/content/Context;)V

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->f:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type com.callapp.contacts.widget.referandearn.ReferAndEarnShareOptionsFragmentListener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "extra_contact_data"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->g:Lcom/callapp/contacts/model/contact/ContactData;

    :cond_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->getCheckedItems()Ljava/util/List;

    move-result-object p1

    .line 181
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v0, 0x7f1203dc

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1111
    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 184
    :cond_0
    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;Ljava/util/List;)V

    .line 203
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment$onClick$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public final onDetach()V
    .locals 1

    .line 53
    invoke-super {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectFragment;->onDetach()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnSMSFragment;->f:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnShareOptionsFragmentListener;

    return-void
.end method
