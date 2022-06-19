.class final Lcom/explorestack/iab/mraid/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/mraid/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:[Landroid/view/View;

.field b:Ljava/lang/Runnable;

.field c:I

.field final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>([Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/explorestack/iab/mraid/i$a$1;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/i$a$1;-><init>(Lcom/explorestack/iab/mraid/i$a;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/i$a;->d:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/explorestack/iab/mraid/i$a;->a:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .line 51
    iget v0, p0, Lcom/explorestack/iab/mraid/i$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/explorestack/iab/mraid/i$a;->c:I

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/explorestack/iab/mraid/i$a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/explorestack/iab/mraid/i$a;->b:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method final b()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/explorestack/iab/mraid/i$a;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->d(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/explorestack/iab/mraid/i$a;->b:Ljava/lang/Runnable;

    return-void
.end method
