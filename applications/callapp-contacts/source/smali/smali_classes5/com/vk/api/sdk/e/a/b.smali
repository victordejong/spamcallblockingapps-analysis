.class public final synthetic Lcom/vk/api/sdk/e/a/b;
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
    .locals 3

    invoke-static {}, Lcom/vk/api/sdk/e/a/c$a;->values()[Lcom/vk/api/sdk/e/a/c$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vk/api/sdk/e/a/b;->a:[I

    sget-object v1, Lcom/vk/api/sdk/e/a/c$a;->NONE:Lcom/vk/api/sdk/e/a/c$a;

    invoke-virtual {v1}, Lcom/vk/api/sdk/e/a/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/vk/api/sdk/e/a/c$a;->VERBOSE:Lcom/vk/api/sdk/e/a/c$a;

    invoke-virtual {v1}, Lcom/vk/api/sdk/e/a/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/vk/api/sdk/e/a/c$a;->DEBUG:Lcom/vk/api/sdk/e/a/c$a;

    invoke-virtual {v1}, Lcom/vk/api/sdk/e/a/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/vk/api/sdk/e/a/c$a;->WARNING:Lcom/vk/api/sdk/e/a/c$a;

    invoke-virtual {v1}, Lcom/vk/api/sdk/e/a/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/vk/api/sdk/e/a/c$a;->ERROR:Lcom/vk/api/sdk/e/a/c$a;

    invoke-virtual {v1}, Lcom/vk/api/sdk/e/a/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void
.end method
