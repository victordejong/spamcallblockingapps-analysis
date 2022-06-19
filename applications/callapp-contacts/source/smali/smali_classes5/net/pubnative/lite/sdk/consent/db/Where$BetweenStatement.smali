.class final Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/consent/db/Where;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BetweenStatement"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00d6\u0003J\u0015\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0015H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0003H\u0016J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;",
        "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;",
        "key",
        "",
        "first",
        "",
        "second",
        "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V",
        "getFirst",
        "()Ljava/lang/Object;",
        "getKey",
        "()Ljava/lang/String;",
        "getSecond",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "getArgs",
        "",
        "()[Ljava/lang/String;",
        "getStatementString",
        "hashCode",
        "",
        "toString",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final first:Ljava/lang/Object;

.field private final key:Ljava/lang/String;

.field private final second:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "first"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->key:Ljava/lang/String;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->first:Ljava/lang/Object;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->key:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->first:Ljava/lang/Object;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->copy(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public final component3()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "first"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;

    invoke-direct {v0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->key:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->first:Ljava/lang/Object;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->first:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getArgs()[Ljava/lang/String;
    .locals 6

    .line 333
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->first:Ljava/lang/Object;

    .line 334
    instance-of v1, v0, Ljava/util/Date;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    .line 336
    instance-of v1, v1, Ljava/util/Date;

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    .line 340
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 1

    .line 326
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecond()Ljava/lang/Object;
    .locals 1

    .line 327
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public final getStatementString()Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->Companion:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->getBetween()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->key:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->first:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BetweenStatement(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
