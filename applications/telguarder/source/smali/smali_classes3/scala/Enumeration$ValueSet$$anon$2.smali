.class public final Lscala/Enumeration$ValueSet$$anon$2;
.super Ljava/lang/Object;
.source "Enumeration.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Enumeration$ValueSet$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom<",
        "Lscala/Enumeration$ValueSet;",
        "Lscala/Enumeration$Value;",
        "Lscala/Enumeration$ValueSet;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/Enumeration$ValueSet$;


# direct methods
.method public constructor <init>(Lscala/Enumeration$ValueSet$;)V
    .locals 0

    .line 287
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Enumeration$ValueSet$$anon$2;->$outer:Lscala/Enumeration$ValueSet$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Enumeration$Value;",
            "Lscala/Enumeration$ValueSet;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lscala/Enumeration$ValueSet$$anon$2;->$outer:Lscala/Enumeration$ValueSet$;

    invoke-virtual {v0}, Lscala/Enumeration$ValueSet$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 287
    check-cast p1, Lscala/Enumeration$ValueSet;

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet$$anon$2;->apply(Lscala/Enumeration$ValueSet;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/Enumeration$ValueSet;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Enumeration$ValueSet;",
            ")",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Enumeration$Value;",
            "Lscala/Enumeration$ValueSet;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object p1, p0, Lscala/Enumeration$ValueSet$$anon$2;->$outer:Lscala/Enumeration$ValueSet$;

    invoke-virtual {p1}, Lscala/Enumeration$ValueSet$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method
