.class final Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

.field final synthetic b:Landroid/widget/PopupWindow$OnDismissListener;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;Landroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;I)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->b:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->c:Landroid/view/View;

    iput p4, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->b:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 375
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->c:Landroid/view/View;

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$4;->d:I

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a(Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
