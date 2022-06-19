.class public final Lcom/mopub/mobileads/VastTracker$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VastTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastTracker$Companion;",
        "",
        "()V",
        "serialVersionUID",
        "",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/mopub/mobileads/VastTracker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic fromJson$26(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    .line 1000
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public final synthetic toJson$26(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
