.class final Lcom/explorestack/iab/mraid/i$a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/i$a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/explorestack/iab/mraid/i$a$1;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/i$a$1;Landroid/view/View;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/explorestack/iab/mraid/i$a$1$1;->b:Lcom/explorestack/iab/mraid/i$a$1;

    iput-object p2, p0, Lcom/explorestack/iab/mraid/i$a$1$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/explorestack/iab/mraid/i$a$1$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 38
    iget-object v0, p0, Lcom/explorestack/iab/mraid/i$a$1$1;->b:Lcom/explorestack/iab/mraid/i$a$1;

    iget-object v0, v0, Lcom/explorestack/iab/mraid/i$a$1;->a:Lcom/explorestack/iab/mraid/i$a;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/i$a;->a()V

    const/4 v0, 0x1

    return v0
.end method
