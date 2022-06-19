.class Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$4;
.super Ljava/lang/Object;
.source "PhoneCallWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;
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

    .line 322
    iput-object p1, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$4;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 325
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendWidgetIsClosedByUserAction()V

    .line 326
    iget-object v0, p0, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget$4;->this$0:Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;->access$000(Lcom/telguarder/features/phoneCallWidget/PhoneCallWidget;Landroid/content/Context;)V

    return-void
.end method
