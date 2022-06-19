.class public Lcom/verizon/ads/support/ClickEvent;
.super Lcom/verizon/ads/AdSessionEvent;
.source "SourceFile"


# static fields
.field public static final CLICK_EVENT_ID:Ljava/lang/String; = "com.verizon.ads.click"

.field static final a:Lcom/verizon/ads/Logger;


# instance fields
.field public final clickTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/verizon/ads/support/ClickEvent;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/ClickEvent;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/verizon/ads/AdSession;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1}, Lcom/verizon/ads/AdSessionEvent;-><init>(Lcom/verizon/ads/AdSession;)V

    if-nez p1, :cond_0

    .line 50
    sget-object p1, Lcom/verizon/ads/support/ClickEvent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Click event requires an AdSession object"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/verizon/ads/support/ClickEvent;->clickTime:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    iget-wide v1, p0, Lcom/verizon/ads/support/ClickEvent;->clickTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/support/ClickEvent;->adSession:Lcom/verizon/ads/AdSession;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ClickEvent{clickTime: %d, %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
