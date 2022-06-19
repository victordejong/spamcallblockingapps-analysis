.class public Lscala/collection/convert/Decorators$AsJavaEnumeration;
.super Ljava/lang/Object;
.source "Decorators.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Decorators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsJavaEnumeration"
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

.field private final i:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/convert/Decorators;Lscala/collection/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Decorators;",
            "Lscala/collection/Iterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 35
    iput-object p2, p0, Lscala/collection/convert/Decorators$AsJavaEnumeration;->i:Lscala/collection/Iterator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/convert/Decorators$AsJavaEnumeration;->$outer:Lscala/collection/convert/Decorators;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asJavaEnumeration()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "TA;>;"
        }
    .end annotation

    .line 37
    sget-object v0, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    iget-object v1, p0, Lscala/collection/convert/Decorators$AsJavaEnumeration;->i:Lscala/collection/Iterator;

    invoke-virtual {v0, v1}, Lscala/collection/JavaConversions$;->asJavaEnumeration(Lscala/collection/Iterator;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Decorators$AsJavaEnumeration$$$outer()Lscala/collection/convert/Decorators;
    .locals 1

    .line 35
    iget-object v0, p0, Lscala/collection/convert/Decorators$AsJavaEnumeration;->$outer:Lscala/collection/convert/Decorators;

    return-object v0
.end method
