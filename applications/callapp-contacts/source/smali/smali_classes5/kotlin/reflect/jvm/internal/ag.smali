.class public final synthetic Lkotlin/reflect/jvm/internal/ag;
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
        0x1
    }
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lkotlin/reflect/k$a;->values()[Lkotlin/reflect/k$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlin/reflect/jvm/internal/ag;->a:[I

    sget-object v1, Lkotlin/reflect/k$a;->EXTENSION_RECEIVER:Lkotlin/reflect/k$a;

    invoke-virtual {v1}, Lkotlin/reflect/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/k$a;->INSTANCE:Lkotlin/reflect/k$a;

    invoke-virtual {v1}, Lkotlin/reflect/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/k$a;->VALUE:Lkotlin/reflect/k$a;

    invoke-virtual {v1}, Lkotlin/reflect/k$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
