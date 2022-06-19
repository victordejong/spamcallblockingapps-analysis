.class public Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;
.super Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter<",
        "Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;",
        "Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/callapp/contacts/activity/base/ScrollEvents;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;",
            ">;",
            "Lcom/callapp/contacts/activity/base/ScrollEvents;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppListAdapter;-><init>(Ljava/util/List;)V

    .line 20
    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;Lcom/callapp/contacts/activity/base/BaseViewTypeData;)V
    .locals 1

    .line 14
    check-cast p1, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;

    .line 1043
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;->c:Lcom/callapp/contacts/activity/base/ScrollEvents;

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;->a(Lcom/callapp/contacts/activity/birthday/BirthdayReminderData;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$v;
    .locals 0

    .line 2035
    new-instance p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->LEFT_PROFILE:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2074
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2036
    sget-object p1, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->CENTER_BIRTHDAY:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2079
    iput-object p1, p2, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    .line 2037
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a()Lcom/callapp/contacts/activity/base/CallAppRow;

    move-result-object p1

    .line 2038
    new-instance p2, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;

    invoke-direct {p2, p1}, Lcom/callapp/contacts/activity/birthday/BirthdayViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-object p2
.end method
