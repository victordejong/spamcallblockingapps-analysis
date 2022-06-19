.class public final Lscala/reflect/ClassManifestDeprecatedApis$$anonfun$subargs$1;
.super Lscala/runtime/AbstractFunction2;
.source "ClassManifestDeprecatedApis.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/reflect/ClassManifestDeprecatedApis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/reflect/OptManifest<",
        "*>;",
        "Lscala/reflect/OptManifest<",
        "*>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/reflect/ClassTag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Lscala/reflect/OptManifest;

    check-cast p2, Lscala/reflect/OptManifest;

    invoke-virtual {p0, p1, p2}, Lscala/reflect/ClassManifestDeprecatedApis$$anonfun$subargs$1;->apply(Lscala/reflect/OptManifest;Lscala/reflect/OptManifest;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/reflect/OptManifest;Lscala/reflect/OptManifest;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/OptManifest<",
            "*>;",
            "Lscala/reflect/OptManifest<",
            "*>;)Z"
        }
    .end annotation

    .line 37
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lscala/reflect/ClassTag;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/reflect/ClassTag;

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lscala/reflect/ClassTag;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/reflect/ClassTag;

    invoke-interface {p1, p2}, Lscala/reflect/ClassTag;->$less$colon$less(Lscala/reflect/ClassTag;)Z

    move-result p1

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lscala/reflect/NoManifest$;->MODULE$:Lscala/reflect/NoManifest$;

    if-ne p1, p2, :cond_1

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lscala/reflect/NoManifest$;->MODULE$:Lscala/reflect/NoManifest$;

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
