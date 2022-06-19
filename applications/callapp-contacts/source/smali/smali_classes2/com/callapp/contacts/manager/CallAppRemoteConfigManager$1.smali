.class Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->setDefaultsIfNeeded(Lcom/callapp/contacts/manager/task/Task$DoneListener;)V
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
.field final synthetic a:Lcom/callapp/contacts/manager/task/Task$DoneListener;

.field final synthetic b:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$1;->b:Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$1;->a:Lcom/callapp/contacts/manager/task/Task$DoneListener;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 238
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager$1;->a:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    invoke-interface {p1}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    .line 239
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aZ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void
.end method
