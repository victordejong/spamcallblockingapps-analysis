.class final Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/v;",
        ">;"
    }
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
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Ljava/util/List;)V

    .line 18
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
