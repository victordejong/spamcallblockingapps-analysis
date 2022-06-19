.class public final Lnet/pubnative/lite/sdk/consent/db/Where;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/consent/db/Where$Operator;,
        Lnet/pubnative/lite/sdk/consent/db/Where$EqStatement;,
        Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;,
        Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;,
        Lnet/pubnative/lite/sdk/consent/db/Where$SmallerThanStatement;,
        Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;,
        Lnet/pubnative/lite/sdk/consent/db/Where$LikeStatement;,
        Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;,
        Lnet/pubnative/lite/sdk/consent/db/Where$Condition;,
        Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;,
        Lnet/pubnative/lite/sdk/consent/db/Where$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator<",
        "Lnet/pubnative/lite/sdk/consent/db/Where;",
        "Lnet/pubnative/lite/sdk/consent/db/Where$Operator;",
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
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u0000 )2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000b()*+,-./012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0016J \u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J \u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rH\u0016J\u0018\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0015H\u0016J\u0017\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0017H\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0002\u0008\u001bJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0002\u0008\u001dJ\u0018\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0018\u0010 \u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0015H\u0016J\u0008\u0010!\u001a\u00020\u0002H\u0016J\'\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0012\u0010\u000c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\u0017\"\u00020\r\u00a2\u0006\u0002\u0010%J\u0018\u0010&\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0018\u0010\'\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/Where;",
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;",
        "Lnet/pubnative/lite/sdk/consent/db/Where$Operator;",
        "()V",
        "mOrder",
        "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;",
        "mStatements",
        "Ljava/util/ArrayList;",
        "addOperatorFunction",
        "operatorFunction",
        "and",
        "between",
        "key",
        "",
        "first",
        "Ljava/util/Date;",
        "second",
        "",
        "containString",
        "value",
        "eq",
        "",
        "getArgs",
        "",
        "getArgs$hybid_sdk_voyager_release",
        "()[Ljava/lang/String;",
        "getClauseString",
        "getClauseString$hybid_sdk_voyager_release",
        "getOrder",
        "getOrder$hybid_sdk_voyager_release",
        "greaterThan",
        "greaterThanOrEq",
        "notEq",
        "or",
        "orderBy",
        "order",
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;",
        "(Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;[Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Where;",
        "smallerThan",
        "smallerThanOrEq",
        "BetweenStatement",
        "Companion",
        "Condition",
        "EqStatement",
        "GreaterThanStatement",
        "IStatement",
        "LikeStatement",
        "NotEqStatement",
        "Operator",
        "OrderStatement",
        "SmallerThanStatement",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lnet/pubnative/lite/sdk/consent/db/Where$Companion;

.field private static final SPACE:Ljava/lang/String;


# instance fields
.field private mOrder:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;

.field private final mStatements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/pubnative/lite/sdk/consent/db/Where$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where;->Companion:Lnet/pubnative/lite/sdk/consent/db/Where$Companion;

    const-string v0, " "

    .line 98
    sput-object v0, Lnet/pubnative/lite/sdk/consent/db/Where;->SPACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$addOperatorFunction(Lnet/pubnative/lite/sdk/consent/db/Where;Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/consent/db/Where;->addOperatorFunction(Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSPACE$cp()Ljava/lang/String;
    .locals 1

    .line 96
    sget-object v0, Lnet/pubnative/lite/sdk/consent/db/Where;->SPACE:Ljava/lang/String;

    return-object v0
.end method

.method private final addOperatorFunction(Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    .line 149
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "And statement cannot be the first params"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public final bridge synthetic and()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/Where;->and()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object v0
.end method

.method public final and()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;
    .locals 1

    .line 168
    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;-><init>(Lnet/pubnative/lite/sdk/consent/db/Where;)V

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->and()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic between(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where;->between(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final bridge synthetic between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where;->between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final between(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "first"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;

    invoke-direct {v1, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "first"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;

    invoke-direct {v1, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final bridge synthetic containString(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->containString(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final containString(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$LikeStatement;

    invoke-direct {v1, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$LikeStatement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final bridge synthetic eq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final eq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$EqStatement;

    invoke-direct {v1, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$EqStatement;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final getArgs$hybid_sdk_voyager_release()[Ljava/lang/String;
    .locals 4

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 428
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;

    .line 197
    invoke-interface {v2}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->getArgs()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 199
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v2}, Lkotlin/a/n;->a(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 203
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getClauseString$hybid_sdk_voyager_release()Ljava/lang/String;
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    iget-object v1, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .line 426
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;

    .line 181
    invoke-interface {v2}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->getStatementString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    sget-object v2, Lnet/pubnative/lite/sdk/consent/db/Where;->SPACE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOrder$hybid_sdk_voyager_release()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mOrder:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;->getStatementString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic greaterThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->greaterThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final greaterThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    new-instance v7, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;-><init>(Ljava/lang/String;Ljava/lang/Number;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final bridge synthetic greaterThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->greaterThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final greaterThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;-><init>(Ljava/lang/String;Ljava/lang/Number;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final bridge synthetic notEq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->notEq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final notEq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;

    invoke-direct {v1, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final bridge synthetic or()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/Where;->or()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object v0
.end method

.method public final or()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;
    .locals 1

    .line 172
    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;

    invoke-direct {v0, p0}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;-><init>(Lnet/pubnative/lite/sdk/consent/db/Where;)V

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->or()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;

    move-result-object v0

    return-object v0
.end method

.method public final varargs orderBy(Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;[Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "order"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;

    invoke-static {p2}, Lkotlin/a/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;-><init>(Ljava/util/List;Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;)V

    check-cast v0, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mOrder:Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;

    return-object p0
.end method

.method public final bridge synthetic smallerThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->smallerThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final smallerThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    new-instance v7, Lnet/pubnative/lite/sdk/consent/db/Where$SmallerThanStatement;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lnet/pubnative/lite/sdk/consent/db/Where$SmallerThanStatement;-><init>(Ljava/lang/String;Ljava/lang/Number;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final bridge synthetic smallerThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 96
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->smallerThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final smallerThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where;->mStatements:Ljava/util/ArrayList;

    new-instance v1, Lnet/pubnative/lite/sdk/consent/db/Where$SmallerThanStatement;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Lnet/pubnative/lite/sdk/consent/db/Where$SmallerThanStatement;-><init>(Ljava/lang/String;Ljava/lang/Number;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
