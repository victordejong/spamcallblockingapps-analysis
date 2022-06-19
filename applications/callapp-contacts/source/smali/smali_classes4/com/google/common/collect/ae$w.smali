.class final Lcom/google/common/collect/ae$w;
.super Lcom/google/common/collect/ae$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ae$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ae$w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ae$c<",
        "TK;TV;",
        "Lcom/google/common/collect/ae$w<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/ae$y<",
        "TK;TV;",
        "Lcom/google/common/collect/ae$w<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field volatile c:Lcom/google/common/collect/ae$z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae$z<",
            "TK;TV;",
            "Lcom/google/common/collect/ae$w<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ae$w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/ae$w<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 853
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ae$c;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ae$g;)V

    .line 849
    invoke-static {}, Lcom/google/common/collect/ae;->a()Lcom/google/common/collect/ae$z;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ae$w;->c:Lcom/google/common/collect/ae$z;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lcom/google/common/collect/ae$w;->c:Lcom/google/common/collect/ae$z;

    invoke-interface {v0}, Lcom/google/common/collect/ae$z;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/google/common/collect/ae$z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ae$z<",
            "TK;TV;",
            "Lcom/google/common/collect/ae$w<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/google/common/collect/ae$w;->c:Lcom/google/common/collect/ae$z;

    return-object v0
.end method
