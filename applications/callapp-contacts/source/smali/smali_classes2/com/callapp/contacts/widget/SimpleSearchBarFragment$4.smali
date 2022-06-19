.class Lcom/callapp/contacts/widget/SimpleSearchBarFragment$4;
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

    .line 197
    iput-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$4;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 200
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 201
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Registration"

    const-string v1, "Clear search from keyboard"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$4;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->setSearchText(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/callapp/contacts/widget/SimpleSearchBarFragment$4;->a:Lcom/callapp/contacts/widget/SimpleSearchBarFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/SimpleSearchBarFragment;->b()V

    return-void
.end method
