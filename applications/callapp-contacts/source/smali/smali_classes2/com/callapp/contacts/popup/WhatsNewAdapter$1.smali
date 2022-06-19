.class Lcom/callapp/contacts/popup/WhatsNewAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/WhatsNewAdapter;->a(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

.field final synthetic b:Lcom/callapp/contacts/popup/WhatsNewAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/WhatsNewAdapter;Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;->b:Lcom/callapp/contacts/popup/WhatsNewAdapter;

    iput-object p2, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;->a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;->a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/RetractableFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;->b:Lcom/callapp/contacts/popup/WhatsNewAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;->a:Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;

    iget-object v1, v1, Lcom/callapp/contacts/popup/WhatsNewAdapter$WhatsNewHolder;->f:Lcom/callapp/contacts/widget/RetractableFrameLayout;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/RetractableFrameLayout;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->a(Lcom/callapp/contacts/popup/WhatsNewAdapter;I)I

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;->b:Lcom/callapp/contacts/popup/WhatsNewAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->a(Lcom/callapp/contacts/popup/WhatsNewAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;->b:Lcom/callapp/contacts/popup/WhatsNewAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;->b:Lcom/callapp/contacts/popup/WhatsNewAdapter;

    invoke-static {v2}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->b(Lcom/callapp/contacts/popup/WhatsNewAdapter;)I

    move-result v2

    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const-string v4, "h"

    invoke-static {v1, v2, v3, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;ILandroid/graphics/Typeface;Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->b(Lcom/callapp/contacts/popup/WhatsNewAdapter;I)I

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/WhatsNewAdapter$1;->b:Lcom/callapp/contacts/popup/WhatsNewAdapter;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/WhatsNewAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    return v0
.end method
