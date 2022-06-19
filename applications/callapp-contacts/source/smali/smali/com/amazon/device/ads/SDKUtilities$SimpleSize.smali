.class public Lcom/amazon/device/ads/SDKUtilities$SimpleSize;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/SDKUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleSize"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p1, p0, Lcom/amazon/device/ads/SDKUtilities$SimpleSize;->a:I

    .line 202
    iput p2, p0, Lcom/amazon/device/ads/SDKUtilities$SimpleSize;->b:I

    return-void
.end method
