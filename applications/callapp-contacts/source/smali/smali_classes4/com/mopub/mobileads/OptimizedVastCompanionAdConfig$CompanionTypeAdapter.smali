.class public Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;
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
    iput-object p1, p0, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;->a:Lcom/google/gson/f;

    .line 54
    iput-object p2, p0, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;->b:Lproguard/optimize/gson/_OptimizedJsonReader;

    .line 55
    iput-object p3, p0, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;->c:Lproguard/optimize/gson/_OptimizedJsonWriter;

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;

    invoke-direct {v0}, Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;-><init>()V

    iget-object v1, p0, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;->a:Lcom/google/gson/f;

    iget-object v2, p0, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;->b:Lproguard/optimize/gson/_OptimizedJsonReader;

    invoke-virtual {v0, v1, p1, v2}, Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;->fromJson$17(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V

    return-object v0
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
    check-cast p2, Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;

    iget-object v0, p0, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;->a:Lcom/google/gson/f;

    iget-object v1, p0, Lcom/mopub/mobileads/OptimizedVastCompanionAdConfig$CompanionTypeAdapter;->c:Lproguard/optimize/gson/_OptimizedJsonWriter;

    invoke-virtual {p2, v0, p1, v1}, Lcom/mopub/mobileads/VastCompanionAdConfig$Companion;->toJson$17(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    return-void
.end method
