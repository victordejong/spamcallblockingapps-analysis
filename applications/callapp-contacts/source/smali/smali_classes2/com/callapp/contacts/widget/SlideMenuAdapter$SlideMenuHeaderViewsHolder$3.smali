.class Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;-><init>(Lcom/callapp/contacts/widget/SlideMenuAdapter;Landroid/view/View;Landroidx/lifecycle/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

.field final synthetic b:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;Lcom/callapp/contacts/widget/SlideMenuAdapter;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$3;->b:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$3;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 450
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$3;->b:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;

    iget-object p1, p1, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$3;->b:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;

    iget-object p1, p1, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->b(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuEvents;->h()V

    :cond_0
    return-void
.end method
