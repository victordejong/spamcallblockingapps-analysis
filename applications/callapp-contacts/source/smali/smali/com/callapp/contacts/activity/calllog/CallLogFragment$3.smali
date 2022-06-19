.class Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/CallLogFragment;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 348
    invoke-static {}, Lcom/callapp/contacts/util/CallLogUtils;->getCallLog()Ljava/util/Stack;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->a(Lcom/callapp/contacts/activity/calllog/CallLogFragment;Ljava/util/Stack;)Ljava/util/List;

    move-result-object v1

    .line 351
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->db:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    sget-object v3, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->SORTED_BY_FREQ:Lcom/callapp/contacts/activity/contact/list/CallLogSortType;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/contact/list/CallLogSortType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-static {v0}, Lcom/callapp/contacts/util/CallLogUtils;->a(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->b(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;->a:Lcom/callapp/contacts/activity/calllog/CallLogFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/calllog/CallLogFragment;->c(Lcom/callapp/contacts/activity/calllog/CallLogFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c()V

    .line 363
    :cond_2
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v2, Lcom/callapp/contacts/activity/interfaces/CallLogLastSeenTimestampEventListener;->c:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;)V

    .line 365
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v2, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/activity/calllog/CallLogFragment$3$1;-><init>(Lcom/callapp/contacts/activity/calllog/CallLogFragment$3;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
