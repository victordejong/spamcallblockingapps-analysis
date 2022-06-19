.class Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;Landroid/app/Activity;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$3;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$3;->b:Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper$3;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/api/helper/common/RemoteAccountHelper;->a(Landroid/app/Activity;)V

    return-void
.end method
