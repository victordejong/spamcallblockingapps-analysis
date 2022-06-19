.class Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus$1;->b:Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus$1;->a:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 4

    .line 71
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/StickyPromotionCallAppPlus$1;->a:Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyData;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->getCta()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 72
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-class v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusActivity;

    const-string v1, "RETURN_TO_PREVIOUS_CLASS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 74
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "In-app promotion"

    const-string v2, "Banner clicked"

    const-string v3, "callAppPlus sticky banner"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->ie:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
