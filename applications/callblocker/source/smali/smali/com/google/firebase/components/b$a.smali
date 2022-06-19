.class public Lcom/google/firebase/components/b$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-components@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/components/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/google/firebase/components/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/g",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Class",
            "<-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/b$a;->a:Ljava/util/Set;

    .line 223
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/b$a;->b:Ljava/util/Set;

    .line 224
    iput v0, p0, Lcom/google/firebase/components/b$a;->c:I

    .line 225
    iput v0, p0, Lcom/google/firebase/components/b$a;->d:I

    .line 227
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/components/b$a;->f:Ljava/util/Set;

    .line 231
    const-string/jumbo v1, "Null interface"

    invoke-static {p1, v1}, Lcom/google/firebase/components/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcom/google/firebase/components/b$a;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 234
    const-string/jumbo v3, "Null interface"

    invoke-static {v2, v3}, Lcom/google/firebase/components/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/components/b$a;->a:Ljava/util/Set;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;Lcom/google/firebase/components/b$1;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/components/b$a;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method private a(I)Lcom/google/firebase/components/b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/components/b$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 264
    iget v0, p0, Lcom/google/firebase/components/b$a;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Instantiation type has already been set."

    invoke-static {v0, v1}, Lcom/google/firebase/components/r;->b(ZLjava/lang/String;)V

    .line 266
    iput p1, p0, Lcom/google/firebase/components/b$a;->c:I

    .line 267
    return-object p0

    .line 264
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/firebase/components/b$a;)Lcom/google/firebase/components/b$a;
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/google/firebase/components/b$a;->d()Lcom/google/firebase/components/b$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/firebase/components/b$a;->a:Ljava/util/Set;

    .line 272
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Components are not allowed to depend on interfaces they themselves provide."

    .line 271
    invoke-static {v0, v1}, Lcom/google/firebase/components/r;->a(ZLjava/lang/String;)V

    .line 274
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/google/firebase/components/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firebase/components/b$a;->d:I

    .line 284
    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/firebase/components/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/firebase/components/b$a;->a(I)Lcom/google/firebase/components/b$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/firebase/components/g;)Lcom/google/firebase/components/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/g",
            "<TT;>;)",
            "Lcom/google/firebase/components/b$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 278
    const-string/jumbo v0, "Null factory"

    invoke-static {p1, v0}, Lcom/google/firebase/components/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/g;

    iput-object v0, p0, Lcom/google/firebase/components/b$a;->e:Lcom/google/firebase/components/g;

    .line 279
    return-object p0
.end method

.method public a(Lcom/google/firebase/components/n;)Lcom/google/firebase/components/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/n;",
            ")",
            "Lcom/google/firebase/components/b$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 241
    const-string/jumbo v0, "Null dependency"

    invoke-static {p1, v0}, Lcom/google/firebase/components/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    invoke-virtual {p1}, Lcom/google/firebase/components/n;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/components/b$a;->a(Ljava/lang/Class;)V

    .line 243
    iget-object v0, p0, Lcom/google/firebase/components/b$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    return-object p0
.end method

.method public b()Lcom/google/firebase/components/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/firebase/components/b$a;->a(I)Lcom/google/firebase/components/b$a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/firebase/components/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/components/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/firebase/components/b$a;->e:Lcom/google/firebase/components/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Missing required property: factory."

    invoke-static {v0, v1}, Lcom/google/firebase/components/r;->b(ZLjava/lang/String;)V

    .line 290
    new-instance v0, Lcom/google/firebase/components/b;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/firebase/components/b$a;->a:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/firebase/components/b$a;->b:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v3, p0, Lcom/google/firebase/components/b$a;->c:I

    iget v4, p0, Lcom/google/firebase/components/b$a;->d:I

    iget-object v5, p0, Lcom/google/firebase/components/b$a;->e:Lcom/google/firebase/components/g;

    iget-object v6, p0, Lcom/google/firebase/components/b$a;->f:Ljava/util/Set;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/components/b;-><init>(Ljava/util/Set;Ljava/util/Set;IILcom/google/firebase/components/g;Ljava/util/Set;Lcom/google/firebase/components/b$1;)V

    return-object v0

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
