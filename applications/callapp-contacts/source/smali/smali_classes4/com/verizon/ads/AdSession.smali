.class public Lcom/verizon/ads/AdSession;
.super Lcom/verizon/ads/DataStore;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/AdSession$AdSessionChangeEvent;
    }
.end annotation


# static fields
.field public static final AD_SESSION_CHANGE_EVENT_ID:Ljava/lang/String; = "com.verizon.ads.adsession.change"

.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private final b:J

.field private final c:Ljava/lang/String;

.field private d:Lcom/verizon/ads/AdAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/verizon/ads/AdSession;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/AdSession;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 80
    invoke-direct {p0}, Lcom/verizon/ads/DataStore;-><init>()V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/verizon/ads/AdSession;->b:J

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/AdSession;->c:Ljava/lang/String;

    const/4 v0, 0x3

    .line 85
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/verizon/ads/AdSession;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/verizon/ads/AdSession;->getSessionId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad session created: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAdAdapter()Lcom/verizon/ads/AdAdapter;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/verizon/ads/AdSession;->d:Lcom/verizon/ads/AdAdapter;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 168
    iget-wide v0, p0, Lcom/verizon/ads/AdSession;->b:J

    return-wide v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/verizon/ads/AdSession;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/verizon/ads/AdSession;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 103
    invoke-super {p0, p1, p2}, Lcom/verizon/ads/DataStore;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    invoke-static {p1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;-><init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "com.verizon.ads.adsession.change"

    invoke-static {p1, v1}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public release()V
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcom/verizon/ads/AdSession;->clear()V

    const/4 v0, 0x3

    .line 180
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/verizon/ads/AdSession;->a:Lcom/verizon/ads/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/verizon/ads/AdSession;->getSessionId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Ad session released: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 123
    invoke-super {p0, p1}, Lcom/verizon/ads/DataStore;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v1, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/verizon/ads/AdSession$AdSessionChangeEvent;-><init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "com.verizon.ads.adsession.change"

    invoke-static {p1, v1}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public setAdAdapter(Lcom/verizon/ads/AdAdapter;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/verizon/ads/AdSession;->d:Lcom/verizon/ads/AdAdapter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Lcom/verizon/ads/AdSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/verizon/ads/AdSession;->getCreationTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/verizon/ads/AdSession;->d:Lcom/verizon/ads/AdAdapter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "AdSession{id: %s, creation time: %d, adAdapter: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringLongDescription()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 209
    invoke-super {p0}, Lcom/verizon/ads/DataStore;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s, contents\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
