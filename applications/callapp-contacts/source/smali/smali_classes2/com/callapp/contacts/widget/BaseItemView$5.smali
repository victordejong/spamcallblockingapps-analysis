.class Lcom/callapp/contacts/widget/BaseItemView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/BaseItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/BaseItemView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/BaseItemView;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$5;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView$5;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/BaseItemView;->e(Lcom/callapp/contacts/widget/BaseItemView;)V

    .line 495
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView$5;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/BaseItemView;->g(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView$5;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/BaseItemView;->g(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
