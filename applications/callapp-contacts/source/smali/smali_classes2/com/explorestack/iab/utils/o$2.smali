.class public final Lcom/explorestack/iab/utils/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


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

    .line 66
    iput-object p1, p0, Lcom/explorestack/iab/utils/o$2;->a:Lcom/explorestack/iab/utils/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/explorestack/iab/utils/o$2;->a:Lcom/explorestack/iab/utils/o;

    invoke-static {v0}, Lcom/explorestack/iab/utils/o;->c(Lcom/explorestack/iab/utils/o;)V

    const/4 v0, 0x1

    return v0
.end method
