.class public Lzv0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:F

.field public b:F

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lzv0;->a:F

    iput p3, p0, Lzv0;->b:F

    iput p4, p0, Lzv0;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lzv0;->c:I

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lzv0;->a:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lzv0;->b:F

    return v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Lzv0;->a:F

    return-void
.end method

.method public e(F)V
    .locals 0

    iput p1, p0, Lzv0;->b:F

    return-void
.end method
