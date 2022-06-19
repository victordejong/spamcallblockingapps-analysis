.class public final synthetic Lkotlinx/coroutines/b/b;
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


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/b/a$c;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/coroutines/b/b;->a:[I

    sget v1, Lkotlinx/coroutines/b/a$c;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput v2, v0, v1

    sget v1, Lkotlinx/coroutines/b/a$c;->b:I

    sub-int/2addr v1, v2

    const/4 v3, 0x2

    aput v3, v0, v1

    sget v1, Lkotlinx/coroutines/b/a$c;->a:I

    sub-int/2addr v1, v2

    const/4 v3, 0x3

    aput v3, v0, v1

    sget v1, Lkotlinx/coroutines/b/a$c;->d:I

    sub-int/2addr v1, v2

    const/4 v3, 0x4

    aput v3, v0, v1

    sget v1, Lkotlinx/coroutines/b/a$c;->e:I

    sub-int/2addr v1, v2

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void
.end method
