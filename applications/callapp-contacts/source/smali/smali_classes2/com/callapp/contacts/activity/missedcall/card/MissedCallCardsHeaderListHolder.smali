.class public Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllCards;
.implements Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter$UserCloseAllPromotions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface;
    }
.end annotation


# instance fields
.field private A:Landroid/animation/Animator;

.field private B:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface;

.field private C:Z

.field private D:Z

.field private E:Z

.field protected s:Landroidx/recyclerview/widget/RecyclerView;

.field protected t:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

.field public u:Landroid/animation/Animator;

.field private final v:Landroid/view/LayoutInflater;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/base/BaseViewTypeData;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/widget/FrameLayout;

.field private y:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

.field private z:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface;)V
    .locals 1

    .line 85
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->w:Ljava/util/List;

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->C:Z

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->D:Z

    .line 66
    iput-boolean p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->E:Z

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->v:Landroid/view/LayoutInflater;

    .line 87
    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->B:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Landroid/view/LayoutInflater;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->v:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->c(I)Landroid/animation/Animator;

    return-void
.end method

.method private synthetic a(Ljava/util/List;Ljava/util/List;)V
    .locals 8

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->w:Ljava/util/List;

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->C:Z

    .line 1172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/activity/base/BaseViewTypeData;

    .line 1174
    instance-of v4, v3, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getLastMissedCallDate()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/callapp/contacts/util/date/DateUtils;->a(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1175
    invoke-virtual {v4}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;->getMissedCallType()I

    move-result v4

    const-wide/16 v6, 0x0

    invoke-static {v3, v5, v4, v6, v7}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->a(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;IJ)V

    goto :goto_0

    .line 1177
    :cond_0
    check-cast v3, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1180
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->t:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-nez v2, :cond_2

    .line 1181
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$1;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;Ljava/util/List;Z)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1196
    :cond_2
    invoke-virtual {v2, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->setData(Ljava/lang/Object;)V

    .line 1197
    iget-object v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->t:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    check-cast v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->setOnlyPromotions(Z)V

    .line 1200
    :goto_1
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_4

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->L:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1222
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result p1

    .line 1223
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->L:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    if-gtz p1, :cond_3

    .line 1225
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardsHeaderListHolder$Mifnr5OdpDOY6uiQXgssw1-QXG0;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardsHeaderListHolder$Mifnr5OdpDOY6uiQXgssw1-QXG0;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Lcom/callapp/contacts/api/ContextRunnable;)V

    const/4 p1, 0x0

    goto :goto_2

    .line 1228
    :cond_3
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->c(I)Landroid/animation/Animator;

    move-result-object p1

    .line 1218
    :goto_2
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->u:Landroid/animation/Animator;

    .line 130
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_5

    const/16 p1, 0x8

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 131
    :goto_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->x:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->B:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface;

    if-eqz p1, :cond_6

    .line 133
    invoke-interface {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$MissedCallCardVisibilityInterface;->d()V

    :cond_6
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->y:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    return-object p0
.end method

.method private c(I)Landroid/animation/Animator;
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->t:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 237
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->b(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->z:Landroid/animation/Animator;

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->c(Landroid/view/View;I)Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->A:Landroid/animation/Animator;

    const-wide/16 v0, 0x6a4

    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 242
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->z:Landroid/animation/Animator;

    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 273
    new-instance p1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$3;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$3;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)V

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->t:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 281
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p1, v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    .line 282
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->z:Landroid/animation/Animator;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Landroid/animation/Animator;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->A:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Landroid/animation/Animator;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->z:Landroid/animation/Animator;

    return-object p0
.end method

.method private getAllCardData()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->getMissedCallCardIds()Ljava/util/List;

    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;

    .line 145
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getMissedCallType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lcom/google/common/collect/av;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/callapp/contacts/activity/missedcall/MissedCallFrequentManager;->a(Lcom/callapp/framework/phone/Phone;Ljava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 146
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getFrequentType()Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    move-result-object v4

    sget-object v5, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;->getDeleteTimeStamp()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getLastMissedCall()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 149
    :cond_1
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getPhoneAsRaw()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    .line 151
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getNumberOfMissedCalls()I

    move-result v6

    .line 152
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhotoUrl()Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v5

    .line 154
    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v10

    .line 155
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getLastMissedCall()J

    move-result-wide v7

    .line 156
    new-instance v3, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getMissedCallType()I

    move-result v11

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardDataItem;-><init>(Ljava/lang/String;IJLjava/lang/String;Lcom/callapp/framework/phone/Phone;I)V

    .line 157
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->y:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0x28

    const/4 v6, 0x3

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getMissedCallType()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 158
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_2
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->z:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getMissedCallType()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getMissedCallType()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 163
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v7

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-string v8, "MissCall"

    const-string v9, "ViewCard"

    const-string v10, ""

    invoke-virtual/range {v7 .. v12}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto/16 :goto_0

    .line 164
    :cond_4
    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getMissedCallType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 165
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v6

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/MissedCallCardIds;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-string v7, "NoAnswer"

    const-string v8, "ViewCard"

    const-string v9, ""

    invoke-virtual/range {v6 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public static synthetic lambda$2yE2dYcbgZtVnpdpjYdSrZrVBeg(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$Mifnr5OdpDOY6uiQXgssw1-QXG0(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$tdV10WZ80aWaCO5tt2FCOGk_Ogg(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->o()V

    return-void
.end method

.method private synthetic o()V
    .locals 3

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-direct {p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->getAllCardData()Ljava/util/List;

    move-result-object v1

    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager;->a()Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardPromotionDataItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->D:Z

    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->E:Z

    .line 117
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->C:Z

    goto :goto_0

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->D:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->E:Z

    if-eqz v1, :cond_1

    .line 120
    invoke-static {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager;->a(Ljava/util/List;)V

    .line 121
    iput-boolean v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->C:Z

    .line 125
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardsHeaderListHolder$2yE2dYcbgZtVnpdpjYdSrZrVBeg;

    invoke-direct {v2, p0, v0, v0}, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardsHeaderListHolder$2yE2dYcbgZtVnpdpjYdSrZrVBeg;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a01b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a05d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->x:Landroid/widget/FrameLayout;

    .line 93
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->x:Landroid/widget/FrameLayout;

    const v1, 0x7f060103

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->x:Landroid/widget/FrameLayout;

    const v1, 0x7f0600ab

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0601f1

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->s:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 101
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->y:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    .line 102
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->n()V

    return-void
.end method

.method public final a(Lcom/callapp/framework/phone/Phone;)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->t:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    if-eqz v0, :cond_1

    .line 207
    check-cast v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;

    const/4 v1, 0x0

    .line 1131
    :goto_0
    iget-object v2, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1132
    iget-object v2, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/base/BaseAdapterItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1133
    iget-object p1, v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1134
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallsCardAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->D:Z

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->E:Z

    return-void
.end method

.method public final n()V
    .locals 2

    .line 106
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardsHeaderListHolder$tdV10WZ80aWaCO5tt2FCOGk_Ogg;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/missedcall/card/-$$Lambda$MissedCallCardsHeaderListHolder$tdV10WZ80aWaCO5tt2FCOGk_Ogg;-><init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method
