.class final Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$runnableAutoHide$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$runnableAutoHide$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$runnableAutoHide$1;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->i(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V

    return-void
.end method
