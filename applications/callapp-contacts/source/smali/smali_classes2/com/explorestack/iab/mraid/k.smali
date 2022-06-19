.class public final Lcom/explorestack/iab/mraid/k;
.super Landroid/view/GestureDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/k$a;
    }
.end annotation


# instance fields
.field final a:Lcom/explorestack/iab/mraid/k$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    new-instance v0, Lcom/explorestack/iab/mraid/k$a;

    invoke-direct {v0}, Lcom/explorestack/iab/mraid/k$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/explorestack/iab/mraid/k;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/k$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/k$a;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 19
    iput-object p2, p0, Lcom/explorestack/iab/mraid/k;->a:Lcom/explorestack/iab/mraid/k$a;

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/k;->setIsLongpressEnabled(Z)V

    return-void
.end method
