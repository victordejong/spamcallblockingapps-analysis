.class public Lscala/Enumeration$Val;
.super Lscala/Enumeration$Value;
.source "Enumeration.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Val"
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x30969850360312b1L


# instance fields
.field private final name:Ljava/lang/String;

.field public final scala$Enumeration$Val$$i:I


# direct methods
.method public constructor <init>(Lscala/Enumeration;)V
    .locals 1

    .line 212
    invoke-virtual {p1}, Lscala/Enumeration;->nextId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lscala/Enumeration$Val;-><init>(Lscala/Enumeration;I)V

    return-void
.end method

.method public constructor <init>(Lscala/Enumeration;I)V
    .locals 1

    .line 210
    invoke-virtual {p1}, Lscala/Enumeration;->scala$Enumeration$$nextNameOrNull()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lscala/Enumeration$Val;-><init>(Lscala/Enumeration;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lscala/Enumeration;ILjava/lang/String;)V
    .locals 2

    .line 209
    iput p2, p0, Lscala/Enumeration$Val;->scala$Enumeration$Val$$i:I

    iput-object p3, p0, Lscala/Enumeration$Val;->name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lscala/Enumeration$Value;-><init>(Lscala/Enumeration;)V

    .line 214
    sget-object p3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p1}, Lscala/Enumeration;->scala$Enumeration$$vmap()Lscala/collection/mutable/Map;

    move-result-object p3

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lscala/collection/mutable/Map;->isDefinedAt(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_2

    .line 215
    invoke-virtual {p1}, Lscala/Enumeration;->scala$Enumeration$$vmap()Lscala/collection/mutable/Map;

    move-result-object p3

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0, p0}, Lscala/collection/mutable/Map;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 216
    invoke-virtual {p1, p3}, Lscala/Enumeration;->scala$Enumeration$$vsetDefined_$eq(Z)V

    add-int/lit8 p3, p2, 0x1

    .line 217
    invoke-virtual {p1, p3}, Lscala/Enumeration;->nextId_$eq(I)V

    .line 218
    invoke-virtual {p1}, Lscala/Enumeration;->nextId()I

    move-result p3

    invoke-virtual {p1}, Lscala/Enumeration;->scala$Enumeration$$topId()I

    move-result v0

    if-le p3, v0, :cond_0

    invoke-virtual {p1}, Lscala/Enumeration;->nextId()I

    move-result p3

    invoke-virtual {p1, p3}, Lscala/Enumeration;->scala$Enumeration$$topId_$eq(I)V

    .line 219
    :cond_0
    invoke-virtual {p1}, Lscala/Enumeration;->scala$Enumeration$$bottomId()I

    move-result p3

    if-ge p2, p3, :cond_1

    invoke-virtual {p1, p2}, Lscala/Enumeration;->scala$Enumeration$$bottomId_$eq(I)V

    :cond_1
    return-void

    .line 214
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v0, "assertion failed: "

    invoke-virtual {p3, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p3

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Duplicate id: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Lscala/Enumeration;Ljava/lang/String;)V
    .locals 1

    .line 211
    invoke-virtual {p1}, Lscala/Enumeration;->nextId()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lscala/Enumeration$Val;-><init>(Lscala/Enumeration;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 220
    iget v0, p0, Lscala/Enumeration$Val;->scala$Enumeration$Val$$i:I

    return v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 227
    invoke-virtual {p0}, Lscala/Enumeration$Val;->scala$Enumeration$Val$$$outer()Lscala/Enumeration;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Enumeration;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Enumeration;

    .line 228
    invoke-virtual {v0}, Lscala/Enumeration;->scala$Enumeration$$vmap()Lscala/collection/mutable/Map;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v0}, Lscala/Enumeration;->scala$Enumeration$$vmap()Lscala/collection/mutable/Map;

    move-result-object v0

    iget v1, p0, Lscala/Enumeration$Val;->scala$Enumeration$Val$$i:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Map;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public synthetic scala$Enumeration$Val$$$outer()Lscala/Enumeration;
    .locals 1

    .line 209
    iget-object v0, p0, Lscala/Enumeration$Val;->$outer:Lscala/Enumeration;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 222
    iget-object v0, p0, Lscala/Enumeration$Val;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lscala/Enumeration$Val;->scala$Enumeration$Val$$$outer()Lscala/Enumeration;

    move-result-object v0

    iget v1, p0, Lscala/Enumeration$Val;->scala$Enumeration$Val$$i:I

    invoke-virtual {v0, v1}, Lscala/Enumeration;->scala$Enumeration$$nameOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "<Invalid enum: no field for #"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget v1, p0, Lscala/Enumeration$Val;->scala$Enumeration$Val$$i:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0
.end method
