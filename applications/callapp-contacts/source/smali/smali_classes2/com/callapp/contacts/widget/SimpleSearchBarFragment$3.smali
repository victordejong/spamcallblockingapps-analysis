.class Lcom/callapp/contacts/widget/SimpleSearchBarFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SimpleSearchBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$3;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 180
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 181
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Search Bar Fragment"

    const-string v1, "Voice search requested from search bar"

    const-string v2, "Clicked"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$3;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$3;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->c(Lcom/callapp/contacts/widget/SimpleSearchBarFragment;)Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$SearchBarEvents;->a()V

    :cond_0
    return-void
.end method
