.class public final Lcom/facebook/biddingkit/facebook/bidder/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/facebook/bidder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/facebook/biddingkit/c/d;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Lcom/facebook/biddingkit/c/c;

.field h:Z

.field i:Ljava/lang/String;

.field public j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/biddingkit/c/d;Ljava/lang/String;)V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    sget-object v0, Lcom/facebook/biddingkit/c/c;->FIRST_PRICE:Lcom/facebook/biddingkit/c/c;

    iput-object v0, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->g:Lcom/facebook/biddingkit/c/c;

    .line 210
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->a:Ljava/lang/String;

    .line 211
    iput-object p2, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->b:Ljava/lang/String;

    .line 212
    iput-object p3, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->c:Lcom/facebook/biddingkit/c/d;

    .line 213
    iput-object p4, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->e:Ljava/lang/String;

    .line 214
    iput-object p1, p0, Lcom/facebook/biddingkit/facebook/bidder/b$a;->i:Ljava/lang/String;

    return-void
.end method
