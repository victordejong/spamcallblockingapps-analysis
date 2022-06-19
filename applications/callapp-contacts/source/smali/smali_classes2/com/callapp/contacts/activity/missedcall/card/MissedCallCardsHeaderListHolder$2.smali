.class Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->c(I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 263
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    const/4 p1, 0x1

    .line 264
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 252
    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 253
    iget-boolean p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;->a:Z

    if-nez p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->c(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->c(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 257
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder$2;->b:Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;->c(Lcom/callapp/contacts/activity/missedcall/card/MissedCallCardsHeaderListHolder;)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
