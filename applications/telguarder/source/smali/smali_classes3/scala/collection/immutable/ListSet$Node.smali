.class public Lscala/collection/immutable/ListSet$Node;
.super Lscala/collection/immutable/ListSet;
.source "ListSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/ListSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/ListSet<",
        "TA;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/immutable/ListSet;

.field private final head:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 150
    iput-object p2, p0, Lscala/collection/immutable/ListSet$Node;->head:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/ListSet$Node;->$outer:Lscala/collection/immutable/ListSet;

    invoke-direct {p0}, Lscala/collection/immutable/ListSet;-><init>()V

    return-void
.end method

.method private containsInternal(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;TA;)Z"
        }
    .end annotation

    .line 175
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->head()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_3
    instance-of v2, v0, Ljava/lang/Character;

    if-eqz v2, :cond_4

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    :goto_2
    return v1

    :cond_5
    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->scala$collection$immutable$ListSet$$unchecked_outer()Lscala/collection/immutable/ListSet;

    move-result-object p1

    goto :goto_0
.end method

.method private sizeInternal(Lscala/collection/immutable/ListSet;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;I)I"
        }
    .end annotation

    .line 159
    :goto_0
    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 160
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->scala$collection$immutable$ListSet$$unchecked_outer()Lscala/collection/immutable/ListSet;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet$Node;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet$Node;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet$Node;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$Node;->head()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$Node;->scala$collection$immutable$ListSet$Node$$$outer()Lscala/collection/immutable/ListSet;

    move-result-object p1

    goto :goto_1

    .line 184
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$Node;->scala$collection$immutable$ListSet$Node$$$outer()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    new-instance v0, Lscala/collection/immutable/ListSet$Node;

    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$Node;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lscala/collection/immutable/ListSet$Node;-><init>(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet$Node;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet$Node;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet$Node;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/collection/immutable/ListSet$Node;

    invoke-direct {v0, p0, p1}, Lscala/collection/immutable/ListSet$Node;-><init>(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p0, p1}, Lscala/collection/immutable/ListSet$Node;->containsInternal(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lscala/collection/immutable/ListSet$Node;->head:Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public scala$collection$immutable$ListSet$$unchecked_outer()Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$Node;->scala$collection$immutable$ListSet$Node$$$outer()Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$immutable$ListSet$Node$$$outer()Lscala/collection/immutable/ListSet;
    .locals 1

    .line 150
    iget-object v0, p0, Lscala/collection/immutable/ListSet$Node;->$outer:Lscala/collection/immutable/ListSet;

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p0, v0}, Lscala/collection/immutable/ListSet$Node;->sizeInternal(Lscala/collection/immutable/ListSet;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$Node;->tail()Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$Node;->scala$collection$immutable$ListSet$Node$$$outer()Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method
