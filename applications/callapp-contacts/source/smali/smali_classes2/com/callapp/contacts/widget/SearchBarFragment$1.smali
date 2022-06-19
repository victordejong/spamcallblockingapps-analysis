.class Lcom/callapp/contacts/widget/SearchBarFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SearchBarFragment;->getNewStateIconClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SearchBarFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SearchBarFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/callapp/contacts/widget/SearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SearchBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 81
    sget-object p1, Lcom/callapp/contacts/widget/SearchBarFragment$2;->a:[I

    iget-object v0, p0, Lcom/callapp/contacts/widget/SearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SearchBarFragment;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SearchBarFragment;->a(Lcom/callapp/contacts/widget/SearchBarFragment;)Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "Search Bar Fragment"

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 89
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Toggle Slide Menu"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v1, "Closing Search from arrow button"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SearchBarFragment;

    sget-object v0, Lcom/callapp/contacts/widget/SearchBarFragment$FragState;->SEARCH_CLOSED:Lcom/callapp/contacts/widget/SearchBarFragment$FragState;

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/SearchBarFragment;->a(Lcom/callapp/contacts/widget/SearchBarFragment;Lcom/callapp/contacts/widget/SearchBarFragment$FragState;)V

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/widget/SearchBarFragment$1;->a:Lcom/callapp/contacts/widget/SearchBarFragment;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/SearchBarFragment;->setSearchText(Ljava/lang/String;)V

    return-void
.end method
