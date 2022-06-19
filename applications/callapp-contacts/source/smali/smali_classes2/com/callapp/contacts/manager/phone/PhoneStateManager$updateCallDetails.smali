.class public Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "updateCallDetails"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1060
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1400(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1500(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1400(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/phone/CallDetailsListener;

    .line 1064
    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$updateCallDetails;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1600(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)[I

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/callapp/contacts/manager/phone/CallDetailsListener;->onCallDetailsChanged([I)V

    goto :goto_0

    .line 1066
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
