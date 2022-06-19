.class public final Lug$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:Ldh;

.field public b:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lug$a;)V
    .locals 0

    invoke-direct {p0}, Lug$d;-><init>()V

    return-void
.end method

.method public static synthetic a(Lug$d;)I
    .locals 0

    iget p0, p0, Lug$d;->b:I

    return p0
.end method

.method public static synthetic b(Lug$d;)Z
    .locals 0

    iget-boolean p0, p0, Lug$d;->c:Z

    return p0
.end method

.method public static synthetic c(Lug$d;)I
    .locals 0

    iget p0, p0, Lug$d;->d:I

    return p0
.end method


# virtual methods
.method public d(Ldh;)Z
    .locals 1

    iget-object v0, p0, Lug$d;->a:Ldh;

    if-ne p1, v0, :cond_1

    iget p1, p0, Lug$d;->b:I

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lug$d;->c:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e(I)V
    .locals 1

    iget v0, p0, Lug$d;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lug$d;->b:I

    return-void
.end method

.method public f(Ldh;)V
    .locals 0

    iput-object p1, p0, Lug$d;->a:Ldh;

    const/4 p1, 0x0

    iput p1, p0, Lug$d;->b:I

    iput-boolean p1, p0, Lug$d;->c:Z

    return-void
.end method

.method public g(I)V
    .locals 3

    iget-boolean v0, p0, Lug$d;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lug$d;->d:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lit;->a(Z)V

    return-void

    :cond_1
    iput-boolean v1, p0, Lug$d;->c:Z

    iput p1, p0, Lug$d;->d:I

    return-void
.end method
