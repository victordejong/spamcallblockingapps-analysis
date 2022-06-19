.class public final Lscala/collection/mutable/LinkedHashSet$Entry;
.super Ljava/lang/Object;
.source "LinkedHashSet.scala"

# interfaces
.implements Lscala/collection/mutable/HashEntry;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/LinkedHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/HashEntry<",
        "TA;",
        "Lscala/collection/mutable/LinkedHashSet$Entry<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private earlier:Lscala/collection/mutable/LinkedHashSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private later:Lscala/collection/mutable/LinkedHashSet$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashEntry$class;->$init$(Lscala/collection/mutable/HashEntry;)V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->earlier:Lscala/collection/mutable/LinkedHashSet$Entry;

    .line 142
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->later:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-void
.end method


# virtual methods
.method public earlier()Lscala/collection/mutable/LinkedHashSet$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->earlier:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-object v0
.end method

.method public earlier_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;)V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->earlier:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-void
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public later()Lscala/collection/mutable/LinkedHashSet$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->later:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-object v0
.end method

.method public later_$eq(Lscala/collection/mutable/LinkedHashSet$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/LinkedHashSet$Entry<",
            "TA;>;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->later:Lscala/collection/mutable/LinkedHashSet$Entry;

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 140
    iget-object v0, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public next_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 140
    iput-object p1, p0, Lscala/collection/mutable/LinkedHashSet$Entry;->next:Ljava/lang/Object;

    return-void
.end method
