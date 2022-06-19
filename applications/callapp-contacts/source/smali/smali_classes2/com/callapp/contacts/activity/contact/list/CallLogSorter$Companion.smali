.class public final Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/CallLogSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion;",
        "",
        "()V",
        "openSortByDialog",
        "",
        "context",
        "Landroid/content/Context;",
        "onSortAction",
        "Lcom/callapp/contacts/activity/contact/list/OnSortAction;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/callapp/contacts/activity/contact/list/OnSortAction;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSortAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    .line 14
    sget-object v1, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->SORTED_BY_DATE:Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->SORTED_BY_FREQ:Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/a/n;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 15
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 50
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 51
    check-cast v5, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    .line 16
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 18
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->db:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 19
    new-instance v5, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;

    const v6, 0x7f120135

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v4, Ljava/util/Collection;

    new-array v2, v2, [Ljava/lang/String;

    .line 54
    invoke-interface {v4, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    new-instance v4, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;

    invoke-direct {v4, v0, p1}, Lcom/callapp/contacts/activity/contact/list/CallLogSorter$Companion$openSortByDialog$dialog$1;-><init>(Ljava/util/ArrayList;Lcom/callapp/contacts/activity/contact/list/OnSortAction;)V

    check-cast v4, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;

    invoke-direct {v5, v6, v2, v1, v4}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    .line 37
    invoke-virtual {v5, v3}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;->setCancelable(Z)V

    .line 38
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    check-cast v5, Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {p1, p0, v5}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
