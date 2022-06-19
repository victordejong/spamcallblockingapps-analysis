.class final Lkotlin/reflect/jvm/internal/impl/utils/h$b;
.super Lkotlin/reflect/jvm/internal/impl/utils/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/utils/h$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/utils/h;

.field private final b:I


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/utils/h;)V
    .locals 1

    .line 264
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/h$b;->a:Lkotlin/reflect/jvm/internal/impl/utils/h;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/utils/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/h$1;)V

    .line 265
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/utils/h;->a(Lkotlin/reflect/jvm/internal/impl/utils/h;)I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/utils/h$b;->b:I

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/h$b;->a:Lkotlin/reflect/jvm/internal/impl/utils/h;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/h;->b(Lkotlin/reflect/jvm/internal/impl/utils/h;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 3

    .line 275
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/h$b;->a:Lkotlin/reflect/jvm/internal/impl/utils/h;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/h;->c(Lkotlin/reflect/jvm/internal/impl/utils/h;)I

    move-result v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/utils/h$b;->b:I

    if-ne v0, v1, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ModCount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/utils/h$b;->a:Lkotlin/reflect/jvm/internal/impl/utils/h;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/utils/h;->d(Lkotlin/reflect/jvm/internal/impl/utils/h;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/utils/h$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 282
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/utils/h$b;->b()V

    .line 283
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/utils/h$b;->a:Lkotlin/reflect/jvm/internal/impl/utils/h;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/utils/h;->clear()V

    return-void
.end method
