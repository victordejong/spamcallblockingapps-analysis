.class Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$2;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$2;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->j()V

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$2;->a:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->getFriendsCount()J
    :try_end_0
    .catch Lcom/callapp/contacts/loader/social/QuotaReachedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
