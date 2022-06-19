.class public final Lcom/google/zxing/e/a/c$b;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private final b:[Lcom/google/zxing/e/a/c$a;


# direct methods
.method varargs constructor <init>(I[Lcom/google/zxing/e/a/c$a;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Lcom/google/zxing/e/a/c$b;->a:I

    .line 190
    iput-object p2, p0, Lcom/google/zxing/e/a/c$b;->b:[Lcom/google/zxing/e/a/c$a;

    .line 191
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/google/zxing/e/a/c$b;->a:I

    return v0
.end method

.method public b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 198
    .line 199
    iget-object v3, p0, Lcom/google/zxing/e/a/c$b;->b:[Lcom/google/zxing/e/a/c$a;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v1, v3, v0

    .line 200
    invoke-virtual {v1}, Lcom/google/zxing/e/a/c$a;->a()I

    move-result v1

    add-int/2addr v1, v2

    .line 199
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 202
    :cond_0
    return v2
.end method

.method public c()I
    .locals 2

    .prologue
    .line 206
    iget v0, p0, Lcom/google/zxing/e/a/c$b;->a:I

    invoke-virtual {p0}, Lcom/google/zxing/e/a/c$b;->b()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public d()[Lcom/google/zxing/e/a/c$a;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/zxing/e/a/c$b;->b:[Lcom/google/zxing/e/a/c$a;

    return-object v0
.end method
