.class Lcom/callapp/contacts/activity/setup/RegistrationRequest$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/setup/RegistrationRequest;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/setup/RegistrationRequest;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$1;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/activity/setup/RegistrationRequest$1;->a:Lcom/callapp/contacts/activity/setup/RegistrationRequest;

    invoke-static {v0}, Lcom/callapp/contacts/activity/setup/RegistrationRequest;->a(Lcom/callapp/contacts/activity/setup/RegistrationRequest;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
