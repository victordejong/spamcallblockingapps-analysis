.class public final Lcom/facebook/ads/redexgen/X/76;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheData"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15977
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/76;->A01:Ljava/lang/String;

    .line 15978
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/76;->A00:Ljava/lang/String;

    .line 15979
    return-void
.end method
