.class public final Lkotlin/h/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/h/e;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/f/c;",
        ">;",
        "Lkotlin/jvm/internal/a/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0002J\t\u0010\u001b\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008R\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "kotlin/text/DelimitedRangesSequence$iterator$1",
        "",
        "Lkotlin/ranges/IntRange;",
        "counter",
        "",
        "getCounter",
        "()I",
        "setCounter",
        "(I)V",
        "currentStartIndex",
        "getCurrentStartIndex",
        "setCurrentStartIndex",
        "nextItem",
        "getNextItem",
        "()Lkotlin/ranges/IntRange;",
        "setNextItem",
        "(Lkotlin/ranges/IntRange;)V",
        "nextSearchIndex",
        "getNextSearchIndex",
        "setNextSearchIndex",
        "nextState",
        "getNextState",
        "setNextState",
        "calcNext",
        "",
        "hasNext",
        "",
        "next",
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
.field final synthetic a:Lkotlin/h/e;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lkotlin/f/c;

.field private f:I


# direct methods
.method constructor <init>(Lkotlin/h/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1172
    iput-object p1, p0, Lkotlin/h/e$a;->a:Lkotlin/h/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1173
    iput v0, p0, Lkotlin/h/e$a;->b:I

    .line 1174
    invoke-static {p1}, Lkotlin/h/e;->d(Lkotlin/h/e;)I

    move-result v0

    invoke-static {p1}, Lkotlin/h/e;->b(Lkotlin/h/e;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lkotlin/f/d;->a(III)I

    move-result p1

    iput p1, p0, Lkotlin/h/e$a;->c:I

    .line 1175
    iput p1, p0, Lkotlin/h/e$a;->d:I

    return-void
.end method

.method private final a()V
    .locals 6

    .line 1180
    iget v0, p0, Lkotlin/h/e$a;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1181
    iput v1, p0, Lkotlin/h/e$a;->b:I

    const/4 v0, 0x0

    .line 1182
    iput-object v0, p0, Lkotlin/h/e$a;->e:Lkotlin/f/c;

    return-void

    .line 1184
    :cond_0
    iget-object v0, p0, Lkotlin/h/e$a;->a:Lkotlin/h/e;

    invoke-static {v0}, Lkotlin/h/e;->a(Lkotlin/h/e;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lkotlin/h/e$a;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lkotlin/h/e$a;->f:I

    iget-object v4, p0, Lkotlin/h/e$a;->a:Lkotlin/h/e;

    invoke-static {v4}, Lkotlin/h/e;->a(Lkotlin/h/e;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lkotlin/h/e$a;->d:I

    iget-object v4, p0, Lkotlin/h/e$a;->a:Lkotlin/h/e;

    invoke-static {v4}, Lkotlin/h/e;->b(Lkotlin/h/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 1185
    :cond_2
    iget v0, p0, Lkotlin/h/e$a;->c:I

    new-instance v1, Lkotlin/f/c;

    iget-object v4, p0, Lkotlin/h/e$a;->a:Lkotlin/h/e;

    invoke-static {v4}, Lkotlin/h/e;->b(Lkotlin/h/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/h/p;->d(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lkotlin/f/c;-><init>(II)V

    iput-object v1, p0, Lkotlin/h/e$a;->e:Lkotlin/f/c;

    .line 1186
    iput v2, p0, Lkotlin/h/e$a;->d:I

    goto :goto_0

    .line 1188
    :cond_3
    iget-object v0, p0, Lkotlin/h/e$a;->a:Lkotlin/h/e;

    invoke-static {v0}, Lkotlin/h/e;->c(Lkotlin/h/e;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v4, p0, Lkotlin/h/e$a;->a:Lkotlin/h/e;

    invoke-static {v4}, Lkotlin/h/e;->b(Lkotlin/h/e;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lkotlin/h/e$a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/n;

    if-nez v0, :cond_4

    .line 1190
    iget v0, p0, Lkotlin/h/e$a;->c:I

    new-instance v1, Lkotlin/f/c;

    iget-object v4, p0, Lkotlin/h/e$a;->a:Lkotlin/h/e;

    invoke-static {v4}, Lkotlin/h/e;->b(Lkotlin/h/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/h/p;->d(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lkotlin/f/c;-><init>(II)V

    iput-object v1, p0, Lkotlin/h/e$a;->e:Lkotlin/f/c;

    .line 1191
    iput v2, p0, Lkotlin/h/e$a;->d:I

    goto :goto_0

    .line 2000
    :cond_4
    iget-object v2, v0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 1193
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 3000
    iget-object v0, v0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 1193
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1194
    iget v4, p0, Lkotlin/h/e$a;->c:I

    invoke-static {v4, v2}, Lkotlin/f/d;->b(II)Lkotlin/f/c;

    move-result-object v4

    iput-object v4, p0, Lkotlin/h/e$a;->e:Lkotlin/f/c;

    add-int/2addr v2, v0

    .line 1195
    iput v2, p0, Lkotlin/h/e$a;->c:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    .line 1196
    iput v2, p0, Lkotlin/h/e$a;->d:I

    .line 1199
    :goto_0
    iput v3, p0, Lkotlin/h/e$a;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1216
    iget v0, p0, Lkotlin/h/e$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1217
    invoke-direct {p0}, Lkotlin/h/e$a;->a()V

    .line 1218
    :cond_0
    iget v0, p0, Lkotlin/h/e$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 3

    .line 3204
    iget v0, p0, Lkotlin/h/e$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3205
    invoke-direct {p0}, Lkotlin/h/e$a;->a()V

    .line 3206
    :cond_0
    iget v0, p0, Lkotlin/h/e$a;->b:I

    if-eqz v0, :cond_1

    .line 3208
    iget-object v0, p0, Lkotlin/h/e$a;->e:Lkotlin/f/c;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3210
    iput-object v2, p0, Lkotlin/h/e$a;->e:Lkotlin/f/c;

    .line 3211
    iput v1, p0, Lkotlin/h/e$a;->b:I

    return-object v0

    .line 3207
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
