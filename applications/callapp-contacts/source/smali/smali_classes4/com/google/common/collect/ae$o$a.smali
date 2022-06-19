.class final Lcom/google/common/collect/ae$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ae$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ae$o;
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
        "Lcom/google/common/collect/ae$o<",
        "TK;TV;>;",
        "Lcom/google/common/collect/ae$p<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ae$o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae$o$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 419
    new-instance v0, Lcom/google/common/collect/ae$o$a;

    invoke-direct {v0}, Lcom/google/common/collect/ae$o$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/ae$o$a;->a:Lcom/google/common/collect/ae$o$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/google/common/collect/ae$o$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ae$o$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 423
    sget-object v0, Lcom/google/common/collect/ae$o$a;->a:Lcom/google/common/collect/ae$o$a;

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Lcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 2

    .line 416
    check-cast p2, Lcom/google/common/collect/ae$o;

    check-cast p3, Lcom/google/common/collect/ae$o;

    .line 3409
    new-instance p1, Lcom/google/common/collect/ae$o;

    iget-object v0, p2, Lcom/google/common/collect/ae$o;->a:Ljava/lang/Object;

    iget v1, p2, Lcom/google/common/collect/ae$o;->b:I

    invoke-direct {p1, v0, v1, p3}, Lcom/google/common/collect/ae$o;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ae$o;)V

    .line 3411
    iget-object p2, p2, Lcom/google/common/collect/ae$o;->d:Ljava/lang/Object;

    iput-object p2, p1, Lcom/google/common/collect/ae$o;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public final synthetic a(Lcom/google/common/collect/ae$l;Ljava/lang/Object;ILcom/google/common/collect/ae$g;)Lcom/google/common/collect/ae$g;
    .locals 0

    .line 416
    check-cast p4, Lcom/google/common/collect/ae$o;

    .line 3468
    new-instance p1, Lcom/google/common/collect/ae$o;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/ae$o;-><init>(Ljava/lang/Object;ILcom/google/common/collect/ae$o;)V

    return-object p1
.end method

.method public final synthetic a(Lcom/google/common/collect/ae;II)Lcom/google/common/collect/ae$l;
    .locals 1

    .line 4443
    new-instance p3, Lcom/google/common/collect/ae$p;

    const/4 v0, -0x1

    invoke-direct {p3, p1, p2, v0}, Lcom/google/common/collect/ae$p;-><init>(Lcom/google/common/collect/ae;II)V

    return-object p3
.end method

.method public final a()Lcom/google/common/collect/ae$n;
    .locals 1

    .line 428
    sget-object v0, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/common/collect/ae$l;Lcom/google/common/collect/ae$g;Ljava/lang/Object;)V
    .locals 0

    .line 416
    check-cast p2, Lcom/google/common/collect/ae$o;

    .line 2405
    iput-object p3, p2, Lcom/google/common/collect/ae$o;->d:Ljava/lang/Object;

    return-void
.end method

.method public final b()Lcom/google/common/collect/ae$n;
    .locals 1

    .line 433
    sget-object v0, Lcom/google/common/collect/ae$n;->STRONG:Lcom/google/common/collect/ae$n;

    return-object v0
.end method
