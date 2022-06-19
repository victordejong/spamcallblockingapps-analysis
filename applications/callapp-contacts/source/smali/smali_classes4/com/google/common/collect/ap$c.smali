.class final Lcom/google/common/collect/ap$c;
.super Lcom/google/common/collect/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient a:[Ljava/lang/Object;

.field private final transient b:I

.field private final transient c:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/google/common/collect/v;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/google/common/collect/ap$c;->a:[Ljava/lang/Object;

    .line 354
    iput p2, p0, Lcom/google/common/collect/ap$c;->b:I

    .line 355
    iput p3, p0, Lcom/google/common/collect/ap$c;->c:I

    return-void
.end method


# virtual methods
.method final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 360
    iget v0, p0, Lcom/google/common/collect/ap$c;->c:I

    invoke-static {p1, v0}, Lcom/google/common/base/m;->a(II)I

    .line 361
    iget-object v0, p0, Lcom/google/common/collect/ap$c;->a:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/google/common/collect/ap$c;->b:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 371
    iget v0, p0, Lcom/google/common/collect/ap$c;->c:I

    return v0
.end method
