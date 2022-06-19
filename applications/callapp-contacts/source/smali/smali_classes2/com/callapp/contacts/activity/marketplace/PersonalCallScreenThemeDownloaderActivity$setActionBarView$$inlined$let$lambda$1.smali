.class final Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->setActionBarView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

.field final synthetic b:Landroidx/appcompat/app/ActionBar;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;Landroidx/appcompat/app/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1;->b:Landroidx/appcompat/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 134
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Add personal store item  from top bar icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Personal Store Item"

    const-string v2, "Icon clicked"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$setActionBarView$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->getVideoRingtoneFragment()Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x16

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;ZLjava/lang/String;Ljava/lang/String;IZI)V

    return-void
.end method
