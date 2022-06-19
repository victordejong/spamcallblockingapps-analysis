.class Lcom/callapp/contacts/widget/BaseItemView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 481
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$4;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView$4;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/BaseItemView;->e(Lcom/callapp/contacts/widget/BaseItemView;)V

    .line 485
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView$4;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/BaseItemView;->f(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView$4;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/BaseItemView;->f(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
