.class public abstract Lscala/Enumeration$Value;
.super Ljava/lang/Object;
.source "Enumeration.scala"

# interfaces
.implements Lscala/math/Ordered;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/math/Ordered<",
        "Lscala/Enumeration$Value;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x62697c2fed211d51L


# instance fields
.field public final synthetic $outer:Lscala/Enumeration;

.field private final scala$Enumeration$$outerEnum:Lscala/Enumeration;


# direct methods
.method public constructor <init>(Lscala/Enumeration;)V
    .locals 0

    .line 184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Enumeration$Value;->$outer:Lscala/Enumeration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/math/Ordered$class;->$init$(Lscala/math/Ordered;)V

    .line 188
    iput-object p1, p0, Lscala/Enumeration$Value;->scala$Enumeration$$outerEnum:Lscala/Enumeration;

    return-void
.end method


# virtual methods
.method public $greater(Ljava/lang/Object;)Z
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $greater$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$greater$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less(Ljava/lang/Object;)Z
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $less$eq(Ljava/lang/Object;)Z
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->$less$eq(Lscala/math/Ordered;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public $plus(Lscala/Enumeration$Value;)Lscala/Enumeration$ValueSet;
    .locals 4

    .line 201
    invoke-virtual {p0}, Lscala/Enumeration$Value;->scala$Enumeration$Value$$$outer()Lscala/Enumeration;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Enumeration;->ValueSet()Lscala/Enumeration$ValueSet$;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x2

    new-array v2, v2, [Lscala/Enumeration$Value;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/Enumeration$ValueSet$;->apply(Lscala/collection/Seq;)Lscala/Enumeration$ValueSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)I
    .locals 0

    .line 184
    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0, p1}, Lscala/Enumeration$Value;->compare(Lscala/Enumeration$Value;)I

    move-result p1

    return p1
.end method

.method public compare(Lscala/Enumeration$Value;)I
    .locals 2

    .line 191
    invoke-virtual {p0}, Lscala/Enumeration$Value;->id()I

    move-result v0

    invoke-virtual {p1}, Lscala/Enumeration$Value;->id()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lscala/Enumeration$Value;->id()I

    move-result v0

    invoke-virtual {p1}, Lscala/Enumeration$Value;->id()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->compareTo(Lscala/math/Ordered;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 194
    instance-of v0, p1, Lscala/Enumeration$Value;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lscala/Enumeration$Value;

    invoke-virtual {p0}, Lscala/Enumeration$Value;->scala$Enumeration$$outerEnum()Lscala/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Enumeration$Value;->scala$Enumeration$$outerEnum()Lscala/Enumeration;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lscala/Enumeration$Value;->id()I

    move-result v0

    invoke-virtual {p1}, Lscala/Enumeration$Value;->id()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 198
    invoke-virtual {p0}, Lscala/Enumeration$Value;->id()I

    move-result v0

    return v0
.end method

.method public abstract id()I
.end method

.method public scala$Enumeration$$outerEnum()Lscala/Enumeration;
    .locals 1

    .line 188
    iget-object v0, p0, Lscala/Enumeration$Value;->scala$Enumeration$$outerEnum:Lscala/Enumeration;

    return-object v0
.end method

.method public synthetic scala$Enumeration$Value$$$outer()Lscala/Enumeration;
    .locals 1

    .line 184
    iget-object v0, p0, Lscala/Enumeration$Value;->$outer:Lscala/Enumeration;

    return-object v0
.end method
