.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

.field private final b:Lcom/callapp/contacts/manager/phone/CallStateListener;

.field private final c:Lcom/callapp/contacts/model/call/CallData;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/CallStateListener;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 1288
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 1289
    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;->b:Lcom/callapp/contacts/manager/phone/CallStateListener;

    .line 1290
    iput-object p3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;->c:Lcom/callapp/contacts/model/call/CallData;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 1295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1296
    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;->b:Lcom/callapp/contacts/manager/phone/CallStateListener;

    iget-object v3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;->c:Lcom/callapp/contacts/model/call/CallData;

    invoke-interface {v2, v3}, Lcom/callapp/contacts/manager/phone/CallStateListener;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V

    .line 1297
    const-class v2, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$NotifyTask;->b:Lcom/callapp/contacts/manager/phone/CallStateListener;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onCallDetailsChanged() took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
