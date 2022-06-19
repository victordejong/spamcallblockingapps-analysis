.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$3;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showTooltip(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$3;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$3;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/venmo/view/TooltipView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/venmo/view/TooltipView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$3;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-static {v0}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$1000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;)Lcom/venmo/view/TooltipView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/venmo/view/TooltipView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error during call widget display"

    .line 301
    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
