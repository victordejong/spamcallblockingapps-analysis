.class Landroidx/j/ac;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# static fields
.field static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroidx/j/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 39
    new-instance v0, Landroidx/j/ah;

    invoke-direct {v0}, Landroidx/j/ah;-><init>()V

    sput-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    .line 56
    :goto_0
    new-instance v0, Landroidx/j/ac$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Landroidx/j/ac$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/j/ac;->a:Landroid/util/Property;

    .line 71
    new-instance v0, Landroidx/j/ac$2;

    const-class v1, Landroid/graphics/Rect;

    const-string/jumbo v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Landroidx/j/ac$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/j/ac;->b:Landroid/util/Property;

    return-void

    .line 40
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 41
    new-instance v0, Landroidx/j/ag;

    invoke-direct {v0}, Landroidx/j/ag;-><init>()V

    sput-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    goto :goto_0

    .line 42
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 43
    new-instance v0, Landroidx/j/af;

    invoke-direct {v0}, Landroidx/j/af;-><init>()V

    sput-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    goto :goto_0

    .line 44
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 45
    new-instance v0, Landroidx/j/ae;

    invoke-direct {v0}, Landroidx/j/ae;-><init>()V

    sput-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    goto :goto_0

    .line 46
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4

    .line 47
    new-instance v0, Landroidx/j/ad;

    invoke-direct {v0}, Landroidx/j/ad;-><init>()V

    sput-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    goto :goto_0

    .line 49
    :cond_4
    new-instance v0, Landroidx/j/ai;

    invoke-direct {v0}, Landroidx/j/ai;-><init>()V

    sput-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    goto :goto_0
.end method

.method static a(Landroid/view/View;)Landroidx/j/ab;
    .locals 2

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v0, Landroidx/j/aa;

    invoke-direct {v0, p0}, Landroidx/j/aa;-><init>(Landroid/view/View;)V

    .line 93
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroidx/j/z;->d(Landroid/view/View;)Landroidx/j/z;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/view/View;F)V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    invoke-virtual {v0, p0, p1}, Landroidx/j/ai;->a(Landroid/view/View;F)V

    .line 108
    return-void
.end method

.method static a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    invoke-virtual {v0, p0, p1}, Landroidx/j/ai;->a(Landroid/view/View;I)V

    .line 146
    return-void
.end method

.method static a(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 199
    sget-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/j/ai;->a(Landroid/view/View;IIII)V

    .line 200
    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    invoke-virtual {v0, p0, p1}, Landroidx/j/ai;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 162
    return-void
.end method

.method static b(Landroid/view/View;)Landroidx/j/am;
    .locals 2

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 101
    new-instance v0, Landroidx/j/al;

    invoke-direct {v0, p0}, Landroidx/j/al;-><init>(Landroid/view/View;)V

    .line 103
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroidx/j/ak;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/j/ak;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method static b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 1

    .prologue
    .line 177
    sget-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    invoke-virtual {v0, p0, p1}, Landroidx/j/ai;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 178
    return-void
.end method

.method static c(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    invoke-virtual {v0, p0}, Landroidx/j/ai;->a(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    invoke-virtual {v0, p0}, Landroidx/j/ai;->b(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method static e(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Landroidx/j/ac;->c:Landroidx/j/ai;

    invoke-virtual {v0, p0}, Landroidx/j/ai;->c(Landroid/view/View;)V

    .line 129
    return-void
.end method
