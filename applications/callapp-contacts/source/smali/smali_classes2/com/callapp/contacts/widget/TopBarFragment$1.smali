.class Lcom/callapp/contacts/widget/TopBarFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/TopBarFragment;->getNewStateIconClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/TopBarFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/TopBarFragment;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment$1;->a:Lcom/callapp/contacts/widget/TopBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 40
    iget-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment$1;->a:Lcom/callapp/contacts/widget/TopBarFragment;

    invoke-static {p1}, Lcom/callapp/contacts/widget/TopBarFragment;->a(Lcom/callapp/contacts/widget/TopBarFragment;)Lcom/callapp/contacts/widget/TopBarFragment$TopBarEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/callapp/contacts/widget/TopBarFragment$1;->a:Lcom/callapp/contacts/widget/TopBarFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/TopBarFragment;->getIconState()Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/widget/TopBarFragment$1;->a:Lcom/callapp/contacts/widget/TopBarFragment;

    invoke-static {v0}, Lcom/callapp/contacts/widget/TopBarFragment;->a(Lcom/callapp/contacts/widget/TopBarFragment;)Lcom/callapp/contacts/widget/TopBarFragment$TopBarEvents;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/widget/TopBarFragment$TopBarEvents;->a(Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;)V

    .line 43
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Icon clicked on top bar. icon:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Top Bar"

    const-string v2, "Clicked"

    invoke-virtual {v0, v1, p1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
