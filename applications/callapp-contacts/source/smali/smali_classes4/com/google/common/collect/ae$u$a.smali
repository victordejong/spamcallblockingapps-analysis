.class final Lcom/google/common/collect/ae$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ae$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/ae$h<",
        "TK;TV;",
        "Lcom/google/common/collect/ae$u<",
        "TK;TV;>;",
        "Lcom/google/common/collect/ae$v<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ae$u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae$u$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 789
    new-instance v0, Lcom/google/common/collect/ae$u$a;

    invoke-direct {v0}, Lcom/google/common/collect/ae$u$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/ae$u$a;->a:Lcom/google/common/collect/ae$u$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/google/common/collect/ae$u$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ae$u$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 793
    sget-object v0, Lcom/google/common/collect/ae$u$a;->a:Lcom/google/common/collect/ae$u$a;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 3

    .line 786
    check-cast p1, Lcom/google/common/collect/ae$v;

    check-cast p2, Lcom/google/common/collect/ae$u;

    check-cast p3, Lcom/google/common/collect/ae$u;

    .line 3659
    invoke-virtual {p2}, Lcom/google/common/collect/ae$c;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2824
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ae$v;->a(Lcom/google/common/collect/ae$v;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    .line 3779
    new-instance v0, Lcom/google/common/collect/ae$u;

    .line 4659
    invoke-virtual {p2}, Lcom/google/common/collect/ae$c;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3780
    iget v2, p2, Lcom/google/common/collect/ae$u;->a:I

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/google/common/collect/ae$u;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ae$u;)V

    .line 3781
    iget-object p1, p2, Lcom/google/common/collect/ae$u;->c:Ljava/lang/Object;

    .line 4774
    iput-object p1, v0, Lcom/google/common/collect/ae$u;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/common/collect/ae$l;Ljava/lang/Object;ILcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 1

    .line 786
    check-cast p1, Lcom/google/common/collect/ae$v;

    check-cast p4, Lcom/google/common/collect/ae$u;

    .line 4839
    new-instance v0, Lcom/google/common/collect/ae$u;

    invoke-static {p1}, Lcom/google/common/collect/ae$v;->a(Lcom/google/common/collect/ae$v;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/ae$u;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ae$u;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/common/collect/ae;II)Lcom/google/common/collect/ae$l;
    .locals 1

    .line 5812
    new-instance p3, Lcom/google/common/collect/ae$v;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/google/common/collect/ae$v;-><init>(Lcom/google/common/collect/ae;II)V

    return-object p3
.end method

.method public final a()Lcom/google/common/collect/ae$n;
    .locals 1

    .line 798
    sget-object v0, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V
    .locals 0

    .line 786
    check-cast p2, Lcom/google/common/collect/ae$u;

    .line 2774
    iput-object p3, p2, Lcom/google/common/collect/ae$u;->c:Ljava/lang/Object;

    return-void
.end method

.method public final b()Lcom/google/common/collect/ae$n;
    .locals 1

    .line 803
    sget-object v0, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    return-object v0
.end method
