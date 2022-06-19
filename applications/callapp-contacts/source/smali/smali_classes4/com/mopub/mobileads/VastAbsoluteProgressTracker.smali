.class public Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
.super Lcom/mopub/mobileads/VastTracker;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;,
        Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/mobileads/VastTracker;",
        "Ljava/lang/Comparable<",
        "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0016\u0018\u0000 \u00122\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002:\u0002\u0011\u0012B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0000H\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0006H\u0016R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
        "Lcom/mopub/mobileads/VastTracker;",
        "",
        "trackingMilliseconds",
        "",
        "content",
        "",
        "messageType",
        "Lcom/mopub/mobileads/VastTracker$MessageType;",
        "isRepeatable",
        "",
        "(ILjava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V",
        "getTrackingMilliseconds",
        "()I",
        "compareTo",
        "other",
        "toString",
        "Builder",
        "Companion",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "tracking_ms"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->Companion:Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;

    const-string v0, "\\d{2}:\\d{2}:\\d{2}(.\\d{3})?"

    .line 31
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/mobileads/VastTracker;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V
    .locals 1

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2, p3, p4}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V

    iput p1, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->a:I

    return-void
.end method

.method public static final synthetic access$getAbsolutePattern$cp()Ljava/util/regex/Pattern;
    .locals 1

    .line 12
    sget-object v0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->b:Ljava/util/regex/Pattern;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->a:I

    iget p1, p1, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->a:I

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I

    move-result p1

    return p1
.end method

.method public synthetic fromJson$31(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    .line 2000
    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x50

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_2

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/mobileads/VastTracker;->a(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->a:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public final getTrackingMilliseconds()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->a:I

    return v0
.end method

.method public synthetic toJson$31(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    const/16 v0, 0x53

    .line 1000
    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget v0, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/mobileads/VastTracker;->a(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
