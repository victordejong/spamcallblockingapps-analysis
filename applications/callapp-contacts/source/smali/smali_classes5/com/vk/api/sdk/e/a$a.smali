.class public final Lcom/vk/api/sdk/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff$Companion;",
        "",
        "()V",
        "DEFAULT",
        "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;",
        "getDEFAULT",
        "()Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field static final synthetic a:Lcom/vk/api/sdk/e/a$a;

.field private static final b:Lcom/vk/api/sdk/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/vk/api/sdk/e/a$a;

    invoke-direct {v0}, Lcom/vk/api/sdk/e/a$a;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/e/a$a;->a:Lcom/vk/api/sdk/e/a$a;

    .line 34
    new-instance v0, Lcom/vk/api/sdk/e/a$a$a;

    invoke-direct {v0}, Lcom/vk/api/sdk/e/a$a$a;-><init>()V

    check-cast v0, Lcom/vk/api/sdk/e/a;

    sput-object v0, Lcom/vk/api/sdk/e/a$a;->b:Lcom/vk/api/sdk/e/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/vk/api/sdk/e/a;
    .locals 1

    .line 34
    sget-object v0, Lcom/vk/api/sdk/e/a$a;->b:Lcom/vk/api/sdk/e/a;

    return-object v0
.end method
