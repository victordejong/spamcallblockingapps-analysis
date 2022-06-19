.class Lcom/callapp/contacts/loader/api/ContactLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/event/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/api/ContactLoader;->doLoad(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/event/Callback<",
        "Lcom/callapp/contacts/loader/api/LoadContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/api/ContactLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/callapp/contacts/loader/api/ContactLoader$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 513
    check-cast p1, Lcom/callapp/contacts/loader/api/LoadContext;

    .line 2516
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$100(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2517
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/loader/api/ContactLoader$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$200(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2518
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2520
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$300(Lcom/callapp/contacts/loader/api/ContactLoader;)Lcom/callapp/contacts/event/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$300(Lcom/callapp/contacts/loader/api/ContactLoader;)Lcom/callapp/contacts/event/Callback;

    move-result-object v0

    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/event/Callback;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 2518
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 2

    .line 513
    check-cast p1, Lcom/callapp/contacts/loader/api/LoadContext;

    .line 1527
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$100(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1528
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/loader/api/ContactLoader$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$200(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$300(Lcom/callapp/contacts/loader/api/ContactLoader;)Lcom/callapp/contacts/event/Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader$2;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$300(Lcom/callapp/contacts/loader/api/ContactLoader;)Lcom/callapp/contacts/event/Callback;

    move-result-object v0

    iget-object p1, p1, Lcom/callapp/contacts/loader/api/LoadContext;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-interface {v0, p1, p2}, Lcom/callapp/contacts/event/Callback;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 1529
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
