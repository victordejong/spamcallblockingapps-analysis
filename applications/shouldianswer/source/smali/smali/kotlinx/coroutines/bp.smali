.class public abstract Lkotlinx/coroutines/bp;
.super Lkotlinx/coroutines/w;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/au;
.implements Lkotlinx/coroutines/bf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/bk;",
        ">",
        "Lkotlinx/coroutines/w;",
        "Lkotlinx/coroutines/au;",
        "Lkotlinx/coroutines/bf;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/coroutines/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1201
    invoke-direct {p0}, Lkotlinx/coroutines/w;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/bp;->b:Lkotlinx/coroutines/bk;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1204
    iget-object v0, p0, Lkotlinx/coroutines/bp;->b:Lkotlinx/coroutines/bk;

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/bq;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/bq;->a(Lkotlinx/coroutines/bp;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m_()Lkotlinx/coroutines/bv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
