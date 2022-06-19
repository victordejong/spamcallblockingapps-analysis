.class abstract Lcom/google/common/collect/ae$a;
.super Lcom/google/common/collect/p;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/p<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/ae$n;

.field final b:Lcom/google/common/collect/ae$n;

.field final c:Lcom/google/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/base/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:I

.field transient f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ae$n;Lcom/google/common/collect/ae$n;Lcom/google/common/base/e;Lcom/google/common/base/e;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ae$n;",
            "Lcom/google/common/collect/ae$n;",
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/e<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2866
    invoke-direct {p0}, Lcom/google/common/collect/p;-><init>()V

    .line 2867
    iput-object p1, p0, Lcom/google/common/collect/ae$a;->a:Lcom/google/common/collect/ae$n;

    .line 2868
    iput-object p2, p0, Lcom/google/common/collect/ae$a;->b:Lcom/google/common/collect/ae$n;

    .line 2869
    iput-object p3, p0, Lcom/google/common/collect/ae$a;->c:Lcom/google/common/base/e;

    .line 2870
    iput-object p4, p0, Lcom/google/common/collect/ae$a;->d:Lcom/google/common/base/e;

    .line 2871
    iput p5, p0, Lcom/google/common/collect/ae$a;->e:I

    .line 2872
    iput-object p6, p0, Lcom/google/common/collect/ae$a;->f:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2877
    iget-object v0, p0, Lcom/google/common/collect/ae$a;->f:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method protected final bridge synthetic b()Ljava/util/Map;
    .locals 1

    .line 3877
    iget-object v0, p0, Lcom/google/common/collect/ae$a;->f:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method protected final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .line 4877
    iget-object v0, p0, Lcom/google/common/collect/ae$a;->f:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method
