.class Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(ZLcom/callapp/contacts/manager/task/Task$DoneListener;)Lcom/google/android/gms/tasks/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;

.field final synthetic b:Z

.field final synthetic c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

.field final synthetic d:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;Lcom/google/android/gms/tasks/h;ZLcom/callapp/contacts/manager/task/Task$DoneListener;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->d:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->a:Lcom/google/android/gms/tasks/h;

    iput-boolean p3, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->b:Z

    iput-object p4, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;->a:Lcom/google/android/gms/tasks/h;

    new-instance v1, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2$1;-><init>(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$2;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    return-void
.end method
