.class public final Lcom/facebook/internal/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/facebook/internal/FeatureManager$checkFeature$1",
        "Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;",
        "onCompleted",
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


# instance fields
.field final synthetic a:Lcom/facebook/internal/l$a;

.field final synthetic b:Lcom/facebook/internal/l$b;


# direct methods
.method constructor <init>(Lcom/facebook/internal/l$a;Lcom/facebook/internal/l$b;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/facebook/internal/l$c;->a:Lcom/facebook/internal/l$a;

    iput-object p2, p0, Lcom/facebook/internal/l$c;->b:Lcom/facebook/internal/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/facebook/internal/l$c;->a:Lcom/facebook/internal/l$a;

    iget-object v1, p0, Lcom/facebook/internal/l$c;->b:Lcom/facebook/internal/l$b;

    invoke-static {v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/internal/l$a;->a(Z)V

    return-void
.end method
