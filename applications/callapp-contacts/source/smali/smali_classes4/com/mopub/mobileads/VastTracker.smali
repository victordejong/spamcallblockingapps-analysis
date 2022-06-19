.class public Lcom/mopub/mobileads/VastTracker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastTracker$Builder;,
        Lcom/mopub/mobileads/VastTracker$MessageType;,
        Lcom/mopub/mobileads/VastTracker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u00192\u00020\u0001:\u0003\u0018\u0019\u001aB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0013\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0003H\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u000bR\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/mopub/mobileads/VastTracker;",
        "Ljava/io/Serializable;",
        "content",
        "",
        "messageType",
        "Lcom/mopub/mobileads/VastTracker$MessageType;",
        "isRepeatable",
        "",
        "(Ljava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V",
        "getContent",
        "()Ljava/lang/String;",
        "()Z",
        "<set-?>",
        "isTracked",
        "getMessageType",
        "()Lcom/mopub/mobileads/VastTracker$MessageType;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "setTracked",
        "",
        "toString",
        "Builder",
        "Companion",
        "MessageType",
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
.field public static final Companion:Lcom/mopub/mobileads/VastTracker$Companion;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "content"
    .end annotation
.end field

.field private c:Lcom/mopub/mobileads/VastTracker$MessageType;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "message_type"
    .end annotation
.end field

.field private d:Z
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "is_repeatable"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mopub/mobileads/VastTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/VastTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/mopub/mobileads/VastTracker;->Companion:Lcom/mopub/mobileads/VastTracker$Companion;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    iput-boolean p3, p0, Lcom/mopub/mobileads/VastTracker;->d:Z

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V
    .locals 3

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x13

    if-eq p3, v1, :cond_9

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-eq p3, v1, :cond_7

    const/16 v1, 0x2d

    if-eq p3, v1, :cond_5

    const/16 v1, 0x4f

    if-eq p3, v1, :cond_2

    const/16 v0, 0x50

    if-eq p3, v0, :cond_0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    return-void

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p1

    sget-object p3, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq p1, p3, :cond_3

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    return-void

    :cond_4
    iput-object v2, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void

    :cond_5
    if-eqz v0, :cond_6

    const-class p3, Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mopub/mobileads/VastTracker;->a:Z

    return-void

    :cond_6
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void

    :cond_7
    if-eqz v0, :cond_8

    const-class p3, Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-virtual {p1, p3}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/mobileads/VastTracker$MessageType;

    iput-object p1, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    return-void

    :cond_8
    iput-object v2, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void

    :cond_9
    if-eqz v0, :cond_a

    const-class p3, Ljava/lang/Boolean;

    invoke-virtual {p1, p3}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mopub/mobileads/VastTracker;->d:Z

    return-void

    :cond_a
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void
.end method

.method protected final synthetic a(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 2

    const/16 v0, 0x2d

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->a:Z

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4f

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    const-class v0, Lcom/mopub/mobileads/VastTracker$MessageType;

    iget-object v1, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_1
    const/16 p1, 0x13

    invoke-interface {p3, p2, p1}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-boolean p1, p0, Lcom/mopub/mobileads/VastTracker;->d:Z

    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonWriter;->value(Z)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 43
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VastTracker;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 44
    :cond_0
    instance-of v0, p1, Lcom/mopub/mobileads/VastTracker;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    check-cast p1, Lcom/mopub/mobileads/VastTracker;

    iget-object v3, p1, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v2

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    iget-object v3, p1, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    if-eq v0, v3, :cond_3

    return v2

    .line 48
    :cond_3
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->d:Z

    iget-boolean v3, p1, Lcom/mopub/mobileads/VastTracker;->d:Z

    if-eq v0, v3, :cond_4

    return v2

    .line 49
    :cond_4
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->a:Z

    iget-boolean p1, p1, Lcom/mopub/mobileads/VastTracker;->a:Z

    if-eq v0, p1, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public synthetic fromJson$29(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mopub/mobileads/VastTracker;->a(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageType()Lcom/mopub/mobileads/VastTracker$MessageType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object v1, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastTracker$MessageType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-boolean v1, p0, Lcom/mopub/mobileads/VastTracker;->d:Z

    invoke-static {v1}, L$r8$backportedMethods$utility$Boolean$1$hashCode;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-boolean v1, p0, Lcom/mopub/mobileads/VastTracker;->a:Z

    invoke-static {v1}, L$r8$backportedMethods$utility$Boolean$1$hashCode;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->d:Z

    return v0
.end method

.method public final isTracked()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->a:Z

    return v0
.end method

.method public final setTracked()V
    .locals 1

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->a:Z

    return-void
.end method

.method public synthetic toJson$29(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/mobileads/VastTracker;->a(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VastTracker(content=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/mobileads/VastTracker;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', messageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/VastTracker;->c:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRepeatable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-boolean v1, p0, Lcom/mopub/mobileads/VastTracker;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTracked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mopub/mobileads/VastTracker;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
