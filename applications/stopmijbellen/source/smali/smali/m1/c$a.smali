.class public Lm1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[",
        "Lf0/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lf0/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p2, [Lf0/d$a;

    check-cast p3, [Lf0/d$a;

    .line 2
    invoke-static {p2, p3}, Lf0/d;->a([Lf0/d$a;[Lf0/d$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lm1/c$a;->a:[Lf0/d$a;

    invoke-static {v0, p2}, Lf0/d;->a([Lf0/d$a;[Lf0/d$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p2}, Lf0/d;->e([Lf0/d$a;)[Lf0/d$a;

    move-result-object v0

    iput-object v0, p0, Lm1/c$a;->a:[Lf0/d$a;

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Lm1/c$a;->a:[Lf0/d$a;

    aget-object v2, v2, v1

    aget-object v3, p2, v1

    aget-object v4, p3, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-char v5, v3, Lf0/d$a;->a:C

    iput-char v5, v2, Lf0/d$a;->a:C

    const/4 v5, 0x0

    .line 8
    :goto_1
    iget-object v6, v3, Lf0/d$a;->b:[F

    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 9
    iget-object v7, v2, Lf0/d$a;->b:[F

    aget v6, v6, v5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p1

    mul-float v8, v8, v6

    iget-object v6, v4, Lf0/d$a;->b:[F

    aget v6, v6, v5

    mul-float v6, v6, p1

    add-float/2addr v6, v8

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lm1/c$a;->a:[Lf0/d$a;

    return-object p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
