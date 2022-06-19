.class Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$6;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 350
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$6;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getTrackEventCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pressed on profile picture"

    const-string v2, "Clicked"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$6;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onProfilePictureClick()V

    .line 352
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$6;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$1100(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    return-void
.end method
