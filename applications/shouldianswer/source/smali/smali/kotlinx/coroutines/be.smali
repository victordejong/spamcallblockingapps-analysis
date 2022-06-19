.class public final Lkotlinx/coroutines/be;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/bf;


# instance fields
.field private final a:Lkotlinx/coroutines/bv;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/bv;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/be;->a:Lkotlinx/coroutines/bv;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m_()Lkotlinx/coroutines/bv;
    .locals 1

    .line 1227
    iget-object v0, p0, Lkotlinx/coroutines/be;->a:Lkotlinx/coroutines/bv;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1230
    invoke-virtual {p0}, Lkotlinx/coroutines/be;->m_()Lkotlinx/coroutines/bv;

    move-result-object v0

    const-string v1, "New"

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/bv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
