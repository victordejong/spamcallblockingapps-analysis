.class Lcom/callapp/contacts/manager/sim/SimManager$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/sim/SimManager$1;->onSubscriptionsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/sim/SimManager$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/sim/SimManager$1;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/callapp/contacts/manager/sim/SimManager$1$1;->a:Lcom/callapp/contacts/manager/sim/SimManager$1;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$1$1;->a:Lcom/callapp/contacts/manager/sim/SimManager$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/sim/SimManager$1;->a:Lcom/callapp/contacts/manager/sim/SimManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager;->a()V

    .line 194
    iget-object v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$1$1;->a:Lcom/callapp/contacts/manager/sim/SimManager$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/sim/SimManager$1;->a:Lcom/callapp/contacts/manager/sim/SimManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/contacts/manager/sim/SimManager;Lcom/callapp/contacts/manager/task/Task;)Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
