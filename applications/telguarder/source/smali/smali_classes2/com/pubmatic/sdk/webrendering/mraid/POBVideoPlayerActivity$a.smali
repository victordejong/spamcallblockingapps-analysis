.class Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;->a(Landroid/view/View;II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity$a;->a:Lcom/pubmatic/sdk/webrendering/mraid/POBVideoPlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
