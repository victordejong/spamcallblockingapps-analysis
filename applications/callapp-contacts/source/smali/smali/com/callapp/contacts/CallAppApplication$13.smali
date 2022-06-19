.class Lcom/callapp/contacts/CallAppApplication$13;
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

    .line 540
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$13;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 543
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$13;->a:Lcom/callapp/contacts/CallAppApplication;

    .line 1184
    invoke-static {v0}, Landroidx/work/impl/j;->b(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v0

    .line 545
    sget-object v1, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->getTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/u;->b(Ljava/lang/String;)Lcom/google/common/util/concurrent/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 546
    sget-object v1, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-static {v0}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Lcom/callapp/contacts/workers/CallAppDailyWorker;->a:Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/workers/CallAppDailyWorker$Companion;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
