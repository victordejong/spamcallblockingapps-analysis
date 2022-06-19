.class public final Lcom/esotericsoftware/kryo/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/f;


# instance fields
.field protected a:Lcom/esotericsoftware/kryo/c;

.field protected final b:Lcom/esotericsoftware/kryo/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/c/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    .line 42
    invoke-direct {p0, v0}, Lcom/esotericsoftware/kryo/c/k;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/esotericsoftware/kryo/c/h;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/c/h;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->b:Lcom/esotericsoftware/kryo/c/h;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->c:Ljava/util/ArrayList;

    .line 49
    iput p1, p0, Lcom/esotericsoftware/kryo/c/k;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/k;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->b:Lcom/esotericsoftware/kryo/c/h;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/esotericsoftware/kryo/c/h;->b(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/esotericsoftware/kryo/c;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/esotericsoftware/kryo/c/k;->a:Lcom/esotericsoftware/kryo/c;

    return-void
.end method

.method public final a(Ljava/lang/Class;)Z
    .locals 1

    .line 92
    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/esotericsoftware/kryo/c/n;->c(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->b:Lcom/esotericsoftware/kryo/c/h;

    iget v0, v0, Lcom/esotericsoftware/kryo/c/h;->a:I

    .line 58
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/k;->b:Lcom/esotericsoftware/kryo/c/h;

    invoke-virtual {v1, p1, v0}, Lcom/esotericsoftware/kryo/c/h;->a(Ljava/lang/Object;I)V

    return v0
.end method

.method public final b()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/esotericsoftware/kryo/c/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 83
    iget v1, p0, Lcom/esotericsoftware/kryo/c/k;->d:I

    if-le v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 85
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/esotericsoftware/kryo/c/k;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/c/k;->b:Lcom/esotericsoftware/kryo/c/h;

    iget v1, p0, Lcom/esotericsoftware/kryo/c/k;->d:I

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/c/h;->a(I)V

    return-void
.end method
