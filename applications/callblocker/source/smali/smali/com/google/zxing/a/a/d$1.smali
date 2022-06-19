.class Lcom/google/zxing/a/a/d$1;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/a/a/d;->a()Lcom/google/zxing/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/a/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/zxing/a/a/d;


# direct methods
.method constructor <init>(Lcom/google/zxing/a/a/d;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/zxing/a/a/d$1;->a:Lcom/google/zxing/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/a/a/f;Lcom/google/zxing/a/a/f;)I
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/google/zxing/a/a/f;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/a/a/f;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 192
    check-cast p1, Lcom/google/zxing/a/a/f;

    check-cast p2, Lcom/google/zxing/a/a/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/a/a/d$1;->a(Lcom/google/zxing/a/a/f;Lcom/google/zxing/a/a/f;)I

    move-result v0

    return v0
.end method
