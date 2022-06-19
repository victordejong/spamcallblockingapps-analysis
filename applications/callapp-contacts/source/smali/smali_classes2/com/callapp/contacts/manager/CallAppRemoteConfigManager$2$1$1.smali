.class Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;->onComplete(Lcom/google/android/gms/tasks/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/d<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;

    iget-object v0, v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;

    iget-object v0, v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    invoke-interface {v0}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 518
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->b()V

    :cond_1
    return-void
.end method
