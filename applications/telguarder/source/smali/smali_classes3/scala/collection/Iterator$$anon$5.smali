.class public final Lscala/collection/Iterator$$anon$5;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator$;->tabulate(ILscala/Function1;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final end$1:I

.field private final f$1:Lscala/Function1;

.field private i:I


# direct methods
.method public constructor <init>(ILscala/Function1;)V
    .locals 0

    .line 85
    iput p1, p0, Lscala/collection/Iterator$$anon$5;->end$1:I

    iput-object p2, p0, Lscala/collection/Iterator$$anon$5;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lscala/collection/Iterator$$anon$5;->i:I

    return-void
.end method

.method private i()I
    .locals 1

    .line 86
    iget v0, p0, Lscala/collection/Iterator$$anon$5;->i:I

    return v0
.end method

.method private i_$eq(I)V
    .locals 0

    .line 86
    iput p1, p0, Lscala/collection/Iterator$$anon$5;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 87
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$5;->i()I

    move-result v0

    iget v1, p0, Lscala/collection/Iterator$$anon$5;->end$1:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$5;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$$anon$5;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$5;->i()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$5;->i()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$5;->i_$eq(I)V

    goto :goto_0

    .line 90
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
