.class public final Lcom/explorestack/iab/utils/o$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/utils/o;


# direct methods
.method public constructor <init>(Lcom/explorestack/iab/utils/o;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/explorestack/iab/utils/o$3;->a:Lcom/explorestack/iab/utils/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/explorestack/iab/utils/o$3;->a:Lcom/explorestack/iab/utils/o;

    invoke-static {p1}, Lcom/explorestack/iab/utils/o;->a(Lcom/explorestack/iab/utils/o;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/explorestack/iab/utils/o$3;->a:Lcom/explorestack/iab/utils/o;

    invoke-static {p1}, Lcom/explorestack/iab/utils/o;->a(Lcom/explorestack/iab/utils/o;)V

    return-void
.end method
