.class final Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;
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
    name = "GreaterThanStatement"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0004\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\u0013\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0016H\u0016\u00a2\u0006\u0002\u0010\u0017J\u0008\u0010\u0018\u001a\u00020\u0003H\u0016J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;",
        "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;",
        "key",
        "",
        "value",
        "",
        "isEqual",
        "",
        "(Ljava/lang/String;Ljava/lang/Number;Z)V",
        "()Z",
        "getKey",
        "()Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/Number;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
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
.field private final isEqual:Z

.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Number;Z)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->key:Ljava/lang/String;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->value:Ljava/lang/Number;

    iput-boolean p3, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->isEqual:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Number;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 297
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;-><init>(Ljava/lang/String;Ljava/lang/Number;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;Ljava/lang/String;Ljava/lang/Number;ZILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->key:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->value:Ljava/lang/Number;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->isEqual:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->copy(Ljava/lang/String;Ljava/lang/Number;Z)Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Number;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->value:Ljava/lang/Number;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->isEqual:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Number;Z)Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;

    invoke-direct {v0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;-><init>(Ljava/lang/String;Ljava/lang/Number;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->key:Ljava/lang/String;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->value:Ljava/lang/Number;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->value:Ljava/lang/Number;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->isEqual:Z

    iget-boolean p1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->isEqual:Z

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

.method public final getArgs()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->value:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementString()Ljava/lang/String;
    .locals 3

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->isEqual:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 300
    sget-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->Companion:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->getGreaterThanOrEq()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 301
    sget-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->Companion:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;->getGreaterThan()Ljava/lang/String;

    move-result-object v1

    .line 299
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 301
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getValue()Ljava/lang/Number;
    .locals 1

    .line 296
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->value:Ljava/lang/Number;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->key:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->value:Ljava/lang/Number;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->isEqual:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEqual()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->isEqual:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GreaterThanStatement(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->value:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEqual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;->isEqual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
