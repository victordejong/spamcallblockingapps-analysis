.class Lcom/callapp/contacts/widget/DrawingViewWithCallback$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/DrawingViewWithCallback;->b(IIDLandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/DrawingViewWithCallback;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/DrawingViewWithCallback;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback$2;->a:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 185
    iget-object p1, p0, Lcom/callapp/contacts/widget/DrawingViewWithCallback$2;->a:Lcom/callapp/contacts/widget/DrawingViewWithCallback;

    invoke-static {p1}, Lcom/callapp/contacts/widget/DrawingViewWithCallback;->a(Lcom/callapp/contacts/widget/DrawingViewWithCallback;)V

    return-void
.end method
