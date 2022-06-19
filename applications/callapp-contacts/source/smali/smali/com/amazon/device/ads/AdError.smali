.class public Lcom/amazon/device/ads/AdError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdError$ErrorCode;
    }
.end annotation


# instance fields
.field public final a:Lcom/amazon/device/ads/AdError$ErrorCode;

.field public final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/device/ads/AdError;->a:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 13
    iput-object p2, p0, Lcom/amazon/device/ads/AdError;->b:Ljava/lang/String;

    return-void
.end method
