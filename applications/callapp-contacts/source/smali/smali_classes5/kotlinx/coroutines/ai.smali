.class public final Lkotlinx/coroutines/ai;
.super Lkotlin/c/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/cm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/ai$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/a;",
        "Lkotlinx/coroutines/cm<",
        "Ljava/lang/String;",
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0080\u0008\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0018B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\t\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0003J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineId;",
        "Lkotlinx/coroutines/ThreadContextElement;",
        "",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "id",
        "",
        "(J)V",
        "getId",
        "()J",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "restoreThreadContext",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "oldState",
        "toString",
        "updateThreadContext",
        "Key",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final b:Lkotlinx/coroutines/ai$a;


# instance fields
.field final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/ai$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/ai$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/ai;->b:Lkotlinx/coroutines/ai$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 158
    sget-object v0, Lkotlinx/coroutines/ai;->b:Lkotlinx/coroutines/ai$a;

    check-cast v0, Lkotlin/c/f$c;

    invoke-direct {p0, v0}, Lkotlin/c/a;-><init>(Lkotlin/c/f$c;)V

    iput-wide p1, p0, Lkotlinx/coroutines/ai;->a:J

    return-void
.end method


# virtual methods
.method public final synthetic a(Lkotlin/c/f;)Ljava/lang/Object;
    .locals 7

    .line 1163
    sget-object v0, Lkotlinx/coroutines/aj;->b:Lkotlinx/coroutines/aj$a;

    check-cast v0, Lkotlin/c/f$c;

    invoke-interface {p1, v0}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/aj;

    if-eqz p1, :cond_0

    .line 2018
    iget-object p1, p1, Lkotlinx/coroutines/aj;->a:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "coroutine"

    .line 1164
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1165
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1166
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x6

    const-string v4, " @"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    move-result v2

    if-gez v2, :cond_2

    .line 1167
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1168
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    .line 1169
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    .line 1172
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1173
    iget-wide v2, p0, Lkotlinx/coroutines/ai;->a:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1174
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 1168
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 156
    check-cast p1, Ljava/lang/String;

    .line 2179
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/ai;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/ai;

    iget-wide v0, p0, Lkotlinx/coroutines/ai;->a:J

    iget-wide v2, p1, Lkotlinx/coroutines/ai;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/c/f$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 3000
    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-static {v0, p1, p2}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Lkotlin/c/f$c;)Lkotlin/c/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/c/f$b;",
            ">(",
            "Lkotlin/c/f$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 4000
    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-static {v0, p1}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lkotlinx/coroutines/ai;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final minusKey(Lkotlin/c/f$c;)Lkotlin/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/f$c<",
            "*>;)",
            "Lkotlin/c/f;"
        }
    .end annotation

    .line 5000
    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-static {v0, p1}, Lkotlin/c/f$b$a;->b(Lkotlin/c/f$b;Lkotlin/c/f$c;)Lkotlin/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lkotlin/c/f;)Lkotlin/c/f;
    .locals 1

    .line 6000
    move-object v0, p0

    check-cast v0, Lkotlin/c/f$b;

    invoke-static {v0, p1}, Lkotlin/c/f$b$a;->a(Lkotlin/c/f$b;Lkotlin/c/f;)Lkotlin/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoroutineId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkotlinx/coroutines/ai;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
