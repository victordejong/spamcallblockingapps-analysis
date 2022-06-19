.class public final Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaSetConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsScala.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/DecorateAsScala;->asScalaSetConverter(Ljava/util/Set;)Lscala/collection/convert/Decorators$AsScala;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/mutable/Set<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final s$1:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsScala;Ljava/util/Set;)V
    .locals 0

    .line 127
    iput-object p2, p0, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaSetConverter$1;->s$1:Ljava/util/Set;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaSetConverter$1;->apply()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/mutable/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 127
    sget-object v0, Lscala/collection/convert/WrapAsScala$;->MODULE$:Lscala/collection/convert/WrapAsScala$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsScala$$anonfun$asScalaSetConverter$1;->s$1:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsScala$;->asScalaSet(Ljava/util/Set;)Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method
