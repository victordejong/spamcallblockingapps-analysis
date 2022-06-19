.class final Lcom/google/common/collect/ae$x;
.super Lcom/google/common/collect/ae$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ae$l<",
        "TK;TV;",
        "Lcom/google/common/collect/ae$w<",
        "TK;TV;>;",
        "Lcom/google/common/collect/ae$x<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ae<",
            "TK;TV;",
            "Lcom/google/common/collect/ae$w<",
            "TK;TV;>;",
            "Lcom/google/common/collect/ae$x<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2160
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/ae$l;-><init>(Lcom/google/common/collect/ae;II)V

    .line 2153
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ae$x;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2154
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ae$x;->i:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ae$x;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 2151
    iget-object p0, p0, Lcom/google/common/collect/ae$x;->h:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/ae$x;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 2151
    iget-object p0, p0, Lcom/google/common/collect/ae$x;->i:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method final bridge synthetic a()Lcom/google/common/collect/ae$l;
    .locals 0

    return-object p0
.end method

.method final b()V
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/google/common/collect/ae$x;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae$x;->a(Ljava/lang/ref/ReferenceQueue;)V

    .line 2212
    iget-object v0, p0, Lcom/google/common/collect/ae$x;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ae$x;->b(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method final c()V
    .locals 2

    .line 2217
    iget-object v0, p0, Lcom/google/common/collect/ae$x;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2379
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-nez v1, :cond_0

    return-void
.end method
