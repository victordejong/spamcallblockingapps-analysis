.class Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


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

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

.field final synthetic d:Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;Landroid/widget/TextView;Landroid/view/View;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;->d:Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;->c:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 121
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 122
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->gn:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 124
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/calllog/stickyBanner/CallLogStickyHolder$3;->c:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->getCta()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "In-app promotion"

    const-string v2, "Banner clicked"

    const-string v3, "List sticky banner"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
