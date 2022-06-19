.class public Lno0$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/facebook/share/widget/LikeView$g;

.field public c:Lno0$o;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno0$n;->a:Ljava/lang/String;

    iput-object p2, p0, Lno0$n;->b:Lcom/facebook/share/widget/LikeView$g;

    iput-object p3, p0, Lno0$n;->c:Lno0$o;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lno0$n;->a:Ljava/lang/String;

    iget-object v1, p0, Lno0$n;->b:Lcom/facebook/share/widget/LikeView$g;

    iget-object v2, p0, Lno0$n;->c:Lno0$o;

    invoke-static {v0, v1, v2}, Lno0;->w(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$g;Lno0$o;)V

    return-void
.end method
