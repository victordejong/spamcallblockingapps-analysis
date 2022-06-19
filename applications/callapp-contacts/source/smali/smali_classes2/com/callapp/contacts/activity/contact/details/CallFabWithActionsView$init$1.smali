.class final Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Landroid/app/Activity;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->a:Landroid/widget/FrameLayout;

    const-string v1, "binding.actionsContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->Show:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->AnimatingShow:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Ljava/util/List;)V

    return-void

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1$1;-><init>(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Ljava/util/List;)V

    return-void
.end method
