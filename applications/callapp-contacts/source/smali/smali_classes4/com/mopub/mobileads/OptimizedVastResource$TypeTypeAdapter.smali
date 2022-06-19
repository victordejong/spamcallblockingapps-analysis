.class public Lcom/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter;
.super Lcom/google/gson/j;
.source "SourceFile"

# interfaces
.implements Lproguard/optimize/gson/b;


# instance fields
.field private a:Lcom/google/gson/f;

.field private b:Lproguard/optimize/gson/_OptimizedJsonReader;

.field private c:Lproguard/optimize/gson/_OptimizedJsonWriter;


# direct methods
.method public constructor <init>(Lcom/google/gson/f;Lproguard/optimize/gson/_OptimizedJsonReader;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/google/gson/j;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter;->a:Lcom/google/gson/f;

    .line 54
    iput-object p2, p0, Lcom/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter;->b:Lproguard/optimize/gson/_OptimizedJsonReader;

    .line 55
    iput-object p3, p0, Lcom/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter;->c:Lproguard/optimize/gson/_OptimizedJsonWriter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter;->b:Lproguard/optimize/gson/_OptimizedJsonReader;

    invoke-interface {v0, p1}, Lproguard/optimize/gson/_OptimizedJsonReader;->c(Lcom/google/gson/stream/JsonReader;)I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/mopub/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    return-object p1

    :cond_1
    sget-object p1, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    return-object p1

    :cond_2
    sget-object p1, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    return-object p1

    :cond_3
    sget-object p1, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/OptimizedVastResource$TypeTypeAdapter;->c:Lproguard/optimize/gson/_OptimizedJsonWriter;

    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne p2, v1, :cond_1

    const/16 p2, 0x23

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne p2, v1, :cond_2

    const/16 p2, 0xf

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    if-ne p2, v1, :cond_3

    const/16 p2, 0xa

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->IFRAME_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    if-ne p2, v1, :cond_4

    const/16 p2, 0x57

    goto :goto_0

    :cond_4
    const/4 p2, -0x1

    :goto_0
    invoke-interface {v0, p1, p2}, Lproguard/optimize/gson/_OptimizedJsonWriter;->c(Lcom/google/gson/stream/JsonWriter;I)V

    return-void
.end method
