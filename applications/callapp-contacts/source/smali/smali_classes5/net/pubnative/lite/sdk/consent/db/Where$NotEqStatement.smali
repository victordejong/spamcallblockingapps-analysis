.class final Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;
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
    name = "NotEqStatement"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00d6\u0003J\u0013\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0003H\u0016J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;",
        "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;",
        "key",
        "",
        "value",
        "",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "getKey",
        "()Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/Object;",
        "component1",
        "component2",
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
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->key:Ljava/lang/String;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->key:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->value:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->copy(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;

    invoke-direct {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->key:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->value:Ljava/lang/Object;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->value:Ljava/lang/Object;

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
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementString()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->Companion:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->getNotEqual()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 285
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->key:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotEqStatement(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
