.class Lcom/callapp/contacts/popup/RatePopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/RatePopup;->getPositiveListener()Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/RatePopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/RatePopup;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/popup/RatePopup$2;->a:Lcom/callapp/contacts/popup/RatePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcom/google/android/play/core/review/c;Landroid/app/Activity;Lcom/google/android/play/core/tasks/d;)V
    .locals 1

    .line 91
    invoke-virtual {p3}, Lcom/google/android/play/core/tasks/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p3}, Lcom/google/android/play/core/tasks/d;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/play/core/review/ReviewInfo;

    .line 94
    invoke-interface {p1, p2, p3}, Lcom/google/android/play/core/review/c;->a(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/callapp/contacts/popup/-$$Lambda$RatePopup$2$X-c3FEiIWt363e0lYNLt2dtggjk;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/popup/-$$Lambda$RatePopup$2$X-c3FEiIWt363e0lYNLt2dtggjk;-><init>(Lcom/callapp/contacts/popup/RatePopup$2;)V

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/d;->a(Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/d;

    return-void

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/RatePopup$2;->a:Lcom/callapp/contacts/popup/RatePopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/RatePopup;->a(Lcom/callapp/contacts/popup/RatePopup;)V

    .line 100
    iget-object p1, p0, Lcom/callapp/contacts/popup/RatePopup$2;->a:Lcom/callapp/contacts/popup/RatePopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/RatePopup;->dismiss()V

    return-void
.end method

.method private synthetic a(Lcom/google/android/play/core/tasks/d;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/callapp/contacts/popup/RatePopup$2;->a:Lcom/callapp/contacts/popup/RatePopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/RatePopup;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$Ki733WSg6iyMC6bQBLCS7OPmPa8(Lcom/callapp/contacts/popup/RatePopup$2;Lcom/google/android/play/core/review/c;Landroid/app/Activity;Lcom/google/android/play/core/tasks/d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/popup/RatePopup$2;->a(Lcom/google/android/play/core/review/c;Landroid/app/Activity;Lcom/google/android/play/core/tasks/d;)V

    return-void
.end method

.method public static synthetic lambda$X-c3FEiIWt363e0lYNLt2dtggjk(Lcom/callapp/contacts/popup/RatePopup$2;Lcom/google/android/play/core/tasks/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/popup/RatePopup$2;->a(Lcom/google/android/play/core/tasks/d;)V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 3

    .line 84
    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Rate CallApp"

    const-string v2, "Rate popup clicked 5 stars"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f120688

    .line 87
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Google Play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    invoke-static {p1}, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/google/android/play/core/splitcompat/q;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/review/d;

    new-instance v2, Lcom/google/android/play/core/review/j;

    invoke-direct {v2, v0}, Lcom/google/android/play/core/review/j;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/google/android/play/core/review/d;-><init>(Lcom/google/android/play/core/review/j;)V

    .line 89
    invoke-interface {v1}, Lcom/google/android/play/core/review/c;->a()Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    .line 90
    new-instance v2, Lcom/callapp/contacts/popup/-$$Lambda$RatePopup$2$Ki733WSg6iyMC6bQBLCS7OPmPa8;

    invoke-direct {v2, p0, v1, p1}, Lcom/callapp/contacts/popup/-$$Lambda$RatePopup$2$Ki733WSg6iyMC6bQBLCS7OPmPa8;-><init>(Lcom/callapp/contacts/popup/RatePopup$2;Lcom/google/android/play/core/review/c;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/play/core/tasks/d;->a(Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/d;

    return-void

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/popup/RatePopup$2;->a:Lcom/callapp/contacts/popup/RatePopup;

    invoke-static {p1}, Lcom/callapp/contacts/popup/RatePopup;->a(Lcom/callapp/contacts/popup/RatePopup;)V

    .line 105
    iget-object p1, p0, Lcom/callapp/contacts/popup/RatePopup$2;->a:Lcom/callapp/contacts/popup/RatePopup;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/RatePopup;->dismiss()V

    return-void
.end method
