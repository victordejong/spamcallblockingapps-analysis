.class Lcom/callapp/contacts/widget/SlideMenuAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$v;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SlideMenuAdapter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$3;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$3;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$3;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;->i()V

    :cond_0
    return-void
.end method
