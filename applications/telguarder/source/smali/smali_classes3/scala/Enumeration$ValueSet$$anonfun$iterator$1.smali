.class public final Lscala/Enumeration$ValueSet$$anonfun$iterator$1;
.super Lscala/runtime/AbstractFunction1;
.source "Enumeration.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Enumeration$ValueSet;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/Enumeration$Value;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Enumeration$ValueSet;


# direct methods
.method public constructor <init>(Lscala/Enumeration$ValueSet;)V
    .locals 0

    .line 259
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Enumeration$ValueSet$$anonfun$iterator$1;->$outer:Lscala/Enumeration$ValueSet;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Enumeration$ValueSet$$anonfun$iterator$1;->apply(I)Lscala/Enumeration$Value;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/Enumeration$Value;
    .locals 2

    .line 259
    iget-object v0, p0, Lscala/Enumeration$ValueSet$$anonfun$iterator$1;->$outer:Lscala/Enumeration$ValueSet;

    invoke-virtual {v0}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lscala/Enumeration$ValueSet$$anonfun$iterator$1;->$outer:Lscala/Enumeration$ValueSet;

    invoke-virtual {v1}, Lscala/Enumeration$ValueSet;->scala$Enumeration$ValueSet$$$outer()Lscala/Enumeration;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Enumeration;->scala$Enumeration$$bottomId()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lscala/Enumeration;->apply(I)Lscala/Enumeration$Value;

    move-result-object p1

    return-object p1
.end method
