.class public final Lscala/collection/Iterator$$anon$13;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;
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
.field private final synthetic $outer:Lscala/collection/Iterator;

.field private hd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private hdDefined:Z

.field private final p$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 407
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/Iterator$$anon$13;->$outer:Lscala/collection/Iterator;

    iput-object p2, p0, Lscala/collection/Iterator$$anon$13;->p$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p1, 0x0

    .line 409
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$13;->hdDefined:Z

    return-void
.end method

.method private hd()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lscala/collection/Iterator$$anon$13;->hd:Ljava/lang/Object;

    return-object v0
.end method

.method private hdDefined()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$13;->hdDefined:Z

    return v0
.end method

.method private hdDefined_$eq(Z)V
    .locals 0

    .line 409
    iput-boolean p1, p0, Lscala/collection/Iterator$$anon$13;->hdDefined:Z

    return-void
.end method

.method private hd_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lscala/collection/Iterator$$anon$13;->hd:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 411
    invoke-direct {p0}, Lscala/collection/Iterator$$anon$13;->hdDefined()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 413
    :cond_0
    iget-object v0, p0, Lscala/collection/Iterator$$anon$13;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lscala/collection/Iterator$$anon$13;->$outer:Lscala/collection/Iterator;

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$13;->hd_$eq(Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lscala/collection/Iterator$$anon$13;->p$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$13;->hd()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0, v1}, Lscala/collection/Iterator$$anon$13;->hdDefined_$eq(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 420
    invoke-virtual {p0}, Lscala/collection/Iterator$$anon$13;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lscala/collection/Iterator$$anon$13;->hdDefined_$eq(Z)V

    invoke-direct {p0}, Lscala/collection/Iterator$$anon$13;->hd()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
