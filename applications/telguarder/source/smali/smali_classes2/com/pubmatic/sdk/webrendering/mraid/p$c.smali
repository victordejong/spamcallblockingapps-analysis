.class Lcom/pubmatic/sdk/webrendering/mraid/p$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/webrendering/mraid/p;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/webrendering/mraid/p;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/webrendering/mraid/p;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$c;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/p$c;->a:Lcom/pubmatic/sdk/webrendering/mraid/p;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pubmatic/sdk/webrendering/mraid/p;->a(Lcom/pubmatic/sdk/webrendering/mraid/p;Z)V

    return-void
.end method
