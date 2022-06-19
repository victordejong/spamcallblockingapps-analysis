.class public final synthetic Lkotlinx/coroutines/am;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/al;->values()[Lkotlinx/coroutines/al;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/coroutines/am;->a:[I

    sget-object v1, Lkotlinx/coroutines/al;->DEFAULT:Lkotlinx/coroutines/al;

    invoke-virtual {v1}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlinx/coroutines/al;->ATOMIC:Lkotlinx/coroutines/al;

    invoke-virtual {v1}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lkotlinx/coroutines/al;->UNDISPATCHED:Lkotlinx/coroutines/al;

    invoke-virtual {v1}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lkotlinx/coroutines/al;->LAZY:Lkotlinx/coroutines/al;

    invoke-virtual {v1}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lkotlinx/coroutines/al;->values()[Lkotlinx/coroutines/al;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/coroutines/am;->b:[I

    sget-object v1, Lkotlinx/coroutines/al;->DEFAULT:Lkotlinx/coroutines/al;

    invoke-virtual {v1}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lkotlinx/coroutines/al;->ATOMIC:Lkotlinx/coroutines/al;

    invoke-virtual {v1}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lkotlinx/coroutines/al;->UNDISPATCHED:Lkotlinx/coroutines/al;

    invoke-virtual {v1}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lkotlinx/coroutines/al;->LAZY:Lkotlinx/coroutines/al;

    invoke-virtual {v1}, Lkotlinx/coroutines/al;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
