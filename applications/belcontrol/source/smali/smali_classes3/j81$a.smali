.class public Lj81$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lj81$a;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj81$a;->a:I

    return-void
.end method

.method public static synthetic a(Lj81$a;)I
    .locals 0

    iget p0, p0, Lj81$a;->a:I

    return p0
.end method


# virtual methods
.method public b()Z
    .locals 2

    iget v0, p0, Lj81$a;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lj81$a;->a:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lj81$a;->a:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lj81$a;->a:I

    return-void
.end method
