.class public final Lcom/facebook/internal/z$f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/z$f;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0008\u0010\t\u001a\u00020\u0004H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult$Companion;",
        "",
        "()V",
        "create",
        "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;",
        "nativeAppInfo",
        "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
        "protocolVersion",
        "",
        "createEmpty",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 827
    invoke-direct {p0}, Lcom/facebook/internal/z$f$a;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/internal/z$f;
    .locals 2

    .line 838
    new-instance v0, Lcom/facebook/internal/z$f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/z$f;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, -0x1

    .line 839
    invoke-static {v0, v1}, Lcom/facebook/internal/z$f;->a(Lcom/facebook/internal/z$f;I)V

    return-object v0
.end method
