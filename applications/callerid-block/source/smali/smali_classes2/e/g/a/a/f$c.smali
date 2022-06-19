.class public Le/g/a/a/f$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field final a:I

.field final b:[F

.field final c:I

.field final d:I

.field final e:I

.field final f:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Le/g/a/a/f$c;->b:[F

    iput p1, p0, Le/g/a/a/f$c;->a:I

    int-to-float p1, p2

    const/4 p2, 0x0

    aput p1, v0, p2

    const/4 p2, 0x1

    aput p1, v0, p2

    int-to-float p1, p3

    const/4 p2, 0x2

    aput p1, v0, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    int-to-float p1, p4

    const/4 p2, 0x4

    aput p1, v0, p2

    const/4 p2, 0x5

    aput p1, v0, p2

    int-to-float p1, p5

    const/4 p2, 0x6

    aput p1, v0, p2

    const/4 p2, 0x7

    aput p1, v0, p2

    iput p6, p0, Le/g/a/a/f$c;->c:I

    iput p7, p0, Le/g/a/a/f$c;->d:I

    iput p8, p0, Le/g/a/a/f$c;->e:I

    iput p9, p0, Le/g/a/a/f$c;->f:I

    return-void
.end method
