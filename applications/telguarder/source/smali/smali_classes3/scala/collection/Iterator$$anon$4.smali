.class public final Lscala/collection/Iterator$$anon$4;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator$;->fill(ILscala/Function0;)Lscala/collection/Iterator;
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
.field private final elem$2:Lscala/Function0;

.field private i:I

.field private final len$1:I


# direct methods
.method public constructor <init>(ILscala/Function0;)V
    .locals 0

    .line 71
    iput p1, p0, Lscala/collection/Iterator$$anon$4;->len$1:I

    iput-object p2, p0, Lscala/collection/Iterator$$anon$4;->elem$2:Lscala/Function0;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x0

    .line 72
    iput p1, p0, Lscala/collection/Iterator$$anon$4;->i:I

    return-void
.end method

.method private i()I
    .locals 1

    .line 72
    iget v0, p0, Lscala/collection/Iterator$$anon$4;->i:I

    return v0
.end method

.method private i_$eq(I)V
    .locals 0

    .line 72
    iput p1, p0, Lscala/collection/Iterator$$anon$4;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 73
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$4;->i()I

    move-result v0

    iget v1, p0, Lscala/collection/Iterator$$anon$4;->len$1:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$4;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$4;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$4;->i_$eq(I)V

    iget-object v0, p0, Lscala/collection/Iterator$$anon$4;->elem$2:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
