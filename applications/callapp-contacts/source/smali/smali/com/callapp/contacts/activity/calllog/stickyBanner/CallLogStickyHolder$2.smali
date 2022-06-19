.class Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;
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
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;Landroid/widget/TextView;Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;Landroid/view/View;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;->d:Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;->b:Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;

    iput-object p4, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 97
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;->b:Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;->c:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Permissions"

    const-string v1, "ClickAllowDefaultDialerStickyBanner"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->go:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$2;->b:Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;

    invoke-interface {p1}, Lcom/callapp/contacts/activity/calllog/CallLogAdapter$StickyBannerEvents;->a()V

    :cond_0
    return-void
.end method
