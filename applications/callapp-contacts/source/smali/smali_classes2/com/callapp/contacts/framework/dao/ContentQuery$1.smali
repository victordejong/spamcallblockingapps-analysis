.class Lcom/callapp/contacts/framework/dao/ContentQuery$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/framework/dao/ContentQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/framework/dao/ContentQuery;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/framework/dao/ContentQuery;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/callapp/contacts/framework/dao/ContentQuery$1;->a:Lcom/callapp/contacts/framework/dao/ContentQuery;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery$1;->a:Lcom/callapp/contacts/framework/dao/ContentQuery;

    invoke-static {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/callapp/contacts/framework/dao/ContentQuery$1;->a:Lcom/callapp/contacts/framework/dao/ContentQuery;

    invoke-static {v0}, Lcom/callapp/contacts/framework/dao/ContentQuery;->a(Lcom/callapp/contacts/framework/dao/ContentQuery;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    return-void
.end method
