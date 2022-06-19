.class Lcom/callapp/contacts/widget/BaseItemView$7;
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

    .line 513
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$7;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 516
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$7;->a:Lcom/callapp/contacts/widget/BaseItemView;

    iget-boolean p1, p1, Lcom/callapp/contacts/widget/BaseItemView;->g:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 520
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$7;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->e(Lcom/callapp/contacts/widget/BaseItemView;)V

    .line 524
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$7;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->i(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 525
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$7;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->i(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView$7;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/BaseItemView;->d(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
