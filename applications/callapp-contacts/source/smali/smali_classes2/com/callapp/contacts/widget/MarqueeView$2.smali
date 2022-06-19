.class Lcom/callapp/contacts/widget/MarqueeView$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/MarqueeView;
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

    .line 328
    iput-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView$2;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 332
    iget-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView$2;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/MarqueeView;->a()V

    .line 333
    iget-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView$2;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/MarqueeView;->c(Lcom/callapp/contacts/widget/MarqueeView;)F

    move-result p1

    .line 335
    iget-object v0, p0, Lcom/callapp/contacts/widget/MarqueeView$2;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/MarqueeView;->getMeasuredWidth()I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView$2;->a:Lcom/callapp/contacts/widget/MarqueeView;

    int-to-float v2, v0

    const/4 v3, 0x1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/callapp/contacts/widget/MarqueeView;->a(Lcom/callapp/contacts/widget/MarqueeView;Z)Z

    .line 338
    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView$2;->a:Lcom/callapp/contacts/widget/MarqueeView;

    float-to-int v2, p1

    invoke-static {v1, v2}, Lcom/callapp/contacts/widget/MarqueeView;->a(Lcom/callapp/contacts/widget/MarqueeView;I)V

    .line 339
    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView$2;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v1}, Lcom/callapp/contacts/widget/MarqueeView;->d(Lcom/callapp/contacts/widget/MarqueeView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/callapp/contacts/widget/MarqueeView$2;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {v1, p1, v0}, Lcom/callapp/contacts/widget/MarqueeView;->a(Lcom/callapp/contacts/widget/MarqueeView;FI)V

    .line 341
    iget-object p1, p0, Lcom/callapp/contacts/widget/MarqueeView$2;->a:Lcom/callapp/contacts/widget/MarqueeView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/MarqueeView;->e(Lcom/callapp/contacts/widget/MarqueeView;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/MarqueeView;->a(Z)V

    :cond_1
    return-void
.end method
