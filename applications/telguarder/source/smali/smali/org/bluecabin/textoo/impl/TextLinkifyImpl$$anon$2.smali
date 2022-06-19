.class public final Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;
.super Ljava/lang/Object;
.source "TextLinkifyImpl.scala"

# interfaces
.implements Lorg/bluecabin/textoo/impl/Change;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->linkify(Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/Configurator;
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

.field public final matchFilter$1:Landroid/text/util/Linkify$MatchFilter;

.field public final p$1:Ljava/util/regex/Pattern;

.field public final scheme$2:Ljava/lang/String;

.field public final transformFilter$1:Landroid/text/util/Linkify$TransformFilter;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>;)V"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    iput-object p2, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->p$1:Ljava/util/regex/Pattern;

    iput-object p3, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->scheme$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->matchFilter$1:Landroid/text/util/Linkify$MatchFilter;

    iput-object p5, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->transformFilter$1:Landroid/text/util/Linkify$TransformFilter;

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

    .line 35
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

    .line 36
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    new-instance v1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2;

    invoke-direct {v1, p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;)V

    invoke-static {v0, p1, v1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic org$bluecabin$textoo$impl$TextLinkifyImpl$$anon$$$outer()Lorg/bluecabin/textoo/impl/TextLinkifyImpl;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    return-object v0
.end method
