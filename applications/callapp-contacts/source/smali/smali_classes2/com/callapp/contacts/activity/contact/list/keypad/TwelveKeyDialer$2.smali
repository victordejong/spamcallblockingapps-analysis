.class Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$2;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$2;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->f(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$2;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->g(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 233
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aE:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 234
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;

    .line 235
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$2;->a:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->g(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/settings/SpeedDialActivity$SpeedDialData;->getDigit()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
