.class final Lcom/google/common/collect/ae$o;
.super Lcom/google/common/collect/ae$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ae$o$a;
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
        "Lcom/google/common/collect/ae$o<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/af<",
        "TK;TV;",
        "Lcom/google/common/collect/ae$o<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field volatile d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/ae$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/ae$o<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/ae$b;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ae$g;)V

    const/4 p1, 0x0

    .line 392
    iput-object p1, p0, Lcom/google/common/collect/ae$o;->d:Ljava/lang/Object;

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

    .line 401
    iget-object v0, p0, Lcom/google/common/collect/ae$o;->d:Ljava/lang/Object;

    return-object v0
.end method
