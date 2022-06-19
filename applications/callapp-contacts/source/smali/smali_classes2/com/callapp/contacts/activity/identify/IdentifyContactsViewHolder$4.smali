.class Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$4;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$4;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$4;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 144
    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$4;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->a(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->requestLayout()V

    return-void
.end method
