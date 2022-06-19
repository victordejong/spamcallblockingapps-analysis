.class public final Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/VideoViewabilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u000f\u001a\u00020\u0010J\t\u0010\u0011\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;",
        "",
        "content",
        "",
        "viewablePlaytimeMS",
        "",
        "percentViewable",
        "(Ljava/lang/String;II)V",
        "isRepeatable",
        "",
        "messageType",
        "Lcom/mopub/mobileads/VastTracker$MessageType;",
        "getPercentViewable",
        "()I",
        "getViewablePlaytimeMS",
        "build",
        "Lcom/mopub/mobileads/VideoViewabilityTracker;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "mopub-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private a:Lcom/mopub/mobileads/VastTracker$MessageType;

.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->c:Ljava/lang/String;

    iput p2, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->d:I

    iput p3, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->e:I

    .line 24
    sget-object p1, Lcom/mopub/mobileads/VastTracker$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTracker$MessageType;

    iput-object p1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->a:Lcom/mopub/mobileads/VastTracker$MessageType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;Ljava/lang/String;IIILjava/lang/Object;)Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->c:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->d:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->e:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->copy(Ljava/lang/String;II)Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 7

    .line 29
    new-instance v6, Lcom/mopub/mobileads/VideoViewabilityTracker;

    .line 30
    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->d:I

    .line 31
    iget v2, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->e:I

    .line 32
    iget-object v3, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->c:Ljava/lang/String;

    .line 33
    iget-object v4, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->a:Lcom/mopub/mobileads/VastTracker$MessageType;

    .line 34
    iget-boolean v5, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->b:Z

    move-object v0, v6

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/VideoViewabilityTracker;-><init>(IILjava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V

    return-object v6
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->d:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->e:I

    return v0
.end method

.method public final copy(Ljava/lang/String;II)Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;

    invoke-direct {v0, p1, p2, p3}, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;

    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->d:I

    iget v1, p1, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->e:I

    iget p1, p1, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->e:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getPercentViewable()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->e:I

    return v0
.end method

.method public final getViewablePlaytimeMS()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->d:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isRepeatable(Z)Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;
    .locals 1

    .line 28
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;

    iput-boolean p1, v0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->b:Z

    return-object v0
.end method

.method public final messageType(Lcom/mopub/mobileads/VastTracker$MessageType;)Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;
    .locals 1

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;

    iput-object p1, v0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->a:Lcom/mopub/mobileads/VastTracker$MessageType;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Builder(content="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", viewablePlaytimeMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percentViewable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
