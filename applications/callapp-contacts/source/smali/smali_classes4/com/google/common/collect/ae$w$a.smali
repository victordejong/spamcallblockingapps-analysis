.class final Lcom/google/common/collect/ae$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ae$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae$w;
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
        "Lcom/google/common/collect/ae$w<",
        "TK;TV;>;",
        "Lcom/google/common/collect/ae$x<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ae$w$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae$w$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 891
    new-instance v0, Lcom/google/common/collect/ae$w$a;

    invoke-direct {v0}, Lcom/google/common/collect/ae$w$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/ae$w$a;->a:Lcom/google/common/collect/ae$w$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/google/common/collect/ae$w$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ae$w$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 895
    sget-object v0, Lcom/google/common/collect/ae$w$a;->a:Lcom/google/common/collect/ae$w$a;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 4

    .line 888
    check-cast p1, Lcom/google/common/collect/ae$x;

    check-cast p2, Lcom/google/common/collect/ae$w;

    check-cast p3, Lcom/google/common/collect/ae$w;

    .line 3659
    invoke-virtual {p2}, Lcom/google/common/collect/ae$c;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2925
    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/ae$l;->a(Lcom/google/common/collect/ae$g;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 2928
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/ae$x;->a(Lcom/google/common/collect/ae$x;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/ae$x;->b(Lcom/google/common/collect/ae$x;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    .line 3865
    new-instance v1, Lcom/google/common/collect/ae$w;

    .line 4659
    invoke-virtual {p2}, Lcom/google/common/collect/ae$c;->get()Ljava/lang/Object;

    move-result-object v2

    .line 3866
    iget v3, p2, Lcom/google/common/collect/ae$w;->a:I

    invoke-direct {v1, v0, v2, v3, p3}, Lcom/google/common/collect/ae$w;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ae$w;)V

    .line 3867
    iget-object p2, p2, Lcom/google/common/collect/ae$w;->c:Lcom/google/common/collect/ae$z;

    invoke-interface {p2, p1, v1}, Lcom/google/common/collect/ae$z;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$z;

    move-result-object p1

    iput-object p1, v1, Lcom/google/common/collect/ae$w;->c:Lcom/google/common/collect/ae$z;

    return-object v1
.end method

.method public final synthetic a(Lcom/google/common/collect/ae$l;Ljava/lang/Object;ILcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 1

    .line 888
    check-cast p1, Lcom/google/common/collect/ae$x;

    check-cast p4, Lcom/google/common/collect/ae$w;

    .line 4943
    new-instance v0, Lcom/google/common/collect/ae$w;

    invoke-static {p1}, Lcom/google/common/collect/ae$x;->a(Lcom/google/common/collect/ae$x;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/ae$w;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/ae$w;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/common/collect/ae;II)Lcom/google/common/collect/ae$l;
    .locals 1

    .line 5913
    new-instance p3, Lcom/google/common/collect/ae$x;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/google/common/collect/ae$x;-><init>(Lcom/google/common/collect/ae;II)V

    return-object p3
.end method

.method public final a()Lcom/google/common/collect/ae$n;
    .locals 1

    .line 900
    sget-object v0, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V
    .locals 2

    .line 888
    check-cast p1, Lcom/google/common/collect/ae$x;

    check-cast p2, Lcom/google/common/collect/ae$w;

    .line 1934
    invoke-static {p1}, Lcom/google/common/collect/ae$x;->b(Lcom/google/common/collect/ae$x;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    .line 2877
    iget-object v0, p2, Lcom/google/common/collect/ae$w;->c:Lcom/google/common/collect/ae$z;

    .line 2878
    new-instance v1, Lcom/google/common/collect/ae$aa;

    invoke-direct {v1, p1, p3, p2}, Lcom/google/common/collect/ae$aa;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/ae$g;)V

    iput-object v1, p2, Lcom/google/common/collect/ae$w;->c:Lcom/google/common/collect/ae$z;

    .line 2879
    invoke-interface {v0}, Lcom/google/common/collect/ae$z;->clear()V

    return-void
.end method

.method public final b()Lcom/google/common/collect/ae$n;
    .locals 1

    .line 905
    sget-object v0, Lcom/google/common/collect/ae$n;->WEAK:Lcom/google/common/collect/ae$n;

    return-object v0
.end method
