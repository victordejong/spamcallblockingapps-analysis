.class final Lleakcanary/a$g$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleakcanary/a$g$a$a;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lleakcanary/a$g$a$a;


# direct methods
.method constructor <init>(Lleakcanary/a$g$a$a;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/a$g$a$a$a;->a:Lleakcanary/a$g$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lleakcanary/a$g$a$a$a;->a:Lleakcanary/a$g$a$a;

    iget-object v0, v0, Lleakcanary/a$g$a$a;->b:Lkotlin/jvm/internal/ab$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/ab$a;->a:Z

    return-void
.end method
