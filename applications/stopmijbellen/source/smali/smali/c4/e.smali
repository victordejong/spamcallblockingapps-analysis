.class public Lc4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/f;
.implements Lj4/v;
.implements Lr4/a;
.implements Lp8/h;
.implements Lr/b;
.implements Ls6/o;


# static fields
.field public static a:Lc4/e;

.field public static final synthetic b:Lc4/e;

.field public static final synthetic c:Lc4/e;

.field public static final synthetic d:Lc4/e;

.field public static final e:Lg6/b;

.field public static final f:[I

.field public static final g:[J

.field public static final h:[Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc4/e;

    invoke-direct {v0}, Lc4/e;-><init>()V

    sput-object v0, Lc4/e;->b:Lc4/e;

    .line 2
    new-instance v0, Lc4/e;

    invoke-direct {v0}, Lc4/e;-><init>()V

    sput-object v0, Lc4/e;->c:Lc4/e;

    .line 3
    new-instance v0, Lc4/e;

    invoke-direct {v0}, Lc4/e;-><init>()V

    sput-object v0, Lc4/e;->d:Lc4/e;

    .line 4
    new-instance v0, Lg6/b;

    invoke-direct {v0}, Lg6/b;-><init>()V

    sput-object v0, Lc4/e;->e:Lg6/b;

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 5
    sput-object v1, Lc4/e;->f:[I

    new-array v1, v0, [J

    .line 6
    sput-object v1, Lc4/e;->g:[J

    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    sput-object v0, Lc4/e;->h:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(IFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/widget/l;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([III)I
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 1
    aget v2, p0, v1

    if-ge v2, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v2, p2, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static c([JIJ)I
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 1
    aget-wide v2, p0, v1

    cmp-long v4, v2, p2

    if-gez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    if-lez v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    move p1, v1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i(I)I
    .locals 2

    const/4 v0, 0x4

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static j(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    .line 1
    invoke-static {p0}, Lc4/e;->i(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static k(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x8

    .line 1
    invoke-static {p0}, Lc4/e;->i(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid input received"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o([BI)I
    .locals 1

    .line 1
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method public static p([BI)J
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lc4/e;->o([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lc4/e;->o([BI)I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public b(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    sget v0, Lo4/x;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.play.core.appupdate.protocol.IAppUpdateService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lo4/y;

    if-eqz v1, :cond_1

    .line 3
    move-object p1, v0

    check-cast p1, Lo4/y;

    goto :goto_0

    :cond_1
    new-instance v0, Lo4/w;

    invoke-direct {v0, p1}, Lo4/w;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public e(Lr/a;)Lr/c;
    .locals 0

    .line 1
    check-cast p1, Landroidx/cardview/widget/CardView$a;

    .line 2
    iget-object p1, p1, Landroidx/cardview/widget/CardView$a;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    check-cast p1, Lr/c;

    return-object p1
.end method

.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    check-cast p3, Ljava/lang/Number;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 3
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    sub-float/2addr p3, p2

    mul-float p3, p3, p1

    add-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public f(FFFLc4/l;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p4, p1, p2}, Lc4/l;->d(FF)V

    return-void
.end method

.method public g(Lr/a;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object p1

    .line 2
    iget p1, p1, Lr/c;->e:F

    return p1
.end method

.method public h(Lr/a;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object p1

    .line 2
    iget p1, p1, Lr/c;->a:F

    return p1
.end method

.method public n(Lr/a;F)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object v0

    .line 2
    move-object v1, p1

    check-cast v1, Landroidx/cardview/widget/CardView$a;

    .line 3
    iget-object v2, v1, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {v2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result v2

    .line 4
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$a;->a()Z

    move-result v3

    .line 5
    iget v4, v0, Lr/c;->e:F

    cmpl-float v4, p2, v4

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lr/c;->f:Z

    if-ne v4, v2, :cond_0

    iget-boolean v4, v0, Lr/c;->g:Z

    if-ne v4, v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iput p2, v0, Lr/c;->e:F

    .line 7
    iput-boolean v2, v0, Lr/c;->f:Z

    .line 8
    iput-boolean v3, v0, Lr/c;->g:Z

    const/4 p2, 0x0

    .line 9
    invoke-virtual {v0, p2}, Lr/c;->c(Landroid/graphics/Rect;)V

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    :goto_0
    iget-object p2, v1, Landroidx/cardview/widget/CardView$a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 12
    invoke-virtual {v1, p1, p1, p1, p1}, Landroidx/cardview/widget/CardView$a;->b(IIII)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object p2

    .line 14
    iget p2, p2, Lr/c;->e:F

    .line 15
    invoke-virtual {p0, p1}, Lc4/e;->e(Lr/a;)Lr/c;

    move-result-object p1

    .line 16
    iget p1, p1, Lr/c;->a:F

    .line 17
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$a;->a()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lr/d;->a(FFZ)F

    move-result v0

    float-to-double v2, v0

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 19
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$a;->a()Z

    move-result v2

    invoke-static {p2, p1, v2}, Lr/d;->b(FFZ)F

    move-result p1

    float-to-double p1, p1

    .line 20
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 21
    invoke-virtual {v1, v0, p1, v0, p1}, Landroidx/cardview/widget/CardView$a;->b(IIII)V

    :goto_1
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lj4/f2;->e:Lp6/c;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Could not sync active asset packs. %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lp6/c;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public zza(ILjava/lang/String;)I
    .locals 0

    return p1
.end method
