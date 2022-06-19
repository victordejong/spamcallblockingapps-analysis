.class final Lcom/explorestack/iab/mraid/CloseableLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/CloseableLayout;->syncCloseViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/CloseableLayout;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/CloseableLayout;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout$1;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout$1;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$300(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/explorestack/iab/mraid/CloseableLayout$1;->a:Lcom/explorestack/iab/mraid/CloseableLayout;

    invoke-static {p1}, Lcom/explorestack/iab/mraid/CloseableLayout;->access$300(Lcom/explorestack/iab/mraid/CloseableLayout;)Lcom/explorestack/iab/mraid/CloseableLayout$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/explorestack/iab/mraid/CloseableLayout$c;->onCloseClick()V

    :cond_0
    return-void
.end method
