.class Lcom/callapp/contacts/widget/BaseItemView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/BaseItemView$1;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/BaseItemView$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/BaseItemView$1;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1$1;->a:Lcom/callapp/contacts/widget/BaseItemView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$1$1;->a:Lcom/callapp/contacts/widget/BaseItemView$1;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView$1;->a(Lcom/callapp/contacts/widget/BaseItemView$1;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
