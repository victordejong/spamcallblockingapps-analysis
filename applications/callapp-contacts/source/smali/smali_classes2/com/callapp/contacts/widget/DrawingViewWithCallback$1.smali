.class Lcom/callapp/contacts/widget/DrawingViewWithCallback$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(IIDLandroid/graphics/Bitmap;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/callapp/contacts/widget/DrawingViewWithCallback;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;Ljava/lang/Runnable;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback$1;->b:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    iput-object p2, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 154
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback$1;->b:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    invoke-static {p1}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(Lcom/callapp/contacts/widget/DrawingViewWithCallback;)V

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback$1;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 156
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
