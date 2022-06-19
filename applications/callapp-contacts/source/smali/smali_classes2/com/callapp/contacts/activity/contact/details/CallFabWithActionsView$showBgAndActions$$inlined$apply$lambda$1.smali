.class final Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(J)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

.field final synthetic c:J


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;J)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1;->b:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    iput-wide p3, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1;->a:Landroid/view/View;

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1$1;-><init>(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
