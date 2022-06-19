.class public final Landroidx/core/view/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ac$d;,
        Landroidx/core/view/ac$c;,
        Landroidx/core/view/ac$b;,
        Landroidx/core/view/ac$a;,
        Landroidx/core/view/ac$i;,
        Landroidx/core/view/ac$h;,
        Landroidx/core/view/ac$g;,
        Landroidx/core/view/ac$f;,
        Landroidx/core/view/ac$e;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/view/ac;


# instance fields
.field public final b:Landroidx/core/view/ac$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroidx/core/view/ac$a;

    invoke-direct {v0}, Landroidx/core/view/ac$a;-><init>()V

    .line 5996
    iget-object v0, v0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    invoke-virtual {v0}, Landroidx/core/view/ac$b;->a()Landroidx/core/view/ac;

    move-result-object v0

    .line 6410
    iget-object v0, v0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->f()Landroidx/core/view/ac;

    move-result-object v0

    .line 7385
    iget-object v0, v0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->d()Landroidx/core/view/ac;

    move-result-object v0

    .line 8244
    iget-object v0, v0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->c()Landroidx/core/view/ac;

    move-result-object v0

    .line 59
    sput-object v0, Landroidx/core/view/ac;->a:Landroidx/core/view/ac;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Landroidx/core/view/ac$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/ac$i;-><init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void

    .line 67
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 68
    new-instance v0, Landroidx/core/view/ac$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/ac$h;-><init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void

    .line 69
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 70
    new-instance v0, Landroidx/core/view/ac$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/ac$g;-><init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void

    .line 71
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    .line 72
    new-instance v0, Landroidx/core/view/ac$f;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/ac$f;-><init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void

    .line 74
    :cond_3
    new-instance p1, Landroidx/core/view/ac$e;

    invoke-direct {p1, p0}, Landroidx/core/view/ac$e;-><init>(Landroidx/core/view/ac;)V

    iput-object p1, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/ac;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 86
    iget-object p1, p1, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroidx/core/view/ac$i;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroidx/core/view/ac$i;

    check-cast p1, Landroidx/core/view/ac$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/ac$i;-><init>(Landroidx/core/view/ac;Landroidx/core/view/ac$i;)V

    iput-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void

    .line 89
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Landroidx/core/view/ac$h;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Landroidx/core/view/ac$h;

    check-cast p1, Landroidx/core/view/ac$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/ac$h;-><init>(Landroidx/core/view/ac;Landroidx/core/view/ac$h;)V

    iput-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void

    .line 91
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Landroidx/core/view/ac$g;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Landroidx/core/view/ac$g;

    check-cast p1, Landroidx/core/view/ac$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/ac$g;-><init>(Landroidx/core/view/ac;Landroidx/core/view/ac$g;)V

    iput-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void

    .line 93
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Landroidx/core/view/ac$f;

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Landroidx/core/view/ac$f;

    check-cast p1, Landroidx/core/view/ac$f;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/ac$f;-><init>(Landroidx/core/view/ac;Landroidx/core/view/ac$f;)V

    iput-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void

    .line 96
    :cond_3
    new-instance p1, Landroidx/core/view/ac$e;

    invoke-direct {p1, p0}, Landroidx/core/view/ac$e;-><init>(Landroidx/core/view/ac;)V

    iput-object p1, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void

    .line 100
    :cond_4
    new-instance p1, Landroidx/core/view/ac$e;

    invoke-direct {p1, p0}, Landroidx/core/view/ac$e;-><init>(Landroidx/core/view/ac;)V

    iput-object p1, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    return-void
.end method

.method static a(Landroidx/core/graphics/b;IIII)Landroidx/core/graphics/b;
    .locals 5

    .line 837
    iget v0, p0, Landroidx/core/graphics/b;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 838
    iget v2, p0, Landroidx/core/graphics/b;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 839
    iget v3, p0, Landroidx/core/graphics/b;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 840
    iget v4, p0, Landroidx/core/graphics/b;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 844
    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/b;->a(IIII)Landroidx/core/graphics/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/WindowInsets;)Landroidx/core/view/ac;
    .locals 1

    .line 113
    new-instance v0, Landroidx/core/view/ac;

    invoke-static {p0}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/view/ac;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1428
    iget-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v0

    .line 127
    iget v0, v0, Landroidx/core/graphics/b;->b:I

    return v0
.end method

.method public final a(IIII)Landroidx/core/view/ac;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    new-instance v0, Landroidx/core/view/ac$a;

    invoke-direct {v0, p0}, Landroidx/core/view/ac$a;-><init>(Landroidx/core/view/ac;)V

    .line 266
    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/b;->a(IIII)Landroidx/core/graphics/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/ac$a;->a(Landroidx/core/graphics/b;)Landroidx/core/view/ac$a;

    move-result-object p1

    .line 4996
    iget-object p1, p1, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    invoke-virtual {p1}, Landroidx/core/view/ac$b;->a()Landroidx/core/view/ac;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .locals 1

    .line 2428
    iget-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v0

    .line 141
    iget v0, v0, Landroidx/core/graphics/b;->c:I

    return v0
.end method

.method public final b(IIII)Landroidx/core/view/ac;
    .locals 1

    .line 541
    iget-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/ac$e;->a(IIII)Landroidx/core/view/ac;

    move-result-object p1

    return-object p1
.end method

.method public final c()I
    .locals 1

    .line 3428
    iget-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v0

    .line 155
    iget v0, v0, Landroidx/core/graphics/b;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 4428
    iget-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-virtual {v0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v0

    .line 169
    iget v0, v0, Landroidx/core/graphics/b;->e:I

    return v0
.end method

.method public final e()Landroid/view/WindowInsets;
    .locals 2

    .line 569
    iget-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    instance-of v1, v0, Landroidx/core/view/ac$f;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/view/ac$f;

    iget-object v0, v0, Landroidx/core/view/ac$f;->b:Landroid/view/WindowInsets;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 549
    :cond_0
    instance-of v0, p1, Landroidx/core/view/ac;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 552
    :cond_1
    check-cast p1, Landroidx/core/view/ac;

    .line 553
    iget-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    iget-object p1, p1, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    invoke-static {v0, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 558
    iget-object v0, p0, Landroidx/core/view/ac;->b:Landroidx/core/view/ac$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/view/ac$e;->hashCode()I

    move-result v0

    return v0
.end method
