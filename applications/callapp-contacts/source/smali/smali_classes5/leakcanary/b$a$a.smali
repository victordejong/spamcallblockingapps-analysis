.class final Lleakcanary/b$a$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/b$a;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/v;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lleakcanary/b$a;


# direct methods
.method constructor <init>(Lleakcanary/b$a;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/b$a$a;->a:Lleakcanary/b$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1037
    sget-object v0, Lleakcanary/b;->a:Lleakcanary/b;

    iget-object v0, p0, Lleakcanary/b$a$a;->a:Lleakcanary/b$a;

    iget-object v0, v0, Lleakcanary/b$a;->a:Landroid/app/Application;

    invoke-static {v0}, Lleakcanary/b;->b(Landroid/app/Application;)V

    .line 29
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
