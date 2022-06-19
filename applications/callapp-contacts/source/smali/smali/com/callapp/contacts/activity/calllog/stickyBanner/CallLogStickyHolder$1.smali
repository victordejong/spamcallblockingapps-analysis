.class Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;->a(Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$1;->c:Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$1;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$1;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$1;->a:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 85
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "ClickCloseDefaultDialerStickyBanner"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$1;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ia:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    .line 88
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ib:Lcom/callapp/contacts/manager/preferences/prefs/DatePref;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/DatePref;->set(Ljava/lang/Object;)V

    return-void
.end method
