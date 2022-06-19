.class public Lcom/callapp/contacts/manager/ActionsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/action/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/ActionsManager;->a:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/ActionsManager;->b:Ljava/util/Map;

    return-void
.end method

.method private a(ILjava/lang/String;IILcom/callapp/contacts/action/Action;)V
    .locals 7

    .line 115
    invoke-virtual {p5}, Lcom/callapp/contacts/action/Action;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/manager/ActionsManager;->a:Ljava/util/Map;

    invoke-interface {v0, v5, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance p5, Lcom/callapp/contacts/model/widget/WidgetMetaData;

    invoke-static {}, Lcom/callapp/contacts/model/GroupConstants;->idForItemWithoutGroup()I

    move-result v6

    move-object v0, p5

    move v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/model/widget/WidgetMetaData;-><init>(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1122
    iget-object p1, p0, Lcom/callapp/contacts/manager/ActionsManager;->b:Ljava/util/Map;

    iget-object p2, p5, Lcom/callapp/contacts/model/widget/WidgetMetaData;->key:Ljava/lang/String;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/callapp/contacts/action/Action;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/callapp/contacts/manager/ActionsManager;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/callapp/contacts/action/Action;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V
    .locals 8

    .line 126
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f060088

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v3

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    .line 127
    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/manager/ActionsManager;->a(ILjava/lang/String;IILcom/callapp/contacts/action/Action;)V

    return-void
.end method

.method private b(ILjava/lang/String;IILcom/callapp/contacts/action/Action;)V
    .locals 0

    .line 131
    invoke-direct/range {p0 .. p5}, Lcom/callapp/contacts/manager/ActionsManager;->a(ILjava/lang/String;IILcom/callapp/contacts/action/Action;)V

    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/ActionsManager;
    .locals 1

    .line 172
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getActionsManager()Lcom/callapp/contacts/manager/ActionsManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/callapp/contacts/action/Action;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/callapp/contacts/action/Action;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;)Lcom/callapp/contacts/action/Action;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/callapp/contacts/action/Action;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/manager/ActionsManager;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/action/Action;

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/action/Action$ContextType;",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/manager/ActionsManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/util/Collection;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/Action$ContextType;Ljava/util/Collection;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/action/Action$ContextType;",
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;",
            "Lcom/callapp/contacts/activity/base/BaseAdapterItemData;",
            ")",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/widget/WidgetMetaData;

    .line 146
    iget-object v3, p0, Lcom/callapp/contacts/manager/ActionsManager;->a:Ljava/util/Map;

    iget-object v4, v2, Lcom/callapp/contacts/model/widget/WidgetMetaData;->key:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/action/Action;

    invoke-virtual {v3, p2, p1, p4}, Lcom/callapp/contacts/action/Action;->a(Lcom/callapp/contacts/action/Action$ContextType;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public destroy()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/callapp/contacts/manager/ActionsManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getContactDetailsBottomActionList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/widget/WidgetMetaData;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x11

    new-array v2, v1, [Ljava/lang/String;

    .line 181
    new-instance v3, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction;-><init>()V

    .line 182
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/callapp/contacts/action/local/BackupAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/BackupAction;-><init>()V

    .line 183
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/BackupAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;-><init>()V

    .line 184
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/shared/ShareDetailsAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/shared/ShareDetailsAction;-><init>()V

    .line 185
    invoke-virtual {v3}, Lcom/callapp/contacts/action/shared/ShareDetailsAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/SpamAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/SpamAction;-><init>()V

    .line 186
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/SpamAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/UnSpamAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/UnSpamAction;-><init>()V

    .line 187
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/UnSpamAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/shared/ShareLocationAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/shared/ShareLocationAction;-><init>()V

    .line 188
    invoke-virtual {v3}, Lcom/callapp/contacts/action/shared/ShareLocationAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/ICSEventAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/ICSEventAction;-><init>()V

    .line 189
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/ICSEventAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/ChangePreferredSimAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/ChangePreferredSimAction;-><init>()V

    .line 190
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/ChangePreferredSimAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/CreateContactsAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/CreateContactsAction;-><init>()V

    .line 191
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/CreateContactsAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x9

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/shared/ShareContactAction;

    sget-object v5, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->inviteToCallApp:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-direct {v3, v5}, Lcom/callapp/contacts/action/shared/ShareContactAction;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    .line 192
    invoke-virtual {v3}, Lcom/callapp/contacts/action/shared/ShareContactAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xa

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;-><init>()V

    .line 193
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xb

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;-><init>()V

    .line 194
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xc

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/AddCallReminderAction;-><init>()V

    .line 195
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/AddCallReminderAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xd

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/BlockCallAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/BlockCallAction;-><init>()V

    .line 196
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/BlockCallAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xe

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/UnBlockCallAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/UnBlockCallAction;-><init>()V

    .line 197
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/UnBlockCallAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0xf

    aput-object v3, v2, v5

    new-instance v3, Lcom/callapp/contacts/action/local/DeleteContactAction;

    invoke-direct {v3}, Lcom/callapp/contacts/action/local/DeleteContactAction;-><init>()V

    .line 198
    invoke-virtual {v3}, Lcom/callapp/contacts/action/local/DeleteContactAction;->getKey()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x10

    aput-object v3, v2, v5

    :goto_0
    if-ge v4, v1, :cond_1

    .line 200
    aget-object v3, v2, v4

    .line 201
    iget-object v5, p0, Lcom/callapp/contacts/manager/ActionsManager;->b:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/widget/WidgetMetaData;

    if-eqz v3, :cond_0

    .line 203
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public init()V
    .locals 11

    .line 65
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f06001b

    invoke-static {v0, v1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v0

    .line 66
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const v2, 0x7f06010a

    invoke-static {v1, v2}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v4

    const v1, 0x7f1203b5

    .line 68
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/AddIncognitoContactAction;-><init>()V

    const v3, 0x7f0802d0

    const v5, 0x7f080327

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f1205d6

    .line 69
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/RemoveIncognitoContactAction;-><init>()V

    const v3, 0x7f0802d9

    const v5, 0x7f080414

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f12003d

    .line 70
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/BlockCallAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/BlockCallAction;-><init>()V

    const v3, 0x7f0802cc

    const v5, 0x7f080407

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f12007a

    .line 71
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/UnBlockCallAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/UnBlockCallAction;-><init>()V

    const v3, 0x7f0802d8

    const v5, 0x7f080412

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f120049

    .line 72
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/DeleteContactAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/DeleteContactAction;-><init>()V

    const v9, 0x7f0802ce

    const v10, 0x7f080325

    invoke-direct {p0, v1, v9, v10, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f120161

    .line 73
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/callapp/contacts/action/local/AddCallReminderAction;

    invoke-direct {v8}, Lcom/callapp/contacts/action/local/AddCallReminderAction;-><init>()V

    const v6, 0x7f0802d4

    const v7, 0x7f080329

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/callapp/contacts/manager/ActionsManager;->b(ILjava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f120056

    .line 74
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;-><init>()V

    const v3, 0x7f080478

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f12005b

    .line 75
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/SmsAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/SmsAction;-><init>()V

    const v3, 0x7f080498

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f12004c

    .line 76
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/EditContactsAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/EditContactsAction;-><init>()V

    const v8, 0x7f0802cf

    invoke-direct {p0, v1, v8, v8, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f12004b

    .line 77
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/EditBlockedContactAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/EditBlockedContactAction;-><init>()V

    invoke-direct {p0, v1, v8, v8, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f120046

    .line 78
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/CreateContactsAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/CreateContactsAction;-><init>()V

    const v3, 0x7f0802cb

    const v4, 0x7f080429

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f120045

    .line 79
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/CopyContactNumberAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/CopyContactNumberAction;-><init>()V

    const v3, 0x7f08037f

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f12003c

    .line 80
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;-><init>(Z)V

    const v3, 0x7f0803c0

    const v4, 0x7f080413

    invoke-direct {p0, v1, v3, v4, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f120057

    .line 81
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/callapp/contacts/action/local/AddRemoveFavoritesAction;-><init>(Z)V

    const v5, 0x7f0803bf

    const v6, 0x7f080326

    invoke-direct {p0, v2, v5, v6, v3}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    .line 82
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction;

    invoke-direct {v2, v4}, Lcom/callapp/contacts/action/local/AddRemoveCallRecorderFavoritesAction;-><init>(Z)V

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f120047

    .line 83
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/action/local/DeleteCallRecordAction;

    invoke-direct {v2}, Lcom/callapp/contacts/action/local/DeleteCallRecordAction;-><init>()V

    invoke-direct {p0, v1, v9, v10, v2}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f120078

    .line 84
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/callapp/contacts/action/local/SpamAction;

    invoke-direct {v7}, Lcom/callapp/contacts/action/local/SpamAction;-><init>()V

    const v5, 0x7f0802d7

    const v6, 0x7f080411

    move-object v2, p0

    move v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/manager/ActionsManager;->b(ILjava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v1, 0x7f12007b

    .line 85
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/callapp/contacts/action/local/UnSpamAction;

    invoke-direct {v7}, Lcom/callapp/contacts/action/local/UnSpamAction;-><init>()V

    const v5, 0x7f0802da

    const v6, 0x7f080415

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/manager/ActionsManager;->b(ILjava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120043

    .line 86
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/StartContactCallLogActivityAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/StartContactCallLogActivityAction;-><init>()V

    const v2, 0x7f080437

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f12005c

    .line 87
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/ICSEventAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/ICSEventAction;-><init>()V

    const v2, 0x7f0802d3

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120058

    .line 88
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/ChangePreferredSimAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/ChangePreferredSimAction;-><init>()V

    const v2, 0x7f0802d6

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120069

    .line 89
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/shared/ShareLocationAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/shared/ShareLocationAction;-><init>()V

    const v2, 0x7f0802d2

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f12006f

    .line 90
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/shared/ShareFileAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/shared/ShareFileAction;-><init>()V

    const v2, 0x7f0803c5

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120075

    .line 91
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/shared/ShareCameraAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/shared/ShareCameraAction;-><init>()V

    const v2, 0x7f08035d

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120068

    .line 92
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/shared/ShareDetailsAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/shared/ShareDetailsAction;-><init>()V

    const v2, 0x7f0802d5

    const v3, 0x7f08032a

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120050

    .line 93
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/shared/ShareContactAction;

    sget-object v2, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->inviteToCallApp:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-direct {v1, v2}, Lcom/callapp/contacts/action/shared/ShareContactAction;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    const v2, 0x7f0802d1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f12004d

    .line 94
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/NoteAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/NoteAction;-><init>()V

    invoke-direct {p0, v0, v8, v8, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120042

    .line 95
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/CallAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/CallAction;-><init>()V

    const v2, 0x7f08045b

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120048

    .line 96
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/DeleteCallRemindersAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/DeleteCallRemindersAction;-><init>()V

    invoke-direct {p0, v0, v9, v10, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    .line 97
    new-instance v0, Lcom/callapp/contacts/action/local/EmailAction;

    invoke-direct {v0}, Lcom/callapp/contacts/action/local/EmailAction;-><init>()V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/action/Action;)V

    .line 98
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareContactAction;

    sget-object v1, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->inviteToCallApp:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/action/Action;)V

    .line 99
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareContactAction;

    sget-object v1, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->sendingThisContactsInfo:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/action/Action;)V

    .line 100
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareContactAction;

    sget-object v1, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->sendingMyOwnInfo:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/action/Action;)V

    .line 101
    new-instance v0, Lcom/callapp/contacts/action/shared/ShareContactAction;

    sget-object v1, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->sendingOthersInfo:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/action/shared/ShareContactAction;-><init>(Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/ActionsManager;->a(Lcom/callapp/contacts/action/Action;)V

    const v0, 0x7f12004a

    .line 102
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/DeleteCallAppPlusNumberAction;-><init>()V

    invoke-direct {p0, v0, v9, v10, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120291

    .line 103
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/DeleteViewerProfileAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/DeleteViewerProfileAction;-><init>()V

    invoke-direct {p0, v0, v9, v10, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120074

    .line 104
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/ShowMissedCallReminderAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/ShowMissedCallReminderAction;-><init>()V

    const v2, 0x7f080403

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f12004f

    .line 105
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/ExcludeAnalyticsAction;-><init>()V

    const v2, 0x7f080431

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f1200d4

    .line 106
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/BackupAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/BackupAction;-><init>()V

    const v2, 0x7f0802e8

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    const v0, 0x7f120079

    .line 107
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;

    invoke-direct {v1}, Lcom/callapp/contacts/action/local/UnExcludeAnalyticsAction;-><init>()V

    const v2, 0x7f08048e

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/callapp/contacts/manager/ActionsManager;->a(Ljava/lang/String;IILcom/callapp/contacts/action/Action;)V

    return-void
.end method
