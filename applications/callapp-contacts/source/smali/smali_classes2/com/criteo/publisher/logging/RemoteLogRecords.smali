.class public Lcom/criteo/publisher/logging/RemoteLogRecords;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/logging/RemoteLogRecords$b;,
        Lcom/criteo/publisher/logging/RemoteLogRecords$a;,
        Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0097\u0008\u0018\u0000:\u0003\u001d\u001e\u001fB\u001d\u0012\u0006\u0010\u0008\u001a\u00020\u0001\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0002\u001a\u00020\u0001H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J*\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0008\u001a\u00020\u00018\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0003R\"\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0007\u00a8\u0006 "
    }
    d2 = {
        "Lcom/criteo/publisher/logging/RemoteLogRecords;",
        "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;",
        "component1",
        "()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;",
        "",
        "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogRecord;",
        "component2",
        "()Ljava/util/List;",
        "context",
        "logRecords",
        "copy",
        "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)Lcom/criteo/publisher/logging/RemoteLogRecords;",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;",
        "getContext",
        "Ljava/util/List;",
        "getLogRecords",
        "<init>",
        "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)V",
        "RemoteLogContext",
        "RemoteLogLevel",
        "RemoteLogRecord",
        "publisher-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
    pn = ""
    xi = 0x0
    xs = ""
.end annotation


# instance fields
.field final a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "context"
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "errors"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/logging/RemoteLogRecords$a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/logging/RemoteLogRecords$a;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logRecords"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    iput-object p2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    .line 3026
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 4026
    iget-object v1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4027
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    .line 5027
    iget-object p1, p1, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 2026
    iget-object v0, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/criteo/publisher/logging/RemoteLogRecords$a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2027
    iget-object v2, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteLogRecords(context="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1026
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    iget-object v1, p0, Lcom/criteo/publisher/logging/RemoteLogRecords;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
