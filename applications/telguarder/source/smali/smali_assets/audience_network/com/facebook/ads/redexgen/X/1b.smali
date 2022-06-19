.class public final Lcom/facebook/ads/redexgen/X/1b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileCacheData"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3486
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:Ljava/lang/String;

    .line 3487
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:Ljava/lang/String;

    .line 3488
    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1

    .line 3489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A01()Ljava/lang/String;
    .locals 1

    .line 3490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1b;->A01:Ljava/lang/String;

    return-object v0
.end method
