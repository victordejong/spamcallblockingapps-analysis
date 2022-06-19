.class public final Lcom/facebook/internal/b/c;
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/InstrumentManager;",
        "",
        "()V",
        "start",
        "",
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
.field public static final a:Lcom/facebook/internal/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/facebook/internal/b/c;

    invoke-direct {v0}, Lcom/facebook/internal/b/c;-><init>()V

    sput-object v0, Lcom/facebook/internal/b/c;->a:Lcom/facebook/internal/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    sget-object v0, Lcom/facebook/internal/l$b;->CrashReport:Lcom/facebook/internal/l$b;

    sget-object v1, Lcom/facebook/internal/b/c$a;->a:Lcom/facebook/internal/b/c$a;

    check-cast v1, Lcom/facebook/internal/l$a;

    invoke-static {v0, v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 55
    sget-object v0, Lcom/facebook/internal/l$b;->ErrorReport:Lcom/facebook/internal/l$b;

    sget-object v1, Lcom/facebook/internal/b/c$b;->a:Lcom/facebook/internal/b/c$b;

    check-cast v1, Lcom/facebook/internal/l$a;

    invoke-static {v0, v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    return-void
.end method
