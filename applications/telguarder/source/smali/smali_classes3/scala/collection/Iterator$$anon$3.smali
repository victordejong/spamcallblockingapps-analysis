.class public final Lscala/collection/Iterator$$anon$3;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator$;->single(Ljava/lang/Object;)Lscala/collection/Iterator;
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
.field private final elem$1:Ljava/lang/Object;

.field private hasnext:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lscala/collection/Iterator$$anon$3;->elem$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$3;->hasnext:Z

    return-void
.end method

.method private hasnext()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$3;->hasnext:Z

    return v0
.end method

.method private hasnext_$eq(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$3;->hasnext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 51
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$3;->hasnext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$3;->hasnext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$3;->hasnext_$eq(Z)V

    iget-object v0, p0, Lscala/collection/Iterator$$anon$3;->elem$1:Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
