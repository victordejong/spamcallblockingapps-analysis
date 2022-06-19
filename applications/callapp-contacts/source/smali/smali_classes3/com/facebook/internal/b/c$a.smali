.class final Lcom/facebook/internal/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/b/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "enabled",
        "",
        "onCompleted"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/b/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/b/c$a;

    invoke-direct {v0}, Lcom/facebook/internal/b/c$a;-><init>()V

    sput-object v0, Lcom/facebook/internal/b/c$a;->a:Lcom/facebook/internal/b/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 45
    sget-object p1, Lcom/facebook/internal/b/a/a;->a:Lcom/facebook/internal/b/a/a$a;

    invoke-virtual {p1}, Lcom/facebook/internal/b/a/a$a;->a()V

    .line 46
    sget-object p1, Lcom/facebook/internal/l$b;->CrashShield:Lcom/facebook/internal/l$b;

    invoke-static {p1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    invoke-static {}, Lcom/facebook/internal/b/a;->a()V

    .line 48
    invoke-static {}, Lcom/facebook/internal/b/b/a;->a()V

    .line 50
    :cond_0
    sget-object p1, Lcom/facebook/internal/l$b;->ThreadCheck:Lcom/facebook/internal/l$b;

    invoke-static {p1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    invoke-static {}, Lcom/facebook/internal/b/d/a;->a()V

    :cond_1
    return-void
.end method
