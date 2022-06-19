.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadViewAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChatHeadView(Ljava/lang/Object;)Landroid/view/View;
    .locals 3

    .line 92
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    const v1, 0x7f0a08a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f0a08a5

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->o:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    iget-object v0, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a08a6

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget$1;->a:Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/InActivityWidget;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p1
.end method
