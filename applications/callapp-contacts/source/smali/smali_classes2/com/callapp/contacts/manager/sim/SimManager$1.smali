.class Lcom/callapp/contacts/manager/sim/SimManager$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/sim/SimManager;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/sim/SimManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/sim/SimManager;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$1;->a:Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    .line 183
    const-class v0, Lcom/callapp/contacts/manager/sim/SimManager;

    const-string v1, "onSubscriptionsChanged()"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$1;->a:Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/contacts/manager/sim/SimManager;)Lcom/callapp/contacts/manager/task/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$1;->a:Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/contacts/manager/sim/SimManager;)Lcom/callapp/contacts/manager/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$1;->a:Lcom/callapp/contacts/manager/sim/SimManager;

    new-instance v1, Lcom/callapp/contacts/manager/sim/SimManager$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/sim/SimManager$1$1;-><init>(Lcom/callapp/contacts/manager/sim/SimManager$1;)V

    const/16 v2, 0x12c

    .line 196
    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/sim/SimManager$1$1;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/contacts/manager/sim/SimManager;Lcom/callapp/contacts/manager/task/Task;)Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
