.class public final Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0002\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker;",
        "Landroidx/work/Worker;",
        "appContext",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "shouldDisplayTutorialForUser",
        "",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker;->a:Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker$Companion;

    const-string v0, "job_complete_tutorial_reminder_tag"

    .line 30
    sput-object v0, Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/callapp/contacts/workers/CompleteTutorialReminderWorker;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final doWork()Landroidx/work/ListenableWorker$a;
    .locals 7

    .line 3026
    invoke-static {}, Lcom/callapp/contacts/widget/tutorial/TutorialPageRepository;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    const v1, 0x7f120221

    .line 3078
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120220

    .line 3079
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3080
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.callapp.contacts/showTutorial"

    .line 3081
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3083
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3084
    sget-object v4, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->REGISTRATION_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v4

    .line 3085
    invoke-virtual {v4, v1}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v1

    .line 3086
    invoke-virtual {v1, v2}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v1

    const v2, 0x7f080351

    .line 3087
    invoke-virtual {v1, v2}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v1

    .line 3975
    iput-object v3, v1, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    .line 3089
    invoke-virtual {v1, v2}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    const/4 v1, 0x4

    .line 3090
    invoke-virtual {v0, v1, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    .line 4334
    :cond_0
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "Result.success()"

    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
