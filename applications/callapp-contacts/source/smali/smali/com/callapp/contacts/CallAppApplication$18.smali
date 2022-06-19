.class Lcom/callapp/contacts/CallAppApplication$18;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/CallAppApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$18;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 720
    sget-object v0, Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker;->a:Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/RegistrationReminderIfNeededWorker$Companion;->a()V

    .line 723
    sget-object v0, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker;->a:Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/FetchRemoteConfigWorker$Companion;->a()V

    return-void
.end method
