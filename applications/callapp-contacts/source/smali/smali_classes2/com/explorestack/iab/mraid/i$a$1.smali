.class final Lcom/explorestack/iab/mraid/i$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/i$a;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/i$a;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/explorestack/iab/mraid/i$a$1;->a:Lcom/explorestack/iab/mraid/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 23
    iget-object v0, p0, Lcom/explorestack/iab/mraid/i$a$1;->a:Lcom/explorestack/iab/mraid/i$a;

    .line 1013
    iget-object v0, v0, Lcom/explorestack/iab/mraid/i$a;->a:[Landroid/view/View;

    .line 23
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 25
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/explorestack/iab/mraid/i$a$1$1;

    invoke-direct {v5, p0, v3}, Lcom/explorestack/iab/mraid/i$a$1$1;-><init>(Lcom/explorestack/iab/mraid/i$a$1;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    .line 26
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/explorestack/iab/mraid/i$a$1;->a:Lcom/explorestack/iab/mraid/i$a;

    invoke-virtual {v3}, Lcom/explorestack/iab/mraid/i$a;->a()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
