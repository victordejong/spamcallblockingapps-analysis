.class Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer;ILandroid/content/Context;)V
    .locals 0

    iput p2, p0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer$a;->a:I

    iput-object p3, p0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$ACTIONS;->POB_CLOSE:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$ACTIONS;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer$a;->a:I

    const-string v1, "RendererIdentifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBMraidViewContainer$a;->b:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenActivity;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
