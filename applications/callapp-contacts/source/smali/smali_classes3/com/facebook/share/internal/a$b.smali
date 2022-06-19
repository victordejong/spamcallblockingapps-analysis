.class final Lcom/facebook/share/internal/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/share/widget/LikeView$e;

.field private c:Lcom/facebook/share/internal/a$c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V
    .locals 0

    .line 1642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1643
    iput-object p1, p0, Lcom/facebook/share/internal/a$b;->a:Ljava/lang/String;

    .line 1644
    iput-object p2, p0, Lcom/facebook/share/internal/a$b;->b:Lcom/facebook/share/widget/LikeView$e;

    .line 1645
    iput-object p3, p0, Lcom/facebook/share/internal/a$b;->c:Lcom/facebook/share/internal/a$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1650
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/share/internal/a$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/share/internal/a$b;->b:Lcom/facebook/share/widget/LikeView$e;

    iget-object v2, p0, Lcom/facebook/share/internal/a$b;->c:Lcom/facebook/share/internal/a$c;

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/a;->b(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$e;Lcom/facebook/share/internal/a$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1651
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
