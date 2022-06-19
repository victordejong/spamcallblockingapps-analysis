.class public final Lkotlinx/coroutines/android/b$b;
.super Ljava/lang/Object;
.source "Runnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/android/b;->a(JLkotlinx/coroutines/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/android/b;

.field final synthetic b:Lkotlinx/coroutines/k;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/android/b;Lkotlinx/coroutines/k;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/android/b$b;->a:Lkotlinx/coroutines/android/b;

    iput-object p2, p0, Lkotlinx/coroutines/android/b$b;->b:Lkotlinx/coroutines/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 19
    iget-object v0, p0, Lkotlinx/coroutines/android/b$b;->b:Lkotlinx/coroutines/k;

    iget-object v1, p0, Lkotlinx/coroutines/android/b$b;->a:Lkotlinx/coroutines/android/b;

    sget-object v2, Lkotlin/o;->a:Lkotlin/o;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/k;->a(Lkotlinx/coroutines/y;Ljava/lang/Object;)V

    return-void
.end method
