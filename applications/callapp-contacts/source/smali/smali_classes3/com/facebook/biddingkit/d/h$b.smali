.class final Lcom/facebook/biddingkit/d/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/biddingkit/d/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/facebook/biddingkit/d/h$c;

.field b:I


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/d/h$c;I)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/facebook/biddingkit/d/h$b;->a:Lcom/facebook/biddingkit/d/h$c;

    .line 108
    iput p2, p0, Lcom/facebook/biddingkit/d/h$b;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 113
    iget v0, p0, Lcom/facebook/biddingkit/d/h$b;->b:I

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/facebook/biddingkit/d/h$b;->a:Lcom/facebook/biddingkit/d/h$c;

    invoke-interface {v0, p1}, Lcom/facebook/biddingkit/d/h$c;->a(Ljava/lang/String;)V

    .line 115
    iget p1, p0, Lcom/facebook/biddingkit/d/h$b;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/facebook/biddingkit/d/h$b;->b:I

    :cond_0
    return-void
.end method
