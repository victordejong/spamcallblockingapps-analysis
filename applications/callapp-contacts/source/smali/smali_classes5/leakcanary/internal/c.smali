.class public final Lleakcanary/internal/c;
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
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a\u001a\u0010\u0002\u001a\u0002H\u0003\"\n\u0008\u0000\u0010\u0003\u0018\u0001*\u00020\u0004H\u0080\u0008\u00a2\u0006\u0002\u0010\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "NO_OP_HANDLER",
        "Ljava/lang/reflect/InvocationHandler;",
        "noOpDelegate",
        "T",
        "",
        "()Ljava/lang/Object;",
        "leakcanary-android-utils_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/InvocationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lleakcanary/internal/c$a;->a:Lleakcanary/internal/c$a;

    check-cast v0, Ljava/lang/reflect/InvocationHandler;

    sput-object v0, Lleakcanary/internal/c;->a:Ljava/lang/reflect/InvocationHandler;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/reflect/InvocationHandler;
    .locals 1

    .line 1
    sget-object v0, Lleakcanary/internal/c;->a:Ljava/lang/reflect/InvocationHandler;

    return-object v0
.end method
