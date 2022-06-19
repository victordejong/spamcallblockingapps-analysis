.class final Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;->a(Landroid/view/View;Ljava/lang/String;ILandroid/widget/PopupWindow$OnDismissListener;Landroid/view/View;)Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$3;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$3;->b:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$3;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->c(Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$3;->b:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void
.end method
