.class public final Lkotlinx/coroutines/cb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016*\u0004\u0018\u00010\u0016H\u0000\u001a\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u0004\u0018\u00010\u0016H\u0000\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0003\"\u0016\u0010\u0008\u001a\u00020\t8\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\n\u0010\u0003\"\u0016\u0010\u000b\u001a\u00020\t8\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\u0003\"\u000e\u0010\r\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0010\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0011\u0010\u0003\"\u0016\u0010\u0012\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0013\u0010\u0003\"\u000e\u0010\u0014\u001a\u00020\u000eX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "COMPLETING_ALREADY",
        "Lkotlinx/coroutines/internal/Symbol;",
        "getCOMPLETING_ALREADY$annotations",
        "()V",
        "COMPLETING_RETRY",
        "getCOMPLETING_RETRY$annotations",
        "COMPLETING_WAITING_CHILDREN",
        "getCOMPLETING_WAITING_CHILDREN$annotations",
        "EMPTY_ACTIVE",
        "Lkotlinx/coroutines/Empty;",
        "getEMPTY_ACTIVE$annotations",
        "EMPTY_NEW",
        "getEMPTY_NEW$annotations",
        "FALSE",
        "",
        "RETRY",
        "SEALED",
        "getSEALED$annotations",
        "TOO_LATE_TO_CANCEL",
        "getTOO_LATE_TO_CANCEL$annotations",
        "TRUE",
        "boxIncomplete",
        "",
        "unboxState",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/coroutines/internal/v;

.field private static final b:Lkotlinx/coroutines/internal/v;

.field private static final c:Lkotlinx/coroutines/internal/v;

.field private static final d:Lkotlinx/coroutines/internal/v;

.field private static final e:Lkotlinx/coroutines/internal/v;

.field private static final f:Lkotlinx/coroutines/be;

.field private static final g:Lkotlinx/coroutines/be;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1288
    new-instance v0, Lkotlinx/coroutines/internal/v;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/cb;->b:Lkotlinx/coroutines/internal/v;

    .line 1291
    new-instance v0, Lkotlinx/coroutines/internal/v;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/cb;->a:Lkotlinx/coroutines/internal/v;

    .line 1293
    new-instance v0, Lkotlinx/coroutines/internal/v;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/cb;->c:Lkotlinx/coroutines/internal/v;

    .line 1295
    new-instance v0, Lkotlinx/coroutines/internal/v;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/cb;->d:Lkotlinx/coroutines/internal/v;

    .line 1302
    new-instance v0, Lkotlinx/coroutines/internal/v;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/cb;->e:Lkotlinx/coroutines/internal/v;

    .line 1304
    new-instance v0, Lkotlinx/coroutines/be;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/be;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/cb;->f:Lkotlinx/coroutines/be;

    .line 1306
    new-instance v0, Lkotlinx/coroutines/be;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/be;-><init>(Z)V

    sput-object v0, Lkotlinx/coroutines/cb;->g:Lkotlinx/coroutines/be;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1282
    instance-of v0, p0, Lkotlinx/coroutines/bq;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/br;

    check-cast p0, Lkotlinx/coroutines/bq;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/br;-><init>(Lkotlinx/coroutines/bq;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static final synthetic a()Lkotlinx/coroutines/internal/v;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/cb;->e:Lkotlinx/coroutines/internal/v;

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1283
    instance-of v0, p0, Lkotlinx/coroutines/br;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/coroutines/br;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lkotlinx/coroutines/br;->a:Lkotlinx/coroutines/bq;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/be;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/cb;->g:Lkotlinx/coroutines/be;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/internal/v;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/cb;->b:Lkotlinx/coroutines/internal/v;

    return-object v0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/v;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/cb;->d:Lkotlinx/coroutines/internal/v;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/v;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/cb;->c:Lkotlinx/coroutines/internal/v;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/be;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/cb;->f:Lkotlinx/coroutines/be;

    return-object v0
.end method
