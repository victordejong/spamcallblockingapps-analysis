.class Lcom/facebook/k$a;
.super Ljava/lang/Object;
.source "GraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/facebook/k;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/k;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1542
    iput-object p1, p0, Lcom/facebook/k$a;->a:Lcom/facebook/k;

    .line 1543
    iput-object p2, p0, Lcom/facebook/k$a;->b:Ljava/lang/Object;

    .line 1544
    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/k;
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/facebook/k$a;->a:Lcom/facebook/k;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/facebook/k$a;->b:Ljava/lang/Object;

    return-object v0
.end method
