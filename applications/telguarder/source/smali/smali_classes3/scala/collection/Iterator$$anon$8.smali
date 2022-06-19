.class public final Lscala/collection/Iterator$$anon$8;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator$;->from(II)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field private final step$2:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 148
    iput p2, p0, Lscala/collection/Iterator$$anon$8;->step$2:I

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    .line 149
    iput p1, p0, Lscala/collection/Iterator$$anon$8;->i:I

    return-void
.end method

.method private i()I
    .locals 1

    .line 149
    iget v0, p0, Lscala/collection/Iterator$$anon$8;->i:I

    return v0
.end method

.method private i_$eq(I)V
    .locals 0

    .line 149
    iput p1, p0, Lscala/collection/Iterator$$anon$8;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()I
    .locals 3

    .line 151
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$8;->i()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$8;->i()I

    move-result v1

    iget v2, p0, Lscala/collection/Iterator$$anon$8;->step$2:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$8;->i_$eq(I)V

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$8;->next()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
