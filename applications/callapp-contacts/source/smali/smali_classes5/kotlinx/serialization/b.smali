.class public final synthetic Lkotlinx/serialization/b;
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
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lkotlinx/serialization/v;->values()[Lkotlinx/serialization/v;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/serialization/b;->a:[I

    sget-object v1, Lkotlinx/serialization/v;->BANNED:Lkotlinx/serialization/v;

    invoke-virtual {v1}, Lkotlinx/serialization/v;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lkotlinx/serialization/v;->OVERWRITE:Lkotlinx/serialization/v;

    invoke-virtual {v1}, Lkotlinx/serialization/v;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lkotlinx/serialization/v;->UPDATE:Lkotlinx/serialization/v;

    invoke-virtual {v1}, Lkotlinx/serialization/v;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
