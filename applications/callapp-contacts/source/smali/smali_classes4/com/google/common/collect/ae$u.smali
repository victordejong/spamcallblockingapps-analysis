.class final Lcom/google/common/collect/ae$u;
.super Lcom/google/common/collect/ae$c;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ae$u$a;
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
        "Lcom/google/common/collect/ae$u<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/af<",
        "TK;TV;",
        "Lcom/google/common/collect/ae$u<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field volatile c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ae$u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/ae$u<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 764
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ae$c;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ae$g;)V

    const/4 p1, 0x0

    .line 757
    iput-object p1, p0, Lcom/google/common/collect/ae$u;->c:Ljava/lang/Object;

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

    .line 770
    iget-object v0, p0, Lcom/google/common/collect/ae$u;->c:Ljava/lang/Object;

    return-object v0
.end method
