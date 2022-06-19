.class Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$1;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->a(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;->a()V

    :cond_0
    return-void
.end method
