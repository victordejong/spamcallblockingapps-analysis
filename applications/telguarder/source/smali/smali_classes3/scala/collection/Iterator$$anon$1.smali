.class public final Lscala/collection/Iterator$$anon$1;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"

# interfaces
.implements Lscala/collection/BufferedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->buffered()Lscala/collection/BufferedIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TA;>;",
        "Lscala/collection/BufferedIterator<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/Iterator;

.field private hd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private hdDefined:Z


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 849
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$$anon$1;->$outer:Lscala/collection/Iterator;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    invoke-static {p0}, Lscala/collection/BufferedIterator$class;->$init$(Lscala/collection/BufferedIterator;)V

    const/4 p1, 0x0

    .line 851
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$1;->hdDefined:Z

    return-void
.end method

.method private hd()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lscala/collection/Iterator$$anon$1;->hd:Ljava/lang/Object;

    return-object v0
.end method

.method private hdDefined()Z
    .locals 1

    .line 851
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$1;->hdDefined:Z

    return v0
.end method

.method private hdDefined_$eq(Z)V
    .locals 0

    .line 851
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$1;->hdDefined:Z

    return-void
.end method

.method private hd_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 850
    iput-object p1, p0, Lscala/collection/Iterator$$anon$1;->hd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public buffered()Lscala/collection/BufferedIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator<",
            "TA;>;"
        }
    .end annotation

    .line 849
    invoke-static {p0}, Lscala/collection/BufferedIterator$class;->buffered(Lscala/collection/BufferedIterator;)Lscala/collection/BufferedIterator;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 862
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$1;->hdDefined()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lscala/collection/Iterator$$anon$1;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 854
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$1;->hdDefined()Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$1;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$1;->hd_$eq(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 856
    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$1;->hdDefined_$eq(Z)V

    .line 858
    :cond_0
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$1;->hd()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 865
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$1;->hdDefined()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 866
    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$1;->hdDefined_$eq(Z)V

    .line 867
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$1;->hd()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 868
    :cond_0
    iget-object v0, p0, Lscala/collection/Iterator$$anon$1;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
