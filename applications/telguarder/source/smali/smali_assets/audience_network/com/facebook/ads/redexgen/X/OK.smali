.class public final Lcom/facebook/ads/redexgen/X/OK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSCall"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z

.field public final A02:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 46492
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 46493
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0

    .line 46494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46495
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OK;->A00:Ljava/lang/String;

    .line 46496
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OK;->A02:[Ljava/lang/String;

    .line 46497
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/OK;->A01:Z

    .line 46498
    return-void
.end method
