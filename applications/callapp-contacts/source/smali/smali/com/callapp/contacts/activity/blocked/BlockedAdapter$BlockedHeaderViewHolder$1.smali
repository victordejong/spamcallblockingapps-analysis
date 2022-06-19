.class Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 150
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedHeaderViewHolder$1;->a:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 153
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 154
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Block common spammers toggled. is enabled: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Block and Spam"

    invoke-virtual {p1, v0, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
