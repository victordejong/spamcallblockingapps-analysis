.class public final Lscala/collection/Iterator$$anon$23;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->patch(ILscala/collection/Iterator;I)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TB;>;"
    }
.end annotation


# instance fields
.field private i:I

.field private origElems:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final patchElems$1:Lscala/collection/Iterator;

.field private final replaced$1:I


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;ILscala/collection/Iterator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 1099
    iput-object p3, p0, Lscala/collection/Iterator$$anon$23;->patchElems$1:Lscala/collection/Iterator;

    iput p4, p0, Lscala/collection/Iterator$$anon$23;->replaced$1:I

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 1100
    iput-object p1, p0, Lscala/collection/Iterator$$anon$23;->origElems:Lscala/collection/Iterator;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1101
    :goto_0
    iput p2, p0, Lscala/collection/Iterator$$anon$23;->i:I

    return-void
.end method

.method private i()I
    .locals 1

    .line 1101
    iget v0, p0, Lscala/collection/Iterator$$anon$23;->i:I

    return v0
.end method

.method private i_$eq(I)V
    .locals 0

    .line 1101
    iput p1, p0, Lscala/collection/Iterator$$anon$23;->i:I

    return-void
.end method

.method private origElems()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 1100
    iget-object v0, p0, Lscala/collection/Iterator$$anon$23;->origElems:Lscala/collection/Iterator;

    return-object v0
.end method

.method private origElems_$eq(Lscala/collection/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 1100
    iput-object p1, p0, Lscala/collection/Iterator$$anon$23;->origElems:Lscala/collection/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1103
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->i()I

    move-result v0

    if-nez v0, :cond_0

    .line 1104
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->origElems()Lscala/collection/Iterator;

    move-result-object v0

    iget v1, p0, Lscala/collection/Iterator$$anon$23;->replaced$1:I

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$23;->origElems_$eq(Lscala/collection/Iterator;)V

    const/4 v0, -0x1

    .line 1105
    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$23;->i_$eq(I)V

    .line 1107
    :cond_0
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->origElems()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lscala/collection/Iterator$$anon$23;->patchElems$1:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 1110
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->i()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1111
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->origElems()Lscala/collection/Iterator;

    move-result-object v0

    iget v2, p0, Lscala/collection/Iterator$$anon$23;->replaced$1:I

    invoke-interface {v0, v2}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$23;->origElems_$eq(Lscala/collection/Iterator;)V

    .line 1112
    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$23;->i_$eq(I)V

    .line 1114
    :cond_0
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->i()I

    move-result v0

    if-gez v0, :cond_2

    .line 1115
    iget-object v0, p0, Lscala/collection/Iterator$$anon$23;->patchElems$1:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lscala/collection/Iterator$$anon$23;->patchElems$1:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1116
    :cond_1
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->origElems()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1119
    :cond_2
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->origElems()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1120
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->i()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$23;->i_$eq(I)V

    .line 1121
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$23;->origElems()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1124
    :cond_3
    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$23;->i_$eq(I)V

    .line 1125
    iget-object v0, p0, Lscala/collection/Iterator$$anon$23;->patchElems$1:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
