.class public final Lcom/facebook/rebound/k;
.super Lcom/facebook/rebound/b;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/facebook/rebound/j;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/rebound/b;-><init>(Lcom/facebook/rebound/j;)V

    return-void
.end method

.method public static c()Lcom/facebook/rebound/k;
    .locals 2

    .line 25
    new-instance v0, Lcom/facebook/rebound/k;

    invoke-static {}, Lcom/facebook/rebound/a;->a()Lcom/facebook/rebound/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/rebound/k;-><init>(Lcom/facebook/rebound/j;)V

    return-object v0
.end method
