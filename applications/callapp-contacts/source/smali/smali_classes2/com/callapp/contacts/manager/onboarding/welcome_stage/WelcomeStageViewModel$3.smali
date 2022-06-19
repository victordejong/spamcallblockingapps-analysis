.class Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$3;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$3;->a:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, ","

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jp.naver.line.android/.activity.SplashActivity"

    const-string v2, "Line"

    .line 1094
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.jb.gosms/.ui.mainscreen.GoSmsMainActivity"

    const-string v2, "GoSMS"

    .line 1095
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.handcent.nextsms/com.handcent.sms.ui.ConversationExList"

    const-string v2, "HandCent"

    .line 1096
    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$3;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1099
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Registration"

    const-string v3, "Sms Application installed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->get()Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/api/helper/facebook/FacebookHelper;->getHostToCheck()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel$3;->a:Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;

    iget-object v0, v0, Lcom/callapp/contacts/manager/onboarding/welcome_stage/WelcomeStageViewModel;->f:Landroidx/lifecycle/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
