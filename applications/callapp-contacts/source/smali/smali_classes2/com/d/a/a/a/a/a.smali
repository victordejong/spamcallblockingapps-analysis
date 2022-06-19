.class public final Lcom/d/a/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/e<",
        "Lokhttp3/ResponseBody;",
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\t\u001a\u00028\u00002\u0006\u0010\n\u001a\u00020\u0003H\u0016\u00a2\u0006\u0002\u0010\u000bR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/DeserializationStrategyConverter;",
        "T",
        "Lretrofit2/Converter;",
        "Lokhttp3/ResponseBody;",
        "loader",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "serializer",
        "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;",
        "(Lkotlinx/serialization/DeserializationStrategy;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V",
        "convert",
        "value",
        "(Lokhttp3/ResponseBody;)Ljava/lang/Object;",
        "retrofit2-kotlinx-serialization-converter"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/serialization/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/d/a/a/a/a/d;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/d;Lcom/d/a/a/a/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/d<",
            "TT;>;",
            "Lcom/d/a/a/a/a/d;",
            ")V"
        }
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/d/a/a/a/a/a;->a:Lkotlinx/serialization/d;

    iput-object p2, p0, Lcom/d/a/a/a/a/a;->b:Lcom/d/a/a/a/a/d;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 7
    check-cast p1, Lokhttp3/ResponseBody;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/d/a/a/a/a/a;->b:Lcom/d/a/a/a/a/d;

    iget-object v1, p0, Lcom/d/a/a/a/a/a;->a:Lkotlinx/serialization/d;

    invoke-virtual {v0, v1, p1}, Lcom/d/a/a/a/a/d;->a(Lkotlinx/serialization/d;Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
