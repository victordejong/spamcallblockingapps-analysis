.class public final Lscala/collection/convert/DecorateAsJava$$anonfun$seqAsJavaListConverter$1;
.super Lscala/runtime/AbstractFunction0;
.source "DecorateAsJava.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/DecorateAsJava;->seqAsJavaListConverter(Lscala/collection/Seq;)Lscala/collection/convert/Decorators$AsJava;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/util/List<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final b$3:Lscala/collection/Seq;


# direct methods
.method public constructor <init>(Lscala/collection/convert/DecorateAsJava;Lscala/collection/Seq;)V
    .locals 0

    .line 184
    iput-object p2, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$seqAsJavaListConverter$1;->b$3:Lscala/collection/Seq;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lscala/collection/convert/DecorateAsJava$$anonfun$seqAsJavaListConverter$1;->apply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .line 184
    sget-object v0, Lscala/collection/convert/WrapAsJava$;->MODULE$:Lscala/collection/convert/WrapAsJava$;

    iget-object v1, p0, Lscala/collection/convert/DecorateAsJava$$anonfun$seqAsJavaListConverter$1;->b$3:Lscala/collection/Seq;

    invoke-virtual {v0, v1}, Lscala/collection/convert/WrapAsJava$;->seqAsJavaList(Lscala/collection/Seq;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
