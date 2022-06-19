.class Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->addView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$100(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$002(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;I)I

    .line 337
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$200(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)I

    move-result v0

    if-gez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$000(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$202(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;I)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$200(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$000(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$000(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$202(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;I)I

    .line 342
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getWindowY()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getWindowHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->access$200(Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView$4;->a:Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->getWindowY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/BaseOverlayView;->repositionOverlayVertically(I)V

    :cond_1
    return-void
.end method
