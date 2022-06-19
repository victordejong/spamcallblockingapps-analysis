.class Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->onAudioMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;I)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 172
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-static {v0}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->a(Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a041c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04e7

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0a72

    .line 174
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->a:I

    const/4 v3, 0x1

    const v4, 0x7f12067f

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    const v5, 0x7f060088

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const v2, 0x7f0804a1

    .line 182
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v6, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v6}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 183
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const v2, 0x7f0802f6

    .line 177
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v4}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 178
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f120118

    .line 179
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const v2, 0x7f0804a0

    .line 188
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v5}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06010e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v1, v2, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 189
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController$2;->b:Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/FloatingMenuActionViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
