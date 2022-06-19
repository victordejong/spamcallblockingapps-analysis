.class Lcom/pubmatic/sdk/video/player/POBEndCardView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBEndCardView;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/player/POBEndCardView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBEndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView$a;->a:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView$a;->a:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->a(Lcom/pubmatic/sdk/video/player/POBEndCardView;)Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pubmatic/sdk/video/player/POBEndCardView$a;->a:Lcom/pubmatic/sdk/video/player/POBEndCardView;

    invoke-static {p1}, Lcom/pubmatic/sdk/video/player/POBEndCardView;->a(Lcom/pubmatic/sdk/video/player/POBEndCardView;)Lcom/pubmatic/sdk/video/player/POBEndCardView$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/pubmatic/sdk/video/player/POBEndCardView$b;->a()V

    :cond_0
    return-void
.end method
