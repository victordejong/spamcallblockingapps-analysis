.class Lcom/callapp/contacts/activity/records/StickyCallRecorder$2;
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
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/callapp/contacts/activity/records/StickyCallRecorder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/StickyCallRecorder;Landroid/widget/ImageView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$2;->b:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$2;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$2;->a:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 99
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$2;->b:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->a(Lcom/callapp/contacts/activity/records/StickyCallRecorder;)Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "ClickCloseAccessibilityStickyBanner"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/activity/records/StickyCallRecorder$2;->b:Lcom/callapp/contacts/activity/records/StickyCallRecorder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/StickyCallRecorder;->a(Lcom/callapp/contacts/activity/records/StickyCallRecorder;)Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/records/StickyCallRecorder$StickyCallRecordingActions;->e()V

    :cond_0
    return-void
.end method
