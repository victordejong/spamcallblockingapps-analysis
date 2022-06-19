.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;",
        "",
        "()V",
        "get",
        "Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;",
        "startRecorderTest",
        "",
        "entryPoint",
        "",
        "startTheTest",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 3

    .line 81
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->gM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    const-string v1, "Prefs.recorderTestFinished"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager;->a:Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;

    invoke-static {}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestDataManager$Companion;->c()V

    .line 84
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_from_recorder_test"

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    move-object v1, p0

    check-cast v1, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->setInRecorderTestMode(Z)V

    .line 87
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    const-string v0, "StartRecTestAndroid10"

    goto :goto_0

    :cond_1
    const-string v0, "StartRecTestWizard"

    .line 93
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    const-string v2, "Call recorders list"

    invoke-virtual {v1, v2, v0, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;
    .locals 2

    .line 65
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    const-string v1, "Singletons.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getRecordTestManager()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    const-string v1, "run {\n            Single\u2026cordTestManager\n        }"

    .line 64
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
