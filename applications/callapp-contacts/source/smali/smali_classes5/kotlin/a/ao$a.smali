.class public final Lkotlin/a/ao$a;
.super Lkotlin/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/a/ao;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/a/b<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "count",
        "",
        "index",
        "computeNext",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/a/ao;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lkotlin/a/ao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lkotlin/a/ao$a;->a:Lkotlin/a/ao;

    invoke-direct {p0}, Lkotlin/a/b;-><init>()V

    .line 112
    invoke-virtual {p1}, Lkotlin/a/ao;->size()I

    move-result v0

    iput v0, p0, Lkotlin/a/ao$a;->b:I

    .line 113
    invoke-static {p1}, Lkotlin/a/ao;->b(Lkotlin/a/ao;)I

    move-result p1

    iput p1, p0, Lkotlin/a/ao$a;->c:I

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 116
    iget v0, p0, Lkotlin/a/ao$a;->b:I

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lkotlin/a/ao$a;->b()V

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lkotlin/a/ao$a;->a:Lkotlin/a/ao;

    invoke-static {v0}, Lkotlin/a/ao;->a(Lkotlin/a/ao;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/a/ao$a;->c:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/a/ao$a;->a(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lkotlin/a/ao$a;->a:Lkotlin/a/ao;

    iget v1, p0, Lkotlin/a/ao$a;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 208
    invoke-static {v0}, Lkotlin/a/ao;->c(Lkotlin/a/ao;)I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lkotlin/a/ao$a;->c:I

    .line 122
    iget v0, p0, Lkotlin/a/ao$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/a/ao$a;->b:I

    return-void
.end method
