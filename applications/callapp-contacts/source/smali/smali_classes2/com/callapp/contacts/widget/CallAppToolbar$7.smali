.class Lcom/callapp/contacts/widget/CallAppToolbar$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/CallAppToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/CallAppToolbar;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/CallAppToolbar;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$7;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 209
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "In-app promotion"

    const-string v1, "Icon clicked"

    const-string v2, "Top bar icon"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/callapp/contacts/widget/CallAppToolbar$7;->a:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-static {p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->e(Lcom/callapp/contacts/widget/CallAppToolbar;)V

    return-void
.end method
