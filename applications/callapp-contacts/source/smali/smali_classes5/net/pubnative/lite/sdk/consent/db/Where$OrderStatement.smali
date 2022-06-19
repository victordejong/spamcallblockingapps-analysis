.class final Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;
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
    name = "OrderStatement"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000f\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0006H\u00c6\u0003J#\u0010\u000e\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\u0015\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014H\u0016\u00a2\u0006\u0002\u0010\u0015J\u0008\u0010\u0016\u001a\u00020\u0004H\u0016J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0004H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;",
        "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;",
        "key",
        "",
        "",
        "order",
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;",
        "(Ljava/util/List;Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;)V",
        "getKey",
        "()Ljava/util/List;",
        "getOrder",
        "()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private final key:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;


# direct methods
.method public constructor <init>(Ljava/util/List;Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;",
            ")V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    return-void
.end method

.method public static synthetic copy$default(Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;Ljava/util/List;Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;ILjava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->copy(Ljava/util/List;Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;)Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;
    .locals 1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;)Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;",
            ")",
            "Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "order"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;

    invoke-direct {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;-><init>(Ljava/util/List;Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    iget-object v1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    iget-object p1, p1, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getKey()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    return-object v0
.end method

.method public final getOrder()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;
    .locals 1

    .line 357
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    return-object v0
.end method

.method public final getStatementString()Ljava/lang/String;
    .locals 5

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 427
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_0
    check-cast v3, Ljava/lang/String;

    .line 362
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v3, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    const-string v2, ","

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v2, v4

    goto :goto_0

    .line 367
    :cond_2
    sget-object v1, Lnet/pubnative/lite/sdk/consent/db/Where;->Companion:Lnet/pubnative/lite/sdk/consent/db/Where$Companion;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/Where$Companion;->getSPACE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;->getClauseString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

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

    const-string v1, "OrderStatement(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->key:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;->order:Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
