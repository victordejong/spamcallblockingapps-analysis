.class public final Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;
.super Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;,
        Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneObject;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard<",
        "Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u001a\u0012\n\u0012\u0008\u0018\u00010\u0002R\u00020\u0000\u0012\n\u0012\u0008\u0018\u00010\u0003R\u00020\u00000\u0001:\u0002\u001d\u001eB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0010\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0016\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0018\u00010\u0002R\u00020\u0000H\u0014J\"\u0010\u0011\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0016J\u0018\u0010\u0015\u001a\u0008\u0018\u00010\u0002R\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u001e\u0010\u001a\u001a\u00020\u000f2\u000c\u0010\u001b\u001a\u0008\u0018\u00010\u0003R\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0019H\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;",
        "Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;",
        "Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneObject;",
        "presentersContainer",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainer;",
        "(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V",
        "getHeaderTitle",
        "",
        "getListenFields",
        "",
        "Lcom/callapp/contacts/model/contact/ContactField;",
        "getPriority",
        "",
        "onBindViewHolder",
        "",
        "cardViewHolder",
        "onContactChanged",
        "contact",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "changedFields",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "showShouldExpandButton",
        "",
        "updateCardData",
        "data",
        "forceRefresh",
        "VideoRingtoneObject",
        "VideoRingtoneViewHolder",
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
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const-string v0, "presentersContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0155

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/framework/ContactCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    return-void
.end method


# virtual methods
.method public final getHeaderTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListenFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/callapp/contacts/model/contact/social/ContactFieldEnumSets;->NONE:Ljava/util/EnumSet;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method protected final onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic onBindViewHolder(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;->onBindViewHolder(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;)V

    return-void
.end method

.method public final onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Ljava/util/Set<",
            "Lcom/callapp/contacts/model/contact/ContactField;",
            ">;)V"
        }
    .end annotation

    .line 66
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dv:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dx:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-ge p1, p2, :cond_4

    .line 68
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x32

    if-ne p1, v1, :cond_1

    .line 69
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;->showCard(Z)V

    return-void

    .line 71
    :cond_1
    :goto_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dw:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Prefs.isPersonalCallScreenCardClicked.get()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 73
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    rem-int/lit16 p1, p1, 0x96

    if-nez p1, :cond_3

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v1, 0x12d

    if-ge p1, v1, :cond_3

    .line 74
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;->showCard(Z)V

    .line 75
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dx:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    return-void

    .line 79
    :cond_2
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    rem-int/lit8 p1, p1, 0x4b

    if-nez p1, :cond_3

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->by:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v1, 0x97

    if-ge p1, v1, :cond_3

    .line 80
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;->showCard(Z)V

    .line 81
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dx:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->a(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    :cond_3
    return-void

    .line 86
    :cond_4
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;->hideCard()V

    return-void
.end method

.method protected final onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;

    check-cast p1, Landroid/view/View;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final showShouldExpandButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final updateCardData(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneObject;Z)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic updateCardData(Ljava/lang/Object;Z)V
    .locals 0

    .line 26
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneObject;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;->updateCardData(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneObject;Z)V

    return-void
.end method
