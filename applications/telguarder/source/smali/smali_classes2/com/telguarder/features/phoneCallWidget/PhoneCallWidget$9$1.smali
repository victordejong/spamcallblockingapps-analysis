.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;

.field final synthetic val$cid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;Ljava/lang/String;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;->val$cid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;->val$cid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;->val$cid:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;

    iget-object v1, v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 672
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendWidgetIsClosedAutoAction()V

    .line 673
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;

    iget-object v0, v0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;->this$1:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;

    iget-object v1, v1, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    return-void
.end method
