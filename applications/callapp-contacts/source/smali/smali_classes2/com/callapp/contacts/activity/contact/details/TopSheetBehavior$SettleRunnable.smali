.class Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettleRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

.field private final b:Landroid/view/View;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .line 686
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;->b:Landroid/view/View;

    .line 688
    iput p3, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Landroidx/customview/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->i(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;)Landroidx/customview/a/c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/customview/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;->b:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/v;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;->a:Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior$SettleRunnable;->c:I

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;->b(Lcom/callapp/contacts/activity/contact/details/TopSheetBehavior;I)V

    return-void
.end method
