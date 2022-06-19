.class public Lscala/collection/convert/Decorators$AsJavaCollection;
.super Ljava/lang/Object;
.source "Decorators.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Decorators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsJavaCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Decorators;

.field private final i:Lscala/collection/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Decorators;Lscala/collection/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Decorators;",
            "Lscala/collection/Iterable<",
            "TA;>;)V"
        }
    .end annotation

    .line 29
    iput-object p2, p0, Lscala/collection/convert/Decorators$AsJavaCollection;->i:Lscala/collection/Iterable;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Decorators$AsJavaCollection;->$outer:Lscala/collection/convert/Decorators;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asJavaCollection()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TA;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    iget-object v1, p0, Lscala/collection/convert/Decorators$AsJavaCollection;->i:Lscala/collection/Iterable;

    invoke-virtual {v0, v1}, Lscala/collection/JavaConversions$;->asJavaCollection(Lscala/collection/Iterable;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Decorators$AsJavaCollection$$$outer()Lscala/collection/convert/Decorators;
    .locals 1

    .line 29
    iget-object v0, p0, Lscala/collection/convert/Decorators$AsJavaCollection;->$outer:Lscala/collection/convert/Decorators;

    return-object v0
.end method
