.class public Lk7/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/t$c;,
        Lk7/t$a;,
        Lk7/t$d;,
        Lk7/t$b;
    }
.end annotation


# instance fields
.field public a:Lk7/m;

.field public b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lk7/t$d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/nio/ByteOrder;

.field public e:Lk7/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lk7/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lk7/t;->b:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk7/t;->c:Ljava/util/ArrayList;

    .line 4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lk7/t;->d:Ljava/nio/ByteOrder;

    .line 5
    new-instance v0, Lk7/l;

    invoke-direct {v0}, Lk7/l;-><init>()V

    iput-object v0, p0, Lk7/t;->e:Lk7/l;

    .line 6
    iput-object p1, p0, Lk7/t;->a:Lk7/m;

    .line 7
    invoke-interface {p1, p0}, Lk7/m;->b(Ll7/c;)V

    return-void
.end method


# virtual methods
.method public a(ILk7/t$b;)Lk7/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lk7/t$b<",
            "[B>;)",
            "Lk7/t;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk7/t;->b:Ljava/util/LinkedList;

    new-instance v1, Lk7/t$a;

    invoke-direct {v1, p1, p2}, Lk7/t$a;-><init>(ILk7/t$b;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Lk7/m;Lk7/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/t;->e:Lk7/l;

    .line 2
    iget v1, p2, Lk7/l;->c:I

    .line 3
    invoke-virtual {p2, v0, v1}, Lk7/l;->d(Lk7/l;I)V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lk7/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lk7/t;->e:Lk7/l;

    .line 5
    iget v0, v0, Lk7/l;->c:I

    .line 6
    iget-object v1, p0, Lk7/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk7/t$d;

    iget v1, v1, Lk7/t$d;->a:I

    if-lt v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lk7/t;->e:Lk7/l;

    iget-object v1, p0, Lk7/t;->d:Ljava/nio/ByteOrder;

    .line 8
    iput-object v1, v0, Lk7/l;->b:Ljava/nio/ByteOrder;

    .line 9
    iget-object v0, p0, Lk7/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/t$d;

    iget-object v1, p0, Lk7/t;->e:Lk7/l;

    invoke-virtual {v0, p1, v1}, Lk7/t$d;->a(Lk7/m;Lk7/l;)Lk7/t$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lk7/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lk7/t;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 12
    iget-object p1, p0, Lk7/t;->e:Lk7/l;

    .line 13
    iget v0, p1, Lk7/l;->c:I

    .line 14
    invoke-virtual {p1, p2, v0}, Lk7/l;->d(Lk7/l;I)V

    :cond_2
    return-void
.end method
