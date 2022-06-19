.class final Lcom/explorestack/iab/utils/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/utils/n;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/utils/n;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/explorestack/iab/utils/n$1;->a:Lcom/explorestack/iab/utils/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/explorestack/iab/utils/n$1;->a:Lcom/explorestack/iab/utils/n;

    .line 1008
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/n;->c()V

    return-void
.end method
