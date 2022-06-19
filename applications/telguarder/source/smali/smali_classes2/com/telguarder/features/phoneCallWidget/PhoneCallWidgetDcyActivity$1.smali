.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity$1;
.super Ljava/lang/Object;
.source "PhoneCallWidgetDcyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity$1;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 29
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->getInstance()Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity$1;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidgetDcyActivity;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->showWidget(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
