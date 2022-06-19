.class final Lcom/google/common/collect/ab$a;
.super Lcom/google/common/collect/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/az<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1033
    new-instance v0, Lcom/google/common/collect/ab$a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/common/collect/ab$a;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lcom/google/common/collect/ab$a;->a:Lcom/google/common/collect/az;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .line 1039
    invoke-direct {p0, p3, p4}, Lcom/google/common/collect/a;-><init>(II)V

    .line 1040
    iput-object p1, p0, Lcom/google/common/collect/ab$a;->b:[Ljava/lang/Object;

    .line 1041
    iput p2, p0, Lcom/google/common/collect/ab$a;->c:I

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/google/common/collect/ab$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ab$a;->c:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
