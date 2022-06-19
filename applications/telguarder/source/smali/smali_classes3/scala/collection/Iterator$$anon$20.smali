.class public final Lscala/collection/Iterator$$anon$20;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->padTo(ILjava/lang/Object;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA1;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/Iterator;

.field private count:I

.field private final elem$4:Ljava/lang/Object;

.field private final len$3:I


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 665
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$$anon$20;->$outer:Lscala/collection/Iterator;

    iput p2, p0, Lscala/collection/Iterator$$anon$20;->len$3:I

    iput-object p3, p0, Lscala/collection/Iterator$$anon$20;->elem$4:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x0

    .line 666
    iput p1, p0, Lscala/collection/Iterator$$anon$20;->count:I

    return-void
.end method

.method private count()I
    .locals 1

    .line 666
    iget v0, p0, Lscala/collection/Iterator$$anon$20;->count:I

    return v0
.end method

.method private count_$eq(I)V
    .locals 0

    .line 666
    iput p1, p0, Lscala/collection/Iterator$$anon$20;->count:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 667
    iget-object v0, p0, Lscala/collection/Iterator$$anon$20;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$20;->count()I

    move-result v0

    iget v1, p0, Lscala/collection/Iterator$$anon$20;->len$3:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA1;"
        }
    .end annotation

    .line 669
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$20;->count()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$20;->count_$eq(I)V

    .line 670
    iget-object v0, p0, Lscala/collection/Iterator$$anon$20;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/Iterator$$anon$20;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 671
    :cond_0
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$20;->count()I

    move-result v0

    iget v1, p0, Lscala/collection/Iterator$$anon$20;->len$3:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lscala/collection/Iterator$$anon$20;->elem$4:Ljava/lang/Object;

    goto :goto_0

    .line 672
    :cond_1
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
