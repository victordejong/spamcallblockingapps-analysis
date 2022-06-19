.class final Lcom/facebook/share/widget/LikeView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/facebook/share/widget/LikeView;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/LikeView;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView$c;->b:Lcom/facebook/share/widget/LikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V
    .locals 0

    .line 771
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView$c;-><init>(Lcom/facebook/share/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/share/internal/a;Lcom/facebook/FacebookException;)V
    .locals 1

    .line 781
    iget-boolean v0, p0, Lcom/facebook/share/widget/LikeView$c;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 787
    new-instance p2, Lcom/facebook/FacebookException;

    const-string v0, "Cannot use LikeView. The device may not be supported."

    invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$c;->b:Lcom/facebook/share/widget/LikeView;

    invoke-static {v0, p1}, Lcom/facebook/share/widget/LikeView;->a(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/internal/a;)V

    .line 793
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$c;->b:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->c(Lcom/facebook/share/widget/LikeView;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 797
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$c;->b:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->d(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 798
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$c;->b:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->d(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$f;

    .line 802
    :cond_2
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$c;->b:Lcom/facebook/share/widget/LikeView;

    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->f(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$c;

    return-void
.end method
