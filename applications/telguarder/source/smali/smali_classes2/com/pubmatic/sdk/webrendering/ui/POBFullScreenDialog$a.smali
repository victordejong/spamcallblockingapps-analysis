.class Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;->a(Landroid/view/View;II)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog$a;->a:Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/webrendering/ui/POBFullScreenDialog;->dismiss()V

    return-void
.end method
