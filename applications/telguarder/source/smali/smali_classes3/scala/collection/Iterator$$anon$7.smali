.class public final Lscala/collection/Iterator$$anon$7;
.super Lscala/collection/AbstractIterator;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator$;->iterate(Ljava/lang/Object;Lscala/Function1;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private acc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final f$2:Lscala/Function1;

.field private first:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/Function1;)V
    .locals 0

    .line 123
    iput-object p2, p0, Lscala/collection/Iterator$$anon$7;->f$2:Lscala/Function1;

    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    const/4 p2, 0x1

    .line 124
    iput-boolean p2, p0, Lscala/collection/Iterator$$anon$7;->first:Z

    .line 125
    iput-object p1, p0, Lscala/collection/Iterator$$anon$7;->acc:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lscala/collection/Iterator$$anon$7;->first:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lscala/collection/Iterator$$anon$7;->first:Z

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lscala/collection/Iterator$$anon$7;->f$2:Lscala/Function1;

    iget-object v1, p0, Lscala/collection/Iterator$$anon$7;->acc:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lscala/collection/Iterator$$anon$7;->acc:Ljava/lang/Object;

    .line 131
    :goto_0
    iget-object v0, p0, Lscala/collection/Iterator$$anon$7;->acc:Ljava/lang/Object;

    return-object v0
.end method
