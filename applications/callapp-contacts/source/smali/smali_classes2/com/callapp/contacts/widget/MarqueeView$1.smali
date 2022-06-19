.class Lcom/callapp/contacts/widget/MarqueeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/MarqueeView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/MarqueeView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/MarqueeView;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView$1;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$1;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->a(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$1;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->b(Lcom/callapp/contacts/widget/MarqueeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$1;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/MarqueeView;->a(Lcom/callapp/contacts/widget/MarqueeView;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
