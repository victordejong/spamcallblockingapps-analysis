.class public final Lnet/pubnative/lite/sdk/consent/db/Where$Operator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/consent/db/Where;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Operator"
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0000H\u0016J \u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016J \u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0018\u0010\u0015\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0012H\u0016J\u0008\u0010\u0016\u001a\u00020\u0000H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016R\u0011\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0019"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/Where$Operator;",
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;",
        "Lnet/pubnative/lite/sdk/consent/db/Where;",
        "where",
        "(Lnet/pubnative/lite/sdk/consent/db/Where;)V",
        "getWhere",
        "()Lnet/pubnative/lite/sdk/consent/db/Where;",
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
        "greaterThan",
        "greaterThanOrEq",
        "notEq",
        "or",
        "smallerThan",
        "smallerThanOrEq",
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
.field private final where:Lnet/pubnative/lite/sdk/consent/db/Where;


# direct methods
.method public constructor <init>(Lnet/pubnative/lite/sdk/consent/db/Where;)V
    .locals 1

    const-string v0, "where"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-void
.end method


# virtual methods
.method public final bridge synthetic and()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->and()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object v0
.end method

.method public final and()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;
    .locals 2

    .line 263
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    sget-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->And:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    check-cast v1, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/consent/db/Where;->access$addOperatorFunction(Lnet/pubnative/lite/sdk/consent/db/Where;Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;)Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p0
.end method

.method public final bridge synthetic between(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->between(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final bridge synthetic between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final between(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "first"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-virtual {v0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where;->between(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    .line 249
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p1
.end method

.method public final between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "first"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-virtual {v0, p1, p2, p3}, Lnet/pubnative/lite/sdk/consent/db/Where;->between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/Where;

    .line 254
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p1
.end method

.method public final bridge synthetic containString(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->containString(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final containString(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->containString(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Where;

    .line 259
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p1
.end method

.method public final bridge synthetic eq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->eq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final eq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;

    .line 219
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p1
.end method

.method public final getWhere()Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    .line 216
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object v0
.end method

.method public final bridge synthetic greaterThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->greaterThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final greaterThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->greaterThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    .line 229
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p1
.end method

.method public final bridge synthetic greaterThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->greaterThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final greaterThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->greaterThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    .line 234
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p1
.end method

.method public final bridge synthetic notEq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->notEq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final notEq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->notEq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/Where;

    .line 224
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p1
.end method

.method public final bridge synthetic or()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->or()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object v0
.end method

.method public final or()Lnet/pubnative/lite/sdk/consent/db/Where$Operator;
    .locals 2

    .line 268
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    sget-object v1, Lnet/pubnative/lite/sdk/consent/db/Where$Condition;->Or:Lnet/pubnative/lite/sdk/consent/db/Where$Condition;

    check-cast v1, Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/consent/db/Where;->access$addOperatorFunction(Lnet/pubnative/lite/sdk/consent/db/Where;Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;)Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p0
.end method

.method public final bridge synthetic smallerThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->smallerThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final smallerThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->smallerThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    .line 239
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p1
.end method

.method public final bridge synthetic smallerThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .locals 0

    .line 216
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->smallerThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    move-result-object p1

    check-cast p1, Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;

    return-object p1
.end method

.method public final smallerThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    invoke-virtual {v0, p1, p2}, Lnet/pubnative/lite/sdk/consent/db/Where;->smallerThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/Where;

    .line 244
    iget-object p1, p0, Lnet/pubnative/lite/sdk/consent/db/Where$Operator;->where:Lnet/pubnative/lite/sdk/consent/db/Where;

    return-object p1
.end method
