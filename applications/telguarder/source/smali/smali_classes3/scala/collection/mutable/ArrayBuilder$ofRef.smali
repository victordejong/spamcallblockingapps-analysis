.class public Lscala/collection/mutable/ArrayBuilder$ofRef;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/ArrayBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private elems:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final evidence$2:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag<",
            "TT;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(Lscala/reflect/ClassTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->evidence$2:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity:I

    .line 60
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .line 59
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0

    .line 59
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity:I

    return-void
.end method

.method private elems()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->elems:[Ljava/lang/Object;

    return-object v0
.end method

.method private elems_$eq([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->elems:[Ljava/lang/Object;

    return-void
.end method

.method private ensureSize(I)V
    .locals 1

    .line 78
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity()I

    move-result v0

    if-nez v0, :cond_3

    .line 79
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x10

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity()I

    move-result v0

    goto :goto_1

    :goto_0
    if-ge v0, p1, :cond_2

    :goto_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->resize(I)V

    :cond_3
    return-void
.end method

.method private mkArray(I)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->evidence$2:Lscala/reflect/ClassTag;

    invoke-interface {v0, p1}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 64
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->elems()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p1
.end method

.method private resize(I)V
    .locals 1

    .line 69
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->mkArray(I)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->elems_$eq([Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .line 60
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0

    .line 60
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofRef;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/mutable/ArrayBuilder$ofRef<",
            "TT;>;"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->ensureSize(I)V

    .line 87
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->elems()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v1

    aput-object p1, v0, v1

    .line 88
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size_$eq(I)V

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofRef;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TT;>;)",
            "Lscala/collection/mutable/ArrayBuilder$ofRef<",
            "TT;>;"
        }
    .end annotation

    .line 92
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofRef;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofRef;

    .line 94
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofRef;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->ensureSize(I)V

    .line 95
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofRef;->array()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->elems()[Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v5

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofRef;->length()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofRef;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size_$eq(I)V

    move-object p1, p0

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofRef;

    :goto_0
    return-object p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size_$eq(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 111
    instance-of v0, p1, Lscala/collection/mutable/ArrayBuilder$ofRef;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofRef;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v0

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->elems()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->elems()[Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->result()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public result()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->elems()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->mkArray(I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public sizeHint(I)V
    .locals 1

    .line 74
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofRef;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ArrayBuilder.ofRef"

    return-object v0
.end method
