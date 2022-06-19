.class Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->onMute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;Z)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    iput-boolean p2, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 203
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a0420

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04e7

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0a72

    .line 205
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 206
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;->a:Z

    const v4, 0x7f060088

    const v5, 0x7f06010e

    if-eqz v3, :cond_0

    const v3, 0x7f060088

    goto :goto_0

    :cond_0
    const v3, 0x7f06010e

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 207
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$3;->a:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const v4, 0x7f06010e

    :goto_1
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
