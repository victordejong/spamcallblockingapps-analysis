.class Lcom/daimajia/swipe/SwipeLayout$3;
.super Ljava/lang/Object;
.source "SwipeLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/daimajia/swipe/SwipeLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/daimajia/swipe/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/daimajia/swipe/SwipeLayout;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/daimajia/swipe/SwipeLayout$3;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/daimajia/swipe/SwipeLayout$3;->a:Lcom/daimajia/swipe/SwipeLayout;

    invoke-static {v0}, Lcom/daimajia/swipe/SwipeLayout;->f(Lcom/daimajia/swipe/SwipeLayout;)Z

    .line 1042
    const/4 v0, 0x1

    return v0
.end method
