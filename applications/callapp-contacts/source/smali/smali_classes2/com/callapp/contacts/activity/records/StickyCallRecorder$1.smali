.class Lcom/callapp/contacts/activity/records/StickyCallRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/records/StickyCallRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/records/StickyCallRecorder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/StickyCallRecorder;Landroid/widget/TextView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$1;->b:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$1;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 88
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$1;->b:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->a(Lcom/callapp/contacts/activity/records/StickyCallRecorder;)Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "ClickAllowAccessibilityStickyBanner"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$1;->b:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->a(Lcom/callapp/contacts/activity/records/StickyCallRecorder;)Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;->d()V

    :cond_0
    return-void
.end method
