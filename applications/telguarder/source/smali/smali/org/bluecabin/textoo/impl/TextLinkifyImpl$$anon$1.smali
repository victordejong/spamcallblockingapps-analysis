.class public final Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;
.super Ljava/lang/Object;
.source "TextLinkifyImpl.scala"

# interfaces
.implements Lorg/bluecabin/textoo/impl/Change;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/Configurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bluecabin/textoo/impl/Change<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

.field public final pattern$1:Ljava/util/regex/Pattern;

.field public final scheme$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>;)V"
        }
    .end annotation

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    iput-object p2, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;->pattern$1:Ljava/util/regex/Pattern;

    iput-object p3, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;->scheme$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lorg/bluecabin/textoo/impl/Change$class;->$init$(Lorg/bluecabin/textoo/impl/Change;)V

    return-void
.end method


# virtual methods
.method public addTo(Lscala/collection/immutable/Queue;)Lscala/collection/immutable/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;>;)",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lorg/bluecabin/textoo/impl/Change$class;->addTo(Lorg/bluecabin/textoo/impl/Change;Lscala/collection/immutable/Queue;)Lscala/collection/immutable/Queue;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    new-instance v1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1$$anonfun$apply$1;

    invoke-direct {v1, p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1$$anonfun$apply$1;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;)V

    invoke-static {v0, p1, v1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic org$bluecabin$textoo$impl$TextLinkifyImpl$$anon$$$outer()Lorg/bluecabin/textoo/impl/TextLinkifyImpl;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    return-object v0
.end method
