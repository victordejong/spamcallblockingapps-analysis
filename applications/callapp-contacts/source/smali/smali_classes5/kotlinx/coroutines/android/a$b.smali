.class public final Lkotlinx/coroutines/android/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/a;->a(JLkotlinx/coroutines/n;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "kotlinx/coroutines/RunnableKt$Runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/android/a;

.field final synthetic b:Lkotlinx/coroutines/n;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/android/a;Lkotlinx/coroutines/n;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/android/a$b;->a:Lkotlinx/coroutines/android/a;

    iput-object p2, p0, Lkotlinx/coroutines/android/a$b;->b:Lkotlinx/coroutines/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 19
    iget-object v0, p0, Lkotlinx/coroutines/android/a$b;->b:Lkotlinx/coroutines/n;

    iget-object v1, p0, Lkotlinx/coroutines/android/a$b;->a:Lkotlinx/coroutines/android/a;

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/n;->a(Lkotlinx/coroutines/af;Ljava/lang/Object;)V

    return-void
.end method
