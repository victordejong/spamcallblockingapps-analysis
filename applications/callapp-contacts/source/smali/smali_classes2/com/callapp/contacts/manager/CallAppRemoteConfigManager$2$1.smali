.class Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 506
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 507
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;

    iget-boolean p1, p1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->b:Z

    if-eqz p1, :cond_0

    .line 508
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const/16 v0, 0x50

    const-string v1, "Remote config fetched successfully"

    .line 1206
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;

    iget-object p1, p1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->d:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;)Lcom/google/firebase/remoteconfig/a;

    move-result-object p1

    .line 1236
    iget-object v0, p1, Lcom/google/firebase/remoteconfig/a;->c:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/a;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    .line 1237
    iget-object v1, p1, Lcom/google/firebase/remoteconfig/a;->d:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/a;->b()Lcom/google/android/gms/tasks/h;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/tasks/h;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 2006
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tasks/k;->b(Ljava/util/Collection;)Lcom/google/android/gms/tasks/h;

    move-result-object v2

    .line 1239
    iget-object v3, p1, Lcom/google/firebase/remoteconfig/a;->b:Ljava/util/concurrent/Executor;

    .line 3000
    new-instance v4, Lcom/google/firebase/remoteconfig/c;

    invoke-direct {v4, p1, v0, v1}, Lcom/google/firebase/remoteconfig/c;-><init>(Lcom/google/firebase/remoteconfig/a;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/tasks/h;)V

    .line 1240
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tasks/h;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    .line 510
    new-instance v0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1$1;-><init>(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    return-void

    .line 523
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;

    iget-object p1, p1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    if-eqz p1, :cond_2

    .line 524
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;->a:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;

    iget-object p1, p1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    invoke-interface {p1}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    :cond_2
    return-void
.end method
