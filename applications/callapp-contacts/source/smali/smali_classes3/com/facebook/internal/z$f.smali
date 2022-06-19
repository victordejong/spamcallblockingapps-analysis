.class public final Lcom/facebook/internal/z$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/z$f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\"\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;",
        "",
        "()V",
        "<set-?>",
        "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
        "appInfo",
        "getAppInfo",
        "()Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
        "",
        "protocolVersion",
        "getProtocolVersion",
        "()I",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final b:Lcom/facebook/internal/z$f$a;


# instance fields
.field a:I

.field private c:Lcom/facebook/internal/z$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/z$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/z$f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/z$f;->b:Lcom/facebook/internal/z$f$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 821
    invoke-direct {p0}, Lcom/facebook/internal/z$f;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/z$f;I)V
    .locals 0

    .line 821
    iput p1, p0, Lcom/facebook/internal/z$f;->a:I

    return-void
.end method

.method public static final synthetic a(Lcom/facebook/internal/z$f;Lcom/facebook/internal/z$e;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/facebook/internal/z$f;->c:Lcom/facebook/internal/z$e;

    return-void
.end method
