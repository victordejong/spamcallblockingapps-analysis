.class Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$1;->b:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$1;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog$1;->b:Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/ui/OutgoingCallsLockDialog;->dismiss()V

    return-void
.end method
