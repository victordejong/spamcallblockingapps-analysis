.class final Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;-><init>(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;Landroid/view/View;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 41
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->dw:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CD card"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Personal Store Item"

    const-string v2, "Banner clicked"

    invoke-virtual {p1, v1, v2, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object p1, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder$1;->a:Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard$VideoRingtoneViewHolder;->a:Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/VideoRingtoneCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
