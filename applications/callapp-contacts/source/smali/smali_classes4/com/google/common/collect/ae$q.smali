.class final Lcom/google/common/collect/ae$q;
.super Lcom/google/common/collect/ae$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ae$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ae$q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ae$b<",
        "TK;TV;",
        "Lcom/google/common/collect/ae$q<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/ae$y<",
        "TK;TV;",
        "Lcom/google/common/collect/ae$q<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field volatile d:Lcom/google/common/collect/ae$z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae$z<",
            "TK;TV;",
            "Lcom/google/common/collect/ae$q<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/ae$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/ae$q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/ae$b;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ae$g;)V

    .line 478
    invoke-static {}, Lcom/google/common/collect/ae;->a()Lcom/google/common/collect/ae$z;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ae$q;->d:Lcom/google/common/collect/ae$z;

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

    .line 486
    iget-object v0, p0, Lcom/google/common/collect/ae$q;->d:Lcom/google/common/collect/ae$z;

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
            "Lcom/google/common/collect/ae$q<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/google/common/collect/ae$q;->d:Lcom/google/common/collect/ae$z;

    return-object v0
.end method
