.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->setAutomaticCloseTimer(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;J)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    iput-object p2, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->val$timeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 662
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v2}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3502(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 667
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$100(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Ljava/lang/String;

    move-result-object v1

    .line 668
    :goto_1
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$3500(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;

    invoke-direct {v2, p0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9$1;-><init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$9;->val$timeout:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
