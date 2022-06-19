.class public final Lcom/d/a/a/a/a/c;
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
        "TT;",
        "Lokhttp3/RequestBody;",
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
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u0002B#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0015\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/SerializationStrategyConverter;",
        "T",
        "Lretrofit2/Converter;",
        "Lokhttp3/RequestBody;",
        "contentType",
        "Lokhttp3/MediaType;",
        "saver",
        "Lkotlinx/serialization/SerializationStrategy;",
        "serializer",
        "Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;",
        "(Lokhttp3/MediaType;Lkotlinx/serialization/SerializationStrategy;Lcom/jakewharton/retrofit2/converter/kotlinx/serialization/Serializer;)V",
        "convert",
        "value",
        "(Ljava/lang/Object;)Lokhttp3/RequestBody;",
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
.field private final a:Lokhttp3/MediaType;

.field private final b:Lkotlinx/serialization/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/d/a/a/a/a/d;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Lkotlinx/serialization/r;Lcom/d/a/a/a/a/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MediaType;",
            "Lkotlinx/serialization/r<",
            "-TT;>;",
            "Lcom/d/a/a/a/a/d;",
            ")V"
        }
    .end annotation

    const-string v0, "contentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/d/a/a/a/a/c;->a:Lokhttp3/MediaType;

    iput-object p2, p0, Lcom/d/a/a/a/a/c;->b:Lkotlinx/serialization/r;

    iput-object p3, p0, Lcom/d/a/a/a/a/c;->c:Lcom/d/a/a/a/a/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1013
    iget-object v0, p0, Lcom/d/a/a/a/a/c;->c:Lcom/d/a/a/a/a/d;

    iget-object v1, p0, Lcom/d/a/a/a/a/c;->a:Lokhttp3/MediaType;

    iget-object v2, p0, Lcom/d/a/a/a/a/c;->b:Lkotlinx/serialization/r;

    invoke-virtual {v0, v1, v2, p1}, Lcom/d/a/a/a/a/d;->a(Lokhttp3/MediaType;Lkotlinx/serialization/r;Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method
