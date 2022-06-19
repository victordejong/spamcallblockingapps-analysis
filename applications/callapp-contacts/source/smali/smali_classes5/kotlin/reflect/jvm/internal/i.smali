.class public final synthetic Lkotlin/reflect/jvm/internal/i;
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

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->values()[Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlin/reflect/jvm/internal/i;->a:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->FILE_FACADE:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS_PART:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->SYNTHETIC_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->UNKNOWN:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    return-void
.end method
