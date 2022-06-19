.class final Lretrofit2/i$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/i;->a(Ljava/lang/Exception;Lkotlin/c/d;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "retrofit2/KotlinExtensions$suspendAndThrow$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/c/d;

.field final synthetic b:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lkotlin/c/d;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/i$g;->a:Lkotlin/c/d;

    iput-object p2, p0, Lretrofit2/i$g;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 115
    iget-object v0, p0, Lretrofit2/i$g;->a:Lkotlin/c/d;

    invoke-static {v0}, Lkotlin/c/a/b;->a(Lkotlin/c/d;)Lkotlin/c/d;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/i$g;->b:Ljava/lang/Exception;

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lkotlin/o;->a:Lkotlin/o$a;

    invoke-static {v1}, Lkotlin/p;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/o;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/c/d;->b(Ljava/lang/Object;)V

    return-void
.end method
