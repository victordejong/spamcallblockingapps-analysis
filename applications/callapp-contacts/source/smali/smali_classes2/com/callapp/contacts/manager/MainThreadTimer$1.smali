.class Lcom/callapp/contacts/manager/MainThreadTimer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/MainThreadTimer;->a(IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/MainThreadTimer;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/MainThreadTimer;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/manager/MainThreadTimer$1;->a:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer$1;->a:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-static {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a(Lcom/callapp/contacts/manager/MainThreadTimer;)Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer$1;->a:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-static {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->b(Lcom/callapp/contacts/manager/MainThreadTimer;)V

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer$1;->a:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-static {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->a(Lcom/callapp/contacts/manager/MainThreadTimer;)Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents;->a()V

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/manager/MainThreadTimer$1;->a:Lcom/callapp/contacts/manager/MainThreadTimer;

    invoke-static {v0}, Lcom/callapp/contacts/manager/MainThreadTimer;->c(Lcom/callapp/contacts/manager/MainThreadTimer;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
