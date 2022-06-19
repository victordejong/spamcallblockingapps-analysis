.class public Lio/supercharge/shimmerlayout/ShimmerLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/supercharge/shimmerlayout/ShimmerLayout;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/supercharge/shimmerlayout/ShimmerLayout;


# direct methods
.method public constructor <init>(Lio/supercharge/shimmerlayout/ShimmerLayout;)V
    .locals 0

    iput-object p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$a;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$a;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout$a;->a:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->n()V

    const/4 v0, 0x1

    return v0
.end method
