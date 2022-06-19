.class Lcom/callapp/contacts/widget/BaseItemView$6;
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

    .line 503
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$6;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 506
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$6;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->e(Lcom/callapp/contacts/widget/BaseItemView;)V

    .line 507
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$6;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->h(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 508
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView$6;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/BaseItemView;->h(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView$6;->a:Lcom/callapp/contacts/widget/BaseItemView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/BaseItemView;->d(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
