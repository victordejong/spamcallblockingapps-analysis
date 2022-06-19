.class public Lscala/collection/convert/Decorators$AsJavaDictionary;
.super Ljava/lang/Object;
.source "Decorators.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Decorators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsJavaDictionary"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Decorators;

.field private final m:Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Decorators;Lscala/collection/mutable/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Decorators;",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 41
    iput-object p2, p0, Lscala/collection/convert/Decorators$AsJavaDictionary;->m:Lscala/collection/mutable/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Decorators$AsJavaDictionary;->$outer:Lscala/collection/convert/Decorators;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asJavaDictionary()Ljava/util/Dictionary;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Dictionary<",
            "TA;TB;>;"
        }
    .end annotation

    .line 43
    sget-object v0, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    iget-object v1, p0, Lscala/collection/convert/Decorators$AsJavaDictionary;->m:Lscala/collection/mutable/Map;

    invoke-virtual {v0, v1}, Lscala/collection/JavaConversions$;->asJavaDictionary(Lscala/collection/mutable/Map;)Ljava/util/Dictionary;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Decorators$AsJavaDictionary$$$outer()Lscala/collection/convert/Decorators;
    .locals 1

    .line 41
    iget-object v0, p0, Lscala/collection/convert/Decorators$AsJavaDictionary;->$outer:Lscala/collection/convert/Decorators;

    return-object v0
.end method
