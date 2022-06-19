.class final Lcom/google/common/collect/ae$q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ae$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae$q;
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
        "Lcom/google/common/collect/ae$q<",
        "TK;TV;>;",
        "Lcom/google/common/collect/ae$r<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ae$q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae$q$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 516
    new-instance v0, Lcom/google/common/collect/ae$q$a;

    invoke-direct {v0}, Lcom/google/common/collect/ae$q$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/ae$q$a;->a:Lcom/google/common/collect/ae$q$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/google/common/collect/ae$q$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ae$q$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 520
    sget-object v0, Lcom/google/common/collect/ae$q$a;->a:Lcom/google/common/collect/ae$q$a;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 3

    .line 513
    check-cast p1, Lcom/google/common/collect/ae$r;

    check-cast p2, Lcom/google/common/collect/ae$q;

    check-cast p3, Lcom/google/common/collect/ae$q;

    .line 2547
    invoke-static {p2}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2550
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ae$r;->a(Lcom/google/common/collect/ae$r;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    .line 3502
    new-instance v0, Lcom/google/common/collect/ae$q;

    iget-object v1, p2, Lcom/google/common/collect/ae$q;->a:Ljava/lang/Object;

    iget v2, p2, Lcom/google/common/collect/ae$q;->b:I

    invoke-direct {v0, v1, v2, p3}, Lcom/google/common/collect/ae$q;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ae$q;)V

    .line 3503
    iget-object p2, p2, Lcom/google/common/collect/ae$q;->d:Lcom/google/common/collect/ae$z;

    invoke-interface {p2, p1, v0}, Lcom/google/common/collect/ae$z;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$z;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/collect/ae$q;->d:Lcom/google/common/collect/ae$z;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/common/collect/ae$l;Ljava/lang/Object;ILcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 0

    .line 513
    check-cast p4, Lcom/google/common/collect/ae$q;

    .line 3565
    new-instance p1, Lcom/google/common/collect/ae$q;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/ae$q;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ae$q;)V

    return-object p1
.end method

.method public final synthetic a(Lcom/google/common/collect/ae;II)Lcom/google/common/collect/ae$l;
    .locals 1

    .line 4539
    new-instance p3, Lcom/google/common/collect/ae$r;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/google/common/collect/ae$r;-><init>(Lcom/google/common/collect/ae;II)V

    return-object p3
.end method

.method public final a()Lcom/google/common/collect/ae$n;
    .locals 1

    .line 525
    sget-object v0, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V
    .locals 2

    .line 513
    check-cast p1, Lcom/google/common/collect/ae$r;

    check-cast p2, Lcom/google/common/collect/ae$q;

    .line 1556
    invoke-static {p1}, Lcom/google/common/collect/ae$r;->a(Lcom/google/common/collect/ae$r;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    .line 2495
    iget-object v0, p2, Lcom/google/common/collect/ae$q;->d:Lcom/google/common/collect/ae$z;

    .line 2496
    new-instance v1, Lcom/google/common/collect/ae$aa;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/common/collect/ae$aa;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/ae$g;)V

    iput-object v1, p2, Lcom/google/common/collect/ae$q;->d:Lcom/google/common/collect/ae$z;

    .line 2497
    invoke-interface {v0}, Lcom/google/common/collect/ae$z;->clear()V

    return-void
.end method

.method public final b()Lcom/google/common/collect/ae$n;
    .locals 1

    .line 530
    sget-object v0, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    return-object v0
.end method
