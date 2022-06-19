.class final Lcom/facebook/internal/c/a/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "html",
        "",
        "kotlin.jvm.PlatformType",
        "onReceiveValue"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/c/a/d;

.field final synthetic b:Lcom/facebook/internal/c/a/d$b;


# direct methods
.method constructor <init>(Lcom/facebook/internal/c/a/d;Lcom/facebook/internal/c/a/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/internal/c/a/d$c;->a:Lcom/facebook/internal/c/a/d;

    iput-object p2, p0, Lcom/facebook/internal/c/a/d$c;->b:Lcom/facebook/internal/c/a/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    .line 28
    check-cast p1, Ljava/lang/String;

    .line 1037
    iget-object v0, p0, Lcom/facebook/internal/c/a/d$c;->a:Lcom/facebook/internal/c/a/d;

    invoke-static {v0}, Lcom/facebook/internal/c/a/d;->a(Lcom/facebook/internal/c/a/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/c/a/d$c;->b:Lcom/facebook/internal/c/a/d$b;

    .line 1057
    iget-object v1, v1, Lcom/facebook/internal/c/a/d$b;->a:Ljava/lang/String;

    const-string v2, "html"

    .line 1037
    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
