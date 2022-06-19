.class Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

.field final synthetic b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;Lcom/callapp/contacts/activity/blocked/BlockedAdapter;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$3;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$3;->a:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 181
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 184
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Block and Spam"

    const-string v1, "Advanced block settings option clicked"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
