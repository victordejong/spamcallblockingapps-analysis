.class public final Landroidx/constraintlayout/a/a/f;
.super Landroidx/constraintlayout/a/a/m;
.source "SourceFile"


# static fields
.field static bd:I


# instance fields
.field a:Landroidx/constraintlayout/a/a/a/b;

.field public aI:Landroidx/constraintlayout/a/e;

.field protected aJ:Landroidx/constraintlayout/a/d;

.field aK:I

.field aL:I

.field aM:I

.field aN:I

.field public aO:I

.field public aP:I

.field aQ:[Landroidx/constraintlayout/a/a/c;

.field aR:[Landroidx/constraintlayout/a/a/c;

.field public aS:Z

.field public aT:Z

.field public aU:Z

.field public aV:I

.field public aW:I

.field public aX:I

.field public aY:Z

.field public aZ:Z

.field public b:Landroidx/constraintlayout/a/a/a/e;

.field public ba:Z

.field bb:I

.field public bc:Landroidx/constraintlayout/a/a/a/b$a;

.field private bf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private bg:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private bh:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private bi:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroidx/constraintlayout/a/a/a/b$b;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 178
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/m;-><init>()V

    .line 48
    new-instance v0, Landroidx/constraintlayout/a/a/a/b;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/a/a/a/b;-><init>(Landroidx/constraintlayout/a/a/f;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->a:Landroidx/constraintlayout/a/a/a/b;

    .line 54
    new-instance v0, Landroidx/constraintlayout/a/a/a/e;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/a/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    const/4 v1, 0x0

    .line 138
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 146
    new-instance v2, Landroidx/constraintlayout/a/d;

    invoke-direct {v2}, Landroidx/constraintlayout/a/d;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    .line 153
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    .line 154
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    const/4 v2, 0x4

    new-array v3, v2, [Landroidx/constraintlayout/a/a/c;

    .line 156
    iput-object v3, p0, Landroidx/constraintlayout/a/a/f;->aQ:[Landroidx/constraintlayout/a/a/c;

    new-array v2, v2, [Landroidx/constraintlayout/a/a/c;

    .line 157
    iput-object v2, p0, Landroidx/constraintlayout/a/a/f;->aR:[Landroidx/constraintlayout/a/a/c;

    .line 159
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->aS:Z

    .line 160
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->aT:Z

    .line 161
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->aU:Z

    .line 162
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->aV:I

    .line 163
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->aW:I

    const/16 v2, 0x101

    .line 165
    iput v2, p0, Landroidx/constraintlayout/a/a/f;->aX:I

    .line 166
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->aY:Z

    .line 168
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->aZ:Z

    .line 169
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/f;->ba:Z

    .line 272
    iput v1, p0, Landroidx/constraintlayout/a/a/f;->bb:I

    .line 274
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;

    .line 275
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    .line 480
    new-instance v0, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->bc:Landroidx/constraintlayout/a/a/a/b$a;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 200
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/a/a/m;-><init>(II)V

    .line 48
    new-instance p1, Landroidx/constraintlayout/a/a/a/b;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/a/a/a/b;-><init>(Landroidx/constraintlayout/a/a/f;)V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->a:Landroidx/constraintlayout/a/a/a/b;

    .line 54
    new-instance p1, Landroidx/constraintlayout/a/a/a/e;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/a/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;)V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    const/4 p2, 0x0

    .line 138
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 146
    new-instance v0, Landroidx/constraintlayout/a/d;

    invoke-direct {v0}, Landroidx/constraintlayout/a/d;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    .line 153
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    .line 154
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/constraintlayout/a/a/c;

    .line 156
    iput-object v1, p0, Landroidx/constraintlayout/a/a/f;->aQ:[Landroidx/constraintlayout/a/a/c;

    new-array v0, v0, [Landroidx/constraintlayout/a/a/c;

    .line 157
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->aR:[Landroidx/constraintlayout/a/a/c;

    .line 159
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aS:Z

    .line 160
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aT:Z

    .line 161
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aU:Z

    .line 162
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->aV:I

    .line 163
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->aW:I

    const/16 v0, 0x101

    .line 165
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->aX:I

    .line 166
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aY:Z

    .line 168
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aZ:Z

    .line 169
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->ba:Z

    .line 272
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->bb:I

    .line 274
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;

    .line 275
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    .line 480
    new-instance p1, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bc:Landroidx/constraintlayout/a/a/a/b$a;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/a/a/m;-><init>(IIII)V

    .line 48
    new-instance p1, Landroidx/constraintlayout/a/a/a/b;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/a/a/a/b;-><init>(Landroidx/constraintlayout/a/a/f;)V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->a:Landroidx/constraintlayout/a/a/a/b;

    .line 54
    new-instance p1, Landroidx/constraintlayout/a/a/a/e;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/a/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;)V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    const/4 p2, 0x0

    .line 138
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 146
    new-instance p3, Landroidx/constraintlayout/a/d;

    invoke-direct {p3}, Landroidx/constraintlayout/a/d;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    .line 153
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    .line 154
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    const/4 p3, 0x4

    new-array p4, p3, [Landroidx/constraintlayout/a/a/c;

    .line 156
    iput-object p4, p0, Landroidx/constraintlayout/a/a/f;->aQ:[Landroidx/constraintlayout/a/a/c;

    new-array p3, p3, [Landroidx/constraintlayout/a/a/c;

    .line 157
    iput-object p3, p0, Landroidx/constraintlayout/a/a/f;->aR:[Landroidx/constraintlayout/a/a/c;

    .line 159
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aS:Z

    .line 160
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aT:Z

    .line 161
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aU:Z

    .line 162
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->aV:I

    .line 163
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->aW:I

    const/16 p3, 0x101

    .line 165
    iput p3, p0, Landroidx/constraintlayout/a/a/f;->aX:I

    .line 166
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aY:Z

    .line 168
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->aZ:Z

    .line 169
    iput-boolean p2, p0, Landroidx/constraintlayout/a/a/f;->ba:Z

    .line 272
    iput p2, p0, Landroidx/constraintlayout/a/a/f;->bb:I

    .line 274
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;

    .line 275
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    .line 480
    new-instance p1, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {p1}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->bc:Landroidx/constraintlayout/a/a/a/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 204
    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/a/a/m;-><init>(II)V

    .line 48
    new-instance p2, Landroidx/constraintlayout/a/a/a/b;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/a/a/a/b;-><init>(Landroidx/constraintlayout/a/a/f;)V

    iput-object p2, p0, Landroidx/constraintlayout/a/a/f;->a:Landroidx/constraintlayout/a/a/a/b;

    .line 54
    new-instance p2, Landroidx/constraintlayout/a/a/a/e;

    invoke-direct {p2, p0}, Landroidx/constraintlayout/a/a/a/e;-><init>(Landroidx/constraintlayout/a/a/f;)V

    iput-object p2, p0, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    const/4 p2, 0x0

    .line 127
    iput-object p2, p0, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    const/4 p3, 0x0

    .line 138
    iput-boolean p3, p0, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 146
    new-instance v0, Landroidx/constraintlayout/a/d;

    invoke-direct {v0}, Landroidx/constraintlayout/a/d;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    .line 153
    iput p3, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    .line 154
    iput p3, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    const/4 v0, 0x4

    new-array v1, v0, [Landroidx/constraintlayout/a/a/c;

    .line 156
    iput-object v1, p0, Landroidx/constraintlayout/a/a/f;->aQ:[Landroidx/constraintlayout/a/a/c;

    new-array v0, v0, [Landroidx/constraintlayout/a/a/c;

    .line 157
    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->aR:[Landroidx/constraintlayout/a/a/c;

    .line 159
    iput-boolean p3, p0, Landroidx/constraintlayout/a/a/f;->aS:Z

    .line 160
    iput-boolean p3, p0, Landroidx/constraintlayout/a/a/f;->aT:Z

    .line 161
    iput-boolean p3, p0, Landroidx/constraintlayout/a/a/f;->aU:Z

    .line 162
    iput p3, p0, Landroidx/constraintlayout/a/a/f;->aV:I

    .line 163
    iput p3, p0, Landroidx/constraintlayout/a/a/f;->aW:I

    const/16 v0, 0x101

    .line 165
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->aX:I

    .line 166
    iput-boolean p3, p0, Landroidx/constraintlayout/a/a/f;->aY:Z

    .line 168
    iput-boolean p3, p0, Landroidx/constraintlayout/a/a/f;->aZ:Z

    .line 169
    iput-boolean p3, p0, Landroidx/constraintlayout/a/a/f;->ba:Z

    .line 272
    iput p3, p0, Landroidx/constraintlayout/a/a/f;->bb:I

    .line 274
    iput-object p2, p0, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;

    .line 275
    iput-object p2, p0, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object p2, p0, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object p2, p0, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    .line 480
    new-instance p2, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {p2}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/a/a/f;->bc:Landroidx/constraintlayout/a/a/a/b$a;

    .line 18730
    iput-object p1, p0, Landroidx/constraintlayout/a/a/e;->al:Ljava/lang/String;

    return-void
.end method

.method private A()V
    .locals 1

    const/4 v0, 0x0

    .line 993
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    .line 994
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    return-void
.end method

.method private a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/h;)V
    .locals 3

    .line 308
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object p1

    .line 310
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    return-void
.end method

.method private a(Landroidx/constraintlayout/a/d;[Z)V
    .locals 2

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 423
    aput-boolean v0, p2, p1

    const/16 p1, 0x40

    .line 424
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/f;->p(I)Z

    move-result p1

    .line 425
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/f;->b(Z)V

    .line 426
    iget-object p2, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_0
    if-ge v0, p2, :cond_0

    .line 428
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/e;

    .line 429
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/a/a/e;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 20966
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v1, v1, v0

    .line 490
    iput-object v1, p2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    .line 20975
    iget-object v1, p0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 491
    iput-object v1, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    .line 492
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v1

    iput v1, p2, Landroidx/constraintlayout/a/a/a/b$a;->f:I

    .line 493
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v1

    iput v1, p2, Landroidx/constraintlayout/a/a/a/b$a;->g:I

    .line 494
    iput-boolean v0, p2, Landroidx/constraintlayout/a/a/a/b$a;->l:Z

    .line 495
    iput p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    .line 497
    iget-object p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne p3, v1, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 498
    :goto_0
    iget-object v1, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    sget-object v3, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_3

    .line 500
    iget v4, p0, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 501
    iget v5, p0, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v3, v5, v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz p3, :cond_6

    .line 503
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/e;->c(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 507
    sget-object p3, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    iput-object p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    if-eqz v1, :cond_5

    .line 508
    iget p3, p0, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez p3, :cond_5

    .line 510
    sget-object p3, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    :cond_5
    const/4 p3, 0x0

    :cond_6
    if-eqz v1, :cond_8

    .line 514
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/a/a/e;->c(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, p0, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez v5, :cond_8

    if-nez v3, :cond_8

    .line 518
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    iput-object v1, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    if-eqz p3, :cond_7

    .line 519
    iget v1, p0, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v1, :cond_7

    .line 521
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object v1, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    :cond_7
    const/4 v1, 0x0

    .line 525
    :cond_8
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->b()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 527
    sget-object p3, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    const/4 p3, 0x0

    .line 529
    :cond_9
    invoke-virtual {p0}, Landroidx/constraintlayout/a/a/e;->c()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 531
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object v1, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    const/4 v1, 0x0

    :cond_a
    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eqz v4, :cond_f

    .line 535
    iget-object v4, p0, Landroidx/constraintlayout/a/a/e;->q:[I

    aget v0, v4, v0

    if-ne v0, v6, :cond_b

    .line 536
    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object v0, p2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    goto :goto_6

    :cond_b
    if-nez v1, :cond_f

    .line 540
    iget-object v0, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v1, :cond_c

    .line 541
    iget v0, p2, Landroidx/constraintlayout/a/a/a/b$a;->g:I

    goto :goto_4

    .line 543
    :cond_c
    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    iput-object v0, p2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    .line 544
    invoke-interface {p1, p0, p2}, Landroidx/constraintlayout/a/a/a/b$b;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$a;)V

    .line 545
    iget v0, p2, Landroidx/constraintlayout/a/a/a/b$a;->i:I

    .line 547
    :goto_4
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object v1, p2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    .line 548
    iget v1, p0, Landroidx/constraintlayout/a/a/e;->W:I

    if-eqz v1, :cond_e

    iget v1, p0, Landroidx/constraintlayout/a/a/e;->W:I

    if-ne v1, v5, :cond_d

    goto :goto_5

    .line 22302
    :cond_d
    iget v1, p0, Landroidx/constraintlayout/a/a/e;->V:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 551
    iput v0, p2, Landroidx/constraintlayout/a/a/a/b$a;->f:I

    goto :goto_6

    .line 21302
    :cond_e
    :goto_5
    iget v1, p0, Landroidx/constraintlayout/a/a/e;->V:F

    int-to-float v0, v0

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 549
    iput v0, p2, Landroidx/constraintlayout/a/a/a/b$a;->f:I

    :cond_f
    :goto_6
    if-eqz v3, :cond_14

    .line 559
    iget-object v0, p0, Landroidx/constraintlayout/a/a/e;->q:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_10

    .line 560
    sget-object p3, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    goto :goto_9

    :cond_10
    if-nez p3, :cond_14

    .line 564
    iget-object p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-ne p3, v0, :cond_11

    .line 565
    iget p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->f:I

    goto :goto_7

    .line 567
    :cond_11
    sget-object p3, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    iput-object p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    .line 568
    invoke-interface {p1, p0, p2}, Landroidx/constraintlayout/a/a/a/b$b;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$a;)V

    .line 569
    iget p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->h:I

    .line 571
    :goto_7
    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object v0, p2, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    .line 572
    iget v0, p0, Landroidx/constraintlayout/a/a/e;->W:I

    if-eqz v0, :cond_13

    iget v0, p0, Landroidx/constraintlayout/a/a/e;->W:I

    if-ne v0, v5, :cond_12

    goto :goto_8

    :cond_12
    int-to-float p3, p3

    .line 24302
    iget v0, p0, Landroidx/constraintlayout/a/a/e;->V:F

    mul-float p3, p3, v0

    float-to-int p3, p3

    .line 575
    iput p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->g:I

    goto :goto_9

    :cond_13
    :goto_8
    int-to-float p3, p3

    .line 23302
    iget v0, p0, Landroidx/constraintlayout/a/a/e;->V:F

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 573
    iput p3, p2, Landroidx/constraintlayout/a/a/a/b$a;->g:I

    .line 583
    :cond_14
    :goto_9
    invoke-interface {p1, p0, p2}, Landroidx/constraintlayout/a/a/a/b$b;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$a;)V

    .line 584
    iget p1, p2, Landroidx/constraintlayout/a/a/a/b$a;->h:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/e;->g(I)V

    .line 585
    iget p1, p2, Landroidx/constraintlayout/a/a/a/b$a;->i:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/e;->h(I)V

    .line 586
    iget-boolean p1, p2, Landroidx/constraintlayout/a/a/a/b$a;->k:Z

    .line 25288
    iput-boolean p1, p0, Landroidx/constraintlayout/a/a/e;->C:Z

    .line 587
    iget p1, p2, Landroidx/constraintlayout/a/a/a/b$a;->j:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/e;->k(I)V

    .line 588
    sget p0, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    iput p0, p2, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    .line 594
    iget-boolean p0, p2, Landroidx/constraintlayout/a/a/a/b$a;->l:Z

    return p0
.end method

.method private a(ZI)Z
    .locals 10

    .line 95
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    const/4 v1, 0x1

    and-int/2addr p1, v1

    .line 3269
    iget-object v2, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/a/a/f;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v2

    .line 3270
    iget-object v4, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/a/a/f;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v4

    .line 3272
    iget-object v5, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v5

    .line 3273
    iget-object v6, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v6

    if-eqz p1, :cond_4

    .line 3276
    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v2, v7, :cond_0

    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, v7, :cond_4

    .line 3277
    :cond_0
    iget-object v7, v0, Landroidx/constraintlayout/a/a/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/a/a/a/p;

    .line 3278
    iget v9, v8, Landroidx/constraintlayout/a/a/a/p;->h:I

    if-ne v9, p2, :cond_1

    .line 3279
    invoke-virtual {v8}, Landroidx/constraintlayout/a/a/a/p;->a()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 p1, 0x0

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 3286
    sget-object p1, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, p1, :cond_4

    .line 3287
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 4000
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v7, p1, v3

    .line 3288
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v7, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0, v7, v3}, Landroidx/constraintlayout/a/a/a/e;->a(Landroidx/constraintlayout/a/a/f;I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/a/a/f;->g(I)V

    .line 3289
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object p1, p1, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v7, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v7

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 3292
    sget-object p1, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, p1, :cond_4

    .line 3293
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    sget-object v7, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 4009
    iget-object p1, p1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v7, p1, v1

    .line 3294
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v7, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v0, v7, v1}, Landroidx/constraintlayout/a/a/a/e;->a(Landroidx/constraintlayout/a/a/f;I)I

    move-result v7

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/a/a/f;->h(I)V

    .line 3295
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object p1, p1, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v7, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v7

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    :cond_4
    :goto_0
    if-nez p2, :cond_6

    .line 3306
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object p1, p1, v3

    sget-object v6, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-eq p1, v6, :cond_5

    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object p1, p1, v3

    sget-object v6, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne p1, v6, :cond_7

    .line 3308
    :cond_5
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result p1

    add-int/2addr p1, v5

    .line 3309
    iget-object v6, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v6, v6, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v6, v6, Landroidx/constraintlayout/a/a/a/l;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 3310
    iget-object v6, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v6, v6, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v6, v6, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    sub-int/2addr p1, v5

    invoke-virtual {v6, p1}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    goto :goto_2

    .line 3314
    :cond_6
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object p1, p1, v1

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-eq p1, v5, :cond_8

    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object p1, p1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object p1, p1, v1

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne p1, v5, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    goto :goto_3

    .line 3316
    :cond_8
    :goto_1
    iget-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result p1

    add-int/2addr p1, v6

    .line 3317
    iget-object v5, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 3318
    iget-object v5, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    sub-int/2addr p1, v6

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    :goto_2
    const/4 p1, 0x1

    .line 3322
    :goto_3
    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/a/e;->a()V

    .line 3325
    iget-object v5, v0, Landroidx/constraintlayout/a/a/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/a/a/a/p;

    .line 3326
    iget v7, v6, Landroidx/constraintlayout/a/a/a/p;->h:I

    if-ne v7, p2, :cond_9

    .line 3329
    iget-object v7, v6, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    if-ne v7, v8, :cond_a

    iget-boolean v7, v6, Landroidx/constraintlayout/a/a/a/p;->i:Z

    if-eqz v7, :cond_9

    .line 3332
    :cond_a
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/a/p;->e()V

    goto :goto_4

    .line 3336
    :cond_b
    iget-object v5, v0, Landroidx/constraintlayout/a/a/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/a/a/a/p;

    .line 3337
    iget v7, v6, Landroidx/constraintlayout/a/a/a/p;->h:I

    if-ne v7, p2, :cond_c

    if-nez p1, :cond_d

    .line 3340
    iget-object v7, v6, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v8, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    if-eq v7, v8, :cond_c

    .line 3343
    :cond_d
    iget-object v7, v6, Landroidx/constraintlayout/a/a/a/p;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-boolean v7, v7, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-nez v7, :cond_e

    :goto_5
    const/4 p1, 0x0

    goto :goto_6

    .line 3347
    :cond_e
    iget-object v7, v6, Landroidx/constraintlayout/a/a/a/p;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-boolean v7, v7, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-nez v7, :cond_f

    goto :goto_5

    .line 3351
    :cond_f
    instance-of v7, v6, Landroidx/constraintlayout/a/a/a/c;

    if-nez v7, :cond_c

    iget-object v6, v6, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v6, v6, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v6, :cond_c

    goto :goto_5

    :cond_10
    const/4 p1, 0x1

    .line 3357
    :goto_6
    iget-object p2, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    .line 5000
    iget-object p2, p2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v2, p2, v3

    .line 3358
    iget-object p2, v0, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    .line 5009
    iget-object p2, p2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v4, p2, v1

    return p1
.end method

.method private b(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/h;)V
    .locals 3

    .line 314
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object p1

    .line 316
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, p2, p1, v1, v2}, Landroidx/constraintlayout/a/d;->a(Landroidx/constraintlayout/a/h;Landroidx/constraintlayout/a/h;II)V

    return-void
.end method

.method private b(Landroidx/constraintlayout/a/d;)Z
    .locals 12

    const/16 v0, 0x40

    .line 332
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/f;->p(I)Z

    move-result v0

    .line 333
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/d;Z)V

    .line 334
    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    .line 338
    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/a/a/e;

    .line 339
    invoke-virtual {v6, v2, v2}, Landroidx/constraintlayout/a/a/e;->a(IZ)V

    .line 340
    invoke-virtual {v6, v5, v2}, Landroidx/constraintlayout/a/a/e;->a(IZ)V

    .line 341
    instance-of v6, v6, Landroidx/constraintlayout/a/a/a;

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 348
    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/e;

    .line 349
    instance-of v6, v4, Landroidx/constraintlayout/a/a/a;

    if-eqz v6, :cond_2

    .line 350
    check-cast v4, Landroidx/constraintlayout/a/a/a;

    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/a;->d()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    .line 356
    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/e;

    .line 357
    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e;->y()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 358
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/d;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 362
    :cond_5
    sget-boolean v3, Landroidx/constraintlayout/a/d;->a:Z

    if-eqz v3, :cond_9

    .line 363
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    .line 365
    iget-object v6, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/a/a/e;

    .line 366
    invoke-virtual {v6}, Landroidx/constraintlayout/a/a/e;->y()Z

    move-result v7

    if-nez v7, :cond_6

    .line 367
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 18966
    :cond_7
    iget-object v1, p0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v1, v1, v2

    .line 371
    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v1, v4, :cond_8

    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    .line 374
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/d;Ljava/util/HashSet;IZ)V

    .line 375
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    .line 376
    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/a/e;)V

    .line 377
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/d;Z)V

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_f

    .line 382
    iget-object v4, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/e;

    .line 383
    instance-of v6, v4, Landroidx/constraintlayout/a/a/f;

    if-eqz v6, :cond_d

    .line 384
    iget-object v6, v4, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v6, v6, v2

    .line 385
    iget-object v7, v4, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v7, v7, v5

    .line 386
    sget-object v8, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v6, v8, :cond_a

    .line 387
    sget-object v8, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 19000
    iget-object v9, v4, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v8, v9, v2

    .line 389
    :cond_a
    sget-object v8, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v7, v8, :cond_b

    .line 390
    sget-object v8, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 19009
    iget-object v9, v4, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v8, v9, v5

    .line 392
    :cond_b
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/d;Z)V

    .line 393
    sget-object v8, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v6, v8, :cond_c

    .line 20000
    iget-object v8, v4, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v6, v8, v2

    .line 396
    :cond_c
    sget-object v6, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v7, v6, :cond_e

    .line 20009
    iget-object v4, v4, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v7, v4, v5

    goto :goto_7

    .line 400
    :cond_d
    invoke-static {p0, p1, v4}, Landroidx/constraintlayout/a/a/k;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/d;Landroidx/constraintlayout/a/a/e;)V

    .line 401
    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/e;->y()Z

    move-result v6

    if-nez v6, :cond_e

    .line 402
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/d;Z)V

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 408
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    const/4 v1, 0x0

    if-lez v0, :cond_10

    .line 409
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/a/a/b;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/d;Ljava/util/ArrayList;I)V

    .line 411
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    if-lez v0, :cond_11

    .line 412
    invoke-static {p0, p1, v1, v5}, Landroidx/constraintlayout/a/a/b;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/d;Ljava/util/ArrayList;I)V

    :cond_11
    return v5
.end method

.method private c(Landroidx/constraintlayout/a/a/e;)V
    .locals 5

    .line 1019
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->aR:[Landroidx/constraintlayout/a/a/c;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1020
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 1021
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/a/c;

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->aR:[Landroidx/constraintlayout/a/a/c;

    .line 1023
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->aR:[Landroidx/constraintlayout/a/a/c;

    iget v1, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    new-instance v2, Landroidx/constraintlayout/a/a/c;

    const/4 v3, 0x0

    .line 50064
    iget-boolean v4, p0, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 1023
    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/a/a/c;-><init>(Landroidx/constraintlayout/a/a/e;IZ)V

    aput-object v2, v0, v1

    .line 1024
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/a/a/f;->aO:I

    return-void
.end method

.method private d(Landroidx/constraintlayout/a/a/e;)V
    .locals 5

    .line 1034
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->aQ:[Landroidx/constraintlayout/a/a/c;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 1035
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    .line 1036
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/a/a/c;

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->aQ:[Landroidx/constraintlayout/a/a/c;

    .line 1038
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->aQ:[Landroidx/constraintlayout/a/a/c;

    iget v2, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    new-instance v3, Landroidx/constraintlayout/a/a/c;

    .line 50065
    iget-boolean v4, p0, Landroidx/constraintlayout/a/a/f;->d:Z

    .line 1038
    invoke-direct {v3, p1, v1, v4}, Landroidx/constraintlayout/a/a/c;-><init>(Landroidx/constraintlayout/a/a/e;IZ)V

    aput-object v3, v0, v2

    .line 1039
    iget p1, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/constraintlayout/a/a/f;->aP:I

    return-void
.end method


# virtual methods
.method public final a(IIIIIII)J
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    .line 117
    iput v4, v0, Landroidx/constraintlayout/a/a/f;->aK:I

    move/from16 v4, p7

    .line 118
    iput v4, v0, Landroidx/constraintlayout/a/a/f;->aL:I

    .line 119
    iget-object v4, v0, Landroidx/constraintlayout/a/a/f;->a:Landroidx/constraintlayout/a/a/a/b;

    .line 6135
    iget-object v5, v0, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    .line 5188
    iget-object v6, v0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5189
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v7

    .line 5190
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v8

    const/16 v9, 0x80

    .line 5192
    invoke-static {v1, v9}, Landroidx/constraintlayout/a/a/k;->a(II)Z

    move-result v9

    const/16 v10, 0x40

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v9, :cond_1

    .line 5193
    invoke-static {v1, v10}, Landroidx/constraintlayout/a/a/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v13, 0x0

    if-eqz v1, :cond_a

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v6, :cond_a

    .line 5197
    iget-object v15, v0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/a/a/e;

    .line 6966
    iget-object v10, v15, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v10, v10, v12

    .line 5198
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v10, v12, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    .line 6975
    :goto_3
    iget-object v12, v15, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v12, v12, v11

    .line 5199
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v12, v11, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    if-eqz v10, :cond_4

    if-eqz v11, :cond_4

    .line 7302
    iget v10, v15, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v10, v10, v13

    if-lez v10, :cond_4

    const/4 v10, 0x1

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    .line 5201
    :goto_5
    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    :cond_5
    :goto_6
    const/4 v1, 0x0

    goto :goto_7

    .line 5205
    :cond_6
    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v10, :cond_7

    goto :goto_6

    .line 5209
    :cond_7
    instance-of v10, v15, Landroidx/constraintlayout/a/a/l;

    if-eqz v10, :cond_8

    goto :goto_6

    .line 5213
    :cond_8
    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v10

    if-nez v10, :cond_5

    .line 5214
    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/e;->x()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/16 v10, 0x40

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_2

    :cond_a
    :goto_7
    const-wide/16 v10, 0x1

    if-eqz v1, :cond_b

    .line 5221
    sget-object v12, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    if-eqz v12, :cond_b

    .line 5222
    sget-object v12, Landroidx/constraintlayout/a/d;->o:Landroidx/constraintlayout/a/e;

    iget-wide v14, v12, Landroidx/constraintlayout/a/e;->c:J

    add-long/2addr v14, v10

    iput-wide v14, v12, Landroidx/constraintlayout/a/e;->c:J

    :cond_b
    const/high16 v12, 0x40000000    # 2.0f

    if-ne v2, v12, :cond_c

    if-eq v3, v12, :cond_d

    :cond_c
    if-eqz v9, :cond_e

    :cond_d
    const/4 v14, 0x1

    goto :goto_8

    :cond_e
    const/4 v14, 0x0

    :goto_8
    and-int/2addr v1, v14

    if-eqz v1, :cond_2e

    .line 8260
    iget-object v15, v0, Landroidx/constraintlayout/a/a/e;->B:[I

    const/16 v17, 0x0

    aget v15, v15, v17

    move/from16 v10, p3

    .line 5235
    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 9256
    iget-object v11, v0, Landroidx/constraintlayout/a/a/e;->B:[I

    const/4 v15, 0x1

    aget v11, v11, v15

    move/from16 v15, p5

    .line 5236
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ne v2, v12, :cond_f

    .line 5238
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v15

    if-eq v15, v10, :cond_f

    .line 5239
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/a/a/f;->g(I)V

    .line 5240
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->d()V

    :cond_f
    if-ne v3, v12, :cond_10

    .line 5242
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v10

    if-eq v10, v11, :cond_10

    .line 5243
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/a/a/f;->h(I)V

    .line 5244
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->d()V

    :cond_10
    if-ne v2, v12, :cond_27

    if-ne v3, v12, :cond_27

    .line 10072
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    const/4 v11, 0x1

    and-int/2addr v9, v11

    .line 10111
    iget-boolean v11, v10, Landroidx/constraintlayout/a/a/a/e;->b:Z

    if-nez v11, :cond_12

    iget-boolean v11, v10, Landroidx/constraintlayout/a/a/a/e;->c:Z

    if-eqz v11, :cond_11

    goto :goto_9

    :cond_11
    const/4 v13, 0x0

    goto :goto_b

    .line 10112
    :cond_12
    :goto_9
    iget-object v11, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/a/a/e;

    .line 10113
    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/e;->l()V

    const/4 v13, 0x0

    .line 10114
    iput-boolean v13, v15, Landroidx/constraintlayout/a/a/e;->e:Z

    .line 10115
    iget-object v14, v15, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/a/l;->g()V

    .line 10116
    iget-object v14, v15, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/a/n;->g()V

    const/4 v13, 0x0

    goto :goto_a

    :cond_13
    const/4 v13, 0x0

    .line 10118
    iget-object v11, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/f;->l()V

    .line 10119
    iget-object v11, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iput-boolean v13, v11, Landroidx/constraintlayout/a/a/f;->e:Z

    .line 10120
    iget-object v11, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/a/l;->g()V

    .line 10121
    iget-object v11, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/a/n;->g()V

    .line 10122
    iput-boolean v13, v10, Landroidx/constraintlayout/a/a/a/e;->c:Z

    .line 10125
    :goto_b
    iget-object v11, v10, Landroidx/constraintlayout/a/a/a/e;->d:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v10, v11}, Landroidx/constraintlayout/a/a/a/e;->a(Landroidx/constraintlayout/a/a/f;)Z

    .line 10130
    iget-object v11, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v11, v13}, Landroidx/constraintlayout/a/a/f;->e(I)V

    .line 10131
    iget-object v11, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v11, v13}, Landroidx/constraintlayout/a/a/f;->f(I)V

    .line 10133
    iget-object v11, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v11, v13}, Landroidx/constraintlayout/a/a/f;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v11

    .line 10134
    iget-object v13, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroidx/constraintlayout/a/a/f;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v13

    .line 10136
    iget-boolean v14, v10, Landroidx/constraintlayout/a/a/a/e;->b:Z

    if-eqz v14, :cond_14

    .line 10137
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/a/e;->b()V

    .line 10140
    :cond_14
    iget-object v14, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v14}, Landroidx/constraintlayout/a/a/f;->m()I

    move-result v14

    .line 10141
    iget-object v15, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v15}, Landroidx/constraintlayout/a/a/f;->n()I

    move-result v15

    .line 10143
    iget-object v12, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v12, v12, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v12, v12, Landroidx/constraintlayout/a/a/a/l;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v12, v14}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 10144
    iget-object v12, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v12, v12, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v12, v12, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v12, v15}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 10148
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/a/e;->a()V

    .line 10151
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v11, v12, :cond_16

    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v13, v12, :cond_15

    goto :goto_c

    :cond_15
    move/from16 v22, v1

    move-object/from16 v21, v5

    goto/16 :goto_e

    :cond_16
    :goto_c
    if-eqz v9, :cond_18

    .line 10153
    iget-object v12, v10, Landroidx/constraintlayout/a/a/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroidx/constraintlayout/a/a/a/p;

    .line 10154
    invoke-virtual/range {v21 .. v21}, Landroidx/constraintlayout/a/a/a/p;->a()Z

    move-result v21

    if-nez v21, :cond_17

    const/4 v9, 0x0

    :cond_18
    if-eqz v9, :cond_19

    .line 10161
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v11, v12, :cond_19

    .line 10162
    iget-object v12, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    sget-object v21, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 11000
    iget-object v12, v12, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    move/from16 v22, v1

    const/4 v1, 0x0

    aput-object v21, v12, v1

    .line 10163
    iget-object v12, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    move-object/from16 v21, v5

    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v10, v5, v1}, Landroidx/constraintlayout/a/a/a/e;->a(Landroidx/constraintlayout/a/a/f;I)I

    move-result v5

    invoke-virtual {v12, v5}, Landroidx/constraintlayout/a/a/f;->g(I)V

    .line 10164
    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    goto :goto_d

    :cond_19
    move/from16 v22, v1

    move-object/from16 v21, v5

    :goto_d
    if-eqz v9, :cond_1a

    .line 10166
    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v13, v1, :cond_1a

    .line 10167
    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 11009
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v9, 0x1

    aput-object v5, v1, v9

    .line 10168
    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v10, v5, v9}, Landroidx/constraintlayout/a/a/a/e;->a(Landroidx/constraintlayout/a/a/f;I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/f;->h(I)V

    .line 10169
    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    .line 10178
    :cond_1a
    :goto_e
    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-eq v1, v9, :cond_1c

    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v1, v1, v5

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v1, v5, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v1, 0x0

    goto :goto_10

    .line 10182
    :cond_1c
    :goto_f
    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v1

    add-int/2addr v1, v14

    .line 10183
    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/a/l;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 10184
    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    sub-int/2addr v1, v14

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    .line 10185
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/a/e;->a()V

    .line 10186
    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v5, 0x1

    aget-object v1, v1, v5

    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    if-eq v1, v9, :cond_1d

    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v1, v1, v5

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_PARENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v1, v5, :cond_1e

    .line 10188
    :cond_1d
    iget-object v1, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v1

    add-int/2addr v1, v15

    .line 10189
    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/a/n;->k:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 10190
    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    sub-int/2addr v1, v15

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/a/a/a/g;->a(I)V

    .line 10192
    :cond_1e
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/a/e;->a()V

    const/4 v1, 0x1

    .line 10199
    :goto_10
    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/a/a/a/p;

    .line 10200
    iget-object v12, v9, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v14, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    if-ne v12, v14, :cond_20

    iget-boolean v12, v9, Landroidx/constraintlayout/a/a/a/p;->i:Z

    if-eqz v12, :cond_1f

    .line 10203
    :cond_20
    invoke-virtual {v9}, Landroidx/constraintlayout/a/a/a/p;->e()V

    goto :goto_11

    .line 10207
    :cond_21
    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/a/a/a/p;

    if-nez v1, :cond_23

    .line 10208
    iget-object v12, v9, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    iget-object v14, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    if-eq v12, v14, :cond_22

    .line 10211
    :cond_23
    iget-object v12, v9, Landroidx/constraintlayout/a/a/a/p;->j:Landroidx/constraintlayout/a/a/a/f;

    iget-boolean v12, v12, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-nez v12, :cond_24

    :goto_12
    const/4 v1, 0x0

    goto :goto_13

    .line 10215
    :cond_24
    iget-object v12, v9, Landroidx/constraintlayout/a/a/a/p;->k:Landroidx/constraintlayout/a/a/a/f;

    iget-boolean v12, v12, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-nez v12, :cond_25

    instance-of v12, v9, Landroidx/constraintlayout/a/a/a/j;

    if-nez v12, :cond_25

    goto :goto_12

    .line 10219
    :cond_25
    iget-object v12, v9, Landroidx/constraintlayout/a/a/a/p;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v12, v12, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v12, :cond_22

    instance-of v12, v9, Landroidx/constraintlayout/a/a/a/c;

    if-nez v12, :cond_22

    instance-of v9, v9, Landroidx/constraintlayout/a/a/a/j;

    if-nez v9, :cond_22

    goto :goto_12

    :cond_26
    const/4 v1, 0x1

    .line 10225
    :goto_13
    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    .line 12000
    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v9, 0x0

    aput-object v11, v5, v9

    .line 10226
    iget-object v5, v10, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    .line 12009
    iget-object v5, v5, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v9, 0x1

    aput-object v13, v5, v9

    move v9, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v5, 0x2

    goto/16 :goto_17

    :cond_27
    move/from16 v22, v1

    move-object/from16 v21, v5

    .line 12091
    iget-object v1, v0, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    .line 12232
    iget-boolean v5, v1, Landroidx/constraintlayout/a/a/a/e;->b:Z

    if-eqz v5, :cond_29

    .line 12233
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/a/a/e;

    .line 12234
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/e;->l()V

    const/4 v11, 0x0

    .line 12235
    iput-boolean v11, v10, Landroidx/constraintlayout/a/a/e;->e:Z

    .line 12236
    iget-object v12, v10, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v12, v12, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-boolean v11, v12, Landroidx/constraintlayout/a/a/a/g;->j:Z

    .line 12237
    iget-object v12, v10, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iput-boolean v11, v12, Landroidx/constraintlayout/a/a/a/l;->i:Z

    .line 12238
    iget-object v12, v10, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    invoke-virtual {v12}, Landroidx/constraintlayout/a/a/a/l;->g()V

    .line 12239
    iget-object v12, v10, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v12, v12, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-boolean v11, v12, Landroidx/constraintlayout/a/a/a/g;->j:Z

    .line 12240
    iget-object v12, v10, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iput-boolean v11, v12, Landroidx/constraintlayout/a/a/a/n;->i:Z

    .line 12241
    iget-object v10, v10, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/a/n;->g()V

    goto :goto_14

    :cond_28
    const/4 v11, 0x0

    .line 12243
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/f;->l()V

    .line 12244
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iput-boolean v11, v5, Landroidx/constraintlayout/a/a/f;->e:Z

    .line 12245
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-boolean v11, v5, Landroidx/constraintlayout/a/a/a/g;->j:Z

    .line 12246
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iput-boolean v11, v5, Landroidx/constraintlayout/a/a/a/l;->i:Z

    .line 12247
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/a/l;->g()V

    .line 12248
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iput-boolean v11, v5, Landroidx/constraintlayout/a/a/a/g;->j:Z

    .line 12249
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iput-boolean v11, v5, Landroidx/constraintlayout/a/a/a/n;->i:Z

    .line 12250
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    invoke-virtual {v5}, Landroidx/constraintlayout/a/a/a/n;->g()V

    .line 12251
    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/a/e;->b()V

    goto :goto_15

    :cond_29
    const/4 v11, 0x0

    .line 12254
    :goto_15
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->d:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/a/e;->a(Landroidx/constraintlayout/a/a/f;)Z

    .line 12259
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/a/a/f;->e(I)V

    .line 12260
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/a/a/f;->f(I)V

    .line 12261
    iget-object v5, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/f;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v5, v5, Landroidx/constraintlayout/a/a/a/l;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 12262
    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/e;->a:Landroidx/constraintlayout/a/a/f;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/f;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/n;->j:Landroidx/constraintlayout/a/a/a/f;

    invoke-virtual {v1, v11}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_2a

    .line 5252
    invoke-direct {v0, v9, v11}, Landroidx/constraintlayout/a/a/f;->a(ZI)Z

    move-result v5

    const/4 v10, 0x1

    and-int/lit8 v16, v5, 0x1

    move/from16 v11, v16

    const/4 v5, 0x1

    goto :goto_16

    :cond_2a
    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x1

    :goto_16
    if-ne v3, v1, :cond_2b

    .line 5256
    invoke-direct {v0, v9, v10}, Landroidx/constraintlayout/a/a/f;->a(ZI)Z

    move-result v9

    and-int/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_2b
    move v9, v11

    :goto_17
    if-eqz v9, :cond_2f

    if-ne v2, v1, :cond_2c

    const/4 v2, 0x1

    goto :goto_18

    :cond_2c
    const/4 v2, 0x0

    :goto_18
    if-ne v3, v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_19

    :cond_2d
    const/4 v1, 0x0

    .line 5261
    :goto_19
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/a/a/f;->a(ZZ)V

    goto :goto_1a

    :cond_2e
    move/from16 v22, v1

    move-object/from16 v21, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    :cond_2f
    :goto_1a
    if-eqz v9, :cond_30

    const/4 v1, 0x2

    if-eq v5, v1, :cond_57

    .line 13224
    :cond_30
    iget v1, v0, Landroidx/constraintlayout/a/a/f;->aX:I

    if-lez v6, :cond_3b

    .line 14075
    iget-object v2, v0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x40

    .line 14076
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/a/a/f;->p(I)Z

    move-result v3

    .line 15135
    iget-object v5, v0, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v2, :cond_3a

    .line 14079
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/a/a/e;

    .line 14080
    instance-of v11, v10, Landroidx/constraintlayout/a/a/h;

    if-nez v11, :cond_38

    .line 14083
    instance-of v11, v10, Landroidx/constraintlayout/a/a/a;

    if-nez v11, :cond_38

    .line 15248
    iget-boolean v11, v10, Landroidx/constraintlayout/a/a/e;->E:Z

    if-nez v11, :cond_38

    if-eqz v3, :cond_31

    .line 14090
    iget-object v11, v10, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    if-eqz v11, :cond_31

    iget-object v11, v10, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    if-eqz v11, :cond_31

    iget-object v11, v10, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v11, v11, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-eqz v11, :cond_31

    iget-object v11, v10, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v11, v11, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v11, v11, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v11, :cond_38

    :cond_31
    const/4 v11, 0x0

    .line 14096
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/a/a/e;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v12

    const/4 v11, 0x1

    .line 14097
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/a/a/e;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v13

    .line 14099
    sget-object v14, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v12, v14, :cond_32

    iget v14, v10, Landroidx/constraintlayout/a/a/e;->o:I

    if-eq v14, v11, :cond_32

    sget-object v14, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v13, v14, :cond_32

    iget v14, v10, Landroidx/constraintlayout/a/a/e;->p:I

    if-eq v14, v11, :cond_32

    const/4 v14, 0x1

    goto :goto_1c

    :cond_32
    const/4 v14, 0x0

    :goto_1c
    if-nez v14, :cond_35

    .line 14104
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/a/a/f;->p(I)Z

    move-result v15

    if-eqz v15, :cond_35

    instance-of v11, v10, Landroidx/constraintlayout/a/a/l;

    if-nez v11, :cond_35

    .line 14106
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v12, v11, :cond_33

    iget v11, v10, Landroidx/constraintlayout/a/a/e;->o:I

    if-nez v11, :cond_33

    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v13, v11, :cond_33

    .line 14109
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v11

    if-nez v11, :cond_33

    const/4 v14, 0x1

    .line 14113
    :cond_33
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v13, v11, :cond_34

    iget v11, v10, Landroidx/constraintlayout/a/a/e;->p:I

    if-nez v11, :cond_34

    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v12, v11, :cond_34

    .line 14116
    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/e;->w()Z

    move-result v11

    if-nez v11, :cond_34

    const/4 v14, 0x1

    .line 14121
    :cond_34
    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v12, v11, :cond_36

    sget-object v11, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v13, v11, :cond_35

    goto :goto_1d

    :cond_35
    const/4 v12, 0x0

    goto :goto_1e

    :cond_36
    :goto_1d
    iget v11, v10, Landroidx/constraintlayout/a/a/e;->V:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_37

    const/4 v14, 0x1

    :cond_37
    :goto_1e
    if-nez v14, :cond_39

    .line 14134
    sget v11, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-virtual {v4, v5, v10, v11}, Landroidx/constraintlayout/a/a/a/b;->a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;I)Z

    .line 14135
    iget-object v10, v0, Landroidx/constraintlayout/a/a/f;->aI:Landroidx/constraintlayout/a/e;

    if-eqz v10, :cond_39

    .line 14136
    iget-wide v13, v10, Landroidx/constraintlayout/a/e;->a:J

    const-wide/16 v18, 0x1

    add-long v13, v13, v18

    iput-wide v13, v10, Landroidx/constraintlayout/a/e;->a:J

    goto :goto_1f

    :cond_38
    const/4 v12, 0x0

    :cond_39
    :goto_1f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1b

    .line 14139
    :cond_3a
    invoke-interface {v5}, Landroidx/constraintlayout/a/a/a/b$b;->a()V

    .line 5283
    :cond_3b
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/a/a/a/b;->a(Landroidx/constraintlayout/a/a/f;)V

    .line 5286
    iget-object v2, v4, Landroidx/constraintlayout/a/a/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v6, :cond_3c

    .line 5290
    invoke-virtual {v4, v0, v7, v8}, Landroidx/constraintlayout/a/a/a/b;->a(Landroidx/constraintlayout/a/a/f;II)V

    :cond_3c
    if-lez v2, :cond_56

    .line 15966
    iget-object v3, v0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    .line 5299
    sget-object v6, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v3, v6, :cond_3d

    const/4 v3, 0x1

    goto :goto_20

    :cond_3d
    const/4 v3, 0x0

    .line 15975
    :goto_20
    iget-object v6, v0, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v9, 0x1

    aget-object v6, v6, v9

    .line 5301
    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v6, v9, :cond_3e

    const/4 v6, 0x1

    goto :goto_21

    :cond_3e
    const/4 v6, 0x0

    .line 5303
    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v9

    iget-object v10, v4, Landroidx/constraintlayout/a/a/a/b;->b:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v10}, Landroidx/constraintlayout/a/a/f;->q()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 5304
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v10

    iget-object v11, v4, Landroidx/constraintlayout/a/a/a/b;->b:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/f;->r()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_22
    if-ge v11, v2, :cond_45

    .line 5310
    iget-object v13, v4, Landroidx/constraintlayout/a/a/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/a/a/e;

    .line 5311
    instance-of v14, v13, Landroidx/constraintlayout/a/a/l;

    if-eqz v14, :cond_44

    .line 5314
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v14

    .line 5315
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v15

    .line 5316
    sget v5, Landroidx/constraintlayout/a/a/a/b$a;->b:I

    move/from16 v20, v1

    move-object/from16 v1, v21

    invoke-virtual {v4, v1, v13, v5}, Landroidx/constraintlayout/a/a/a/b;->a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;I)Z

    move-result v5

    or-int/2addr v5, v12

    .line 5317
    iget-object v12, v0, Landroidx/constraintlayout/a/a/f;->aI:Landroidx/constraintlayout/a/e;

    move/from16 p6, v7

    move/from16 v21, v8

    if-eqz v12, :cond_3f

    .line 5318
    iget-wide v7, v12, Landroidx/constraintlayout/a/e;->b:J

    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    iput-wide v7, v12, Landroidx/constraintlayout/a/e;->b:J

    .line 5320
    :cond_3f
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v7

    .line 5321
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v8

    if-eq v7, v14, :cond_41

    .line 5323
    invoke-virtual {v13, v7}, Landroidx/constraintlayout/a/a/e;->g(I)V

    if-eqz v3, :cond_40

    .line 5324
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->s()I

    move-result v5

    if-le v5, v9, :cond_40

    .line 5325
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->s()I

    move-result v5

    sget-object v7, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    .line 5326
    invoke-virtual {v13, v7}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v7

    add-int/2addr v5, v7

    .line 5327
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v9, v5

    :cond_40
    const/4 v5, 0x1

    :cond_41
    if-eq v8, v15, :cond_43

    .line 5332
    invoke-virtual {v13, v8}, Landroidx/constraintlayout/a/a/e;->h(I)V

    if-eqz v6, :cond_42

    .line 5333
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->t()I

    move-result v5

    if-le v5, v10, :cond_42

    .line 5334
    invoke-virtual {v13}, Landroidx/constraintlayout/a/a/e;->t()I

    move-result v5

    sget-object v7, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    .line 5335
    invoke-virtual {v13, v7}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v7

    add-int/2addr v5, v7

    .line 5336
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v10, v5

    :cond_42
    const/4 v15, 0x1

    goto :goto_23

    :cond_43
    move v15, v5

    .line 5340
    :goto_23
    check-cast v13, Landroidx/constraintlayout/a/a/l;

    .line 16113
    iget-boolean v5, v13, Landroidx/constraintlayout/a/a/l;->bf:Z

    or-int/2addr v5, v15

    move v12, v5

    goto :goto_24

    :cond_44
    move/from16 v20, v1

    move/from16 p6, v7

    move-object/from16 v1, v21

    move/from16 v21, v8

    :goto_24
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, p6

    move/from16 v8, v21

    const/4 v5, 0x0

    move-object/from16 v21, v1

    move/from16 v1, v20

    goto/16 :goto_22

    :cond_45
    move/from16 v20, v1

    move/from16 p6, v7

    move-object/from16 v1, v21

    move/from16 v21, v8

    move/from16 v17, v12

    const/4 v5, 0x0

    const/4 v7, 0x2

    :goto_25
    if-ge v5, v7, :cond_52

    move/from16 v15, v17

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v2, :cond_50

    .line 5348
    iget-object v11, v4, Landroidx/constraintlayout/a/a/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/a/a/e;

    .line 5349
    instance-of v12, v11, Landroidx/constraintlayout/a/a/i;

    if-eqz v12, :cond_46

    instance-of v12, v11, Landroidx/constraintlayout/a/a/l;

    if-eqz v12, :cond_4e

    :cond_46
    instance-of v12, v11, Landroidx/constraintlayout/a/a/h;

    if-nez v12, :cond_4e

    .line 16714
    iget v12, v11, Landroidx/constraintlayout/a/a/e;->ak:I

    const/16 v13, 0x8

    if-eq v12, v13, :cond_4e

    if-eqz v22, :cond_47

    .line 5355
    iget-object v12, v11, Landroidx/constraintlayout/a/a/e;->i:Landroidx/constraintlayout/a/a/a/l;

    iget-object v12, v12, Landroidx/constraintlayout/a/a/a/l;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v12, v12, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-eqz v12, :cond_47

    iget-object v12, v11, Landroidx/constraintlayout/a/a/e;->j:Landroidx/constraintlayout/a/a/a/n;

    iget-object v12, v12, Landroidx/constraintlayout/a/a/a/n;->g:Landroidx/constraintlayout/a/a/a/g;

    iget-boolean v12, v12, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-nez v12, :cond_4e

    .line 5359
    :cond_47
    instance-of v12, v11, Landroidx/constraintlayout/a/a/l;

    if-nez v12, :cond_4e

    .line 5363
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v12

    .line 5364
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v13

    .line 17055
    iget v14, v11, Landroidx/constraintlayout/a/a/e;->ad:I

    .line 5367
    sget v17, Landroidx/constraintlayout/a/a/a/b$a;->b:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_48

    .line 5369
    sget v17, Landroidx/constraintlayout/a/a/a/b$a;->c:I

    :cond_48
    move/from16 v7, v17

    .line 5371
    invoke-virtual {v4, v1, v11, v7}, Landroidx/constraintlayout/a/a/a/b;->a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;I)Z

    move-result v7

    or-int/2addr v15, v7

    .line 5379
    iget-object v7, v0, Landroidx/constraintlayout/a/a/f;->aI:Landroidx/constraintlayout/a/e;

    move-object/from16 p3, v1

    move/from16 p2, v2

    if-eqz v7, :cond_49

    .line 5380
    iget-wide v1, v7, Landroidx/constraintlayout/a/e;->b:J

    const-wide/16 v17, 0x1

    add-long v1, v1, v17

    iput-wide v1, v7, Landroidx/constraintlayout/a/e;->b:J

    goto :goto_27

    :cond_49
    const-wide/16 v17, 0x1

    .line 5383
    :goto_27
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v1

    .line 5384
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v2

    if-eq v1, v12, :cond_4b

    .line 5387
    invoke-virtual {v11, v1}, Landroidx/constraintlayout/a/a/e;->g(I)V

    if-eqz v3, :cond_4a

    .line 5388
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->s()I

    move-result v1

    if-le v1, v9, :cond_4a

    .line 5389
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->s()I

    move-result v1

    sget-object v7, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    .line 5390
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v7

    add-int/2addr v1, v7

    .line 5391
    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_4a
    const/4 v15, 0x1

    :cond_4b
    if-eq v2, v13, :cond_4d

    .line 5399
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/a/a/e;->h(I)V

    if-eqz v6, :cond_4c

    .line 5400
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->t()I

    move-result v1

    if-le v1, v10, :cond_4c

    .line 5401
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->t()I

    move-result v1

    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    .line 5402
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/d;->e()I

    move-result v2

    add-int/2addr v1, v2

    .line 5403
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v10, v1

    :cond_4c
    const/4 v15, 0x1

    .line 18046
    :cond_4d
    iget-boolean v1, v11, Landroidx/constraintlayout/a/a/e;->C:Z

    if-eqz v1, :cond_4f

    .line 18055
    iget v1, v11, Landroidx/constraintlayout/a/a/e;->ad:I

    if-eq v14, v1, :cond_4f

    const/4 v15, 0x1

    goto :goto_28

    :cond_4e
    move-object/from16 p3, v1

    move/from16 p2, v2

    const-wide/16 v17, 0x1

    :cond_4f
    :goto_28
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    move-object/from16 v1, p3

    const/4 v7, 0x2

    goto/16 :goto_26

    :cond_50
    move-object/from16 p3, v1

    move/from16 p2, v2

    const-wide/16 v17, 0x1

    move/from16 v1, p6

    move/from16 v2, v21

    if-eqz v15, :cond_51

    .line 5418
    invoke-virtual {v4, v0, v1, v2}, Landroidx/constraintlayout/a/a/a/b;->a(Landroidx/constraintlayout/a/a/f;II)V

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x2

    const/16 v17, 0x0

    move/from16 v2, p2

    move-object/from16 v1, p3

    goto/16 :goto_25

    :cond_51
    move/from16 v17, v15

    goto :goto_29

    :cond_52
    move/from16 v1, p6

    move/from16 v2, v21

    :goto_29
    if-eqz v17, :cond_55

    .line 5425
    invoke-virtual {v4, v0, v1, v2}, Landroidx/constraintlayout/a/a/a/b;->a(Landroidx/constraintlayout/a/a/f;II)V

    .line 5427
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v3

    if-ge v3, v9, :cond_53

    .line 5428
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/a/a/f;->g(I)V

    const/4 v12, 0x1

    goto :goto_2a

    :cond_53
    const/4 v12, 0x0

    .line 5431
    :goto_2a
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v3

    if-ge v3, v10, :cond_54

    .line 5432
    invoke-virtual {v0, v10}, Landroidx/constraintlayout/a/a/f;->h(I)V

    const/4 v11, 0x1

    goto :goto_2b

    :cond_54
    move v11, v12

    :goto_2b
    if-eqz v11, :cond_55

    .line 5436
    invoke-virtual {v4, v0, v1, v2}, Landroidx/constraintlayout/a/a/a/b;->a(Landroidx/constraintlayout/a/a/f;II)V

    :cond_55
    move/from16 v1, v20

    .line 5440
    :cond_56
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/a/a/f;->o(I)V

    :cond_57
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public final a(Landroidx/constraintlayout/a/a/a/b$b;)V
    .locals 1

    .line 130
    iput-object p1, p0, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    .line 131
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    .line 18060
    iput-object p1, v0, Landroidx/constraintlayout/a/a/a/e;->f:Landroidx/constraintlayout/a/a/a/b$b;

    return-void
.end method

.method final a(Landroidx/constraintlayout/a/a/d;)V
    .locals 2

    .line 280
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method final a(Landroidx/constraintlayout/a/a/e;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1006
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/a/f;->c(Landroidx/constraintlayout/a/a/e;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1008
    invoke-direct {p0, p1}, Landroidx/constraintlayout/a/a/f;->d(Landroidx/constraintlayout/a/a/e;)V

    :cond_1
    return-void
.end method

.method public final a(ZZ)V
    .locals 3

    .line 435
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/a/a/m;->a(ZZ)V

    .line 436
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 438
    iget-object v2, p0, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    .line 439
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/a/a/e;->a(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/constraintlayout/a/a/d;)V
    .locals 2

    .line 287
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method final c(Landroidx/constraintlayout/a/a/d;)V
    .locals 2

    .line 294
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 60
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->b:Landroidx/constraintlayout/a/a/a/e;

    const/4 v1, 0x1

    .line 2619
    iput-boolean v1, v0, Landroidx/constraintlayout/a/a/a/e;->b:Z

    return-void
.end method

.method public final d(Landroidx/constraintlayout/a/a/d;)V
    .locals 2

    .line 301
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v0

    iget-object v1, p0, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v1}, Landroidx/constraintlayout/a/a/d;->c()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->a:Landroidx/constraintlayout/a/a/a/b;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/a/a/a/b;->a(Landroidx/constraintlayout/a/a/f;)V

    return-void
.end method

.method public final f()Landroidx/constraintlayout/a/a/a/b$b;
    .locals 1

    .line 135
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    return-object v0
.end method

.method public final k()V
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/d;->b()V

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->aK:I

    .line 251
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->aM:I

    .line 252
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->aL:I

    .line 253
    iput v0, p0, Landroidx/constraintlayout/a/a/f;->aN:I

    .line 254
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/f;->aY:Z

    .line 255
    invoke-super {p0}, Landroidx/constraintlayout/a/a/m;->k()V

    return-void
.end method

.method public final o(I)V
    .locals 0

    .line 214
    iput p1, p0, Landroidx/constraintlayout/a/a/f;->aX:I

    const/16 p1, 0x200

    .line 215
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/a/a/f;->p(I)Z

    move-result p1

    sput-boolean p1, Landroidx/constraintlayout/a/d;->a:Z

    return-void
.end method

.method public final p(I)Z
    .locals 1

    .line 234
    iget v0, p0, Landroidx/constraintlayout/a/a/f;->aX:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final z()V
    .locals 25

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 611
    iput v2, v1, Landroidx/constraintlayout/a/a/f;->X:I

    .line 612
    iput v2, v1, Landroidx/constraintlayout/a/a/f;->Y:I

    .line 614
    iput-boolean v2, v1, Landroidx/constraintlayout/a/a/f;->aZ:Z

    .line 615
    iput-boolean v2, v1, Landroidx/constraintlayout/a/a/f;->ba:Z

    .line 616
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 618
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 619
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 620
    iget-object v5, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 621
    iget-object v7, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v7, v7, v2

    .line 628
    iget-object v8, v1, Landroidx/constraintlayout/a/a/f;->aI:Landroidx/constraintlayout/a/e;

    const-wide/16 v9, 0x1

    if-eqz v8, :cond_0

    .line 629
    iget-wide v11, v8, Landroidx/constraintlayout/a/e;->E:J

    add-long/2addr v11, v9

    iput-wide v11, v8, Landroidx/constraintlayout/a/e;->E:J

    .line 638
    :cond_0
    iget v8, v1, Landroidx/constraintlayout/a/a/f;->aX:I

    invoke-static {v8, v6}, Landroidx/constraintlayout/a/a/k;->a(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 26135
    iget-object v8, v1, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    .line 642
    invoke-static {v1, v8}, Landroidx/constraintlayout/a/a/a/h;->a(Landroidx/constraintlayout/a/a/f;Landroidx/constraintlayout/a/a/a/b$b;)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_3

    .line 647
    iget-object v11, v1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/a/a/e;

    .line 668
    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->j()Z

    move-result v12

    if-eqz v12, :cond_2

    instance-of v12, v11, Landroidx/constraintlayout/a/a/h;

    if-nez v12, :cond_2

    instance-of v12, v11, Landroidx/constraintlayout/a/a/a;

    if-nez v12, :cond_2

    instance-of v12, v11, Landroidx/constraintlayout/a/a/l;

    if-nez v12, :cond_2

    .line 26248
    iget-boolean v12, v11, Landroidx/constraintlayout/a/a/e;->E:Z

    if-nez v12, :cond_2

    .line 673
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/a/a/e;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v12

    .line 674
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/a/a/e;->l(I)Landroidx/constraintlayout/a/a/e$a;

    move-result-object v13

    .line 676
    sget-object v14, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v12, v14, :cond_1

    iget v12, v11, Landroidx/constraintlayout/a/a/e;->o:I

    if-eq v12, v6, :cond_1

    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v13, v12, :cond_1

    iget v12, v11, Landroidx/constraintlayout/a/a/e;->p:I

    if-eq v12, v6, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_2

    .line 681
    new-instance v12, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v12}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    .line 682
    iget-object v13, v1, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    sget v14, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {v11, v13, v12, v14}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x2

    if-le v3, v8, :cond_36

    .line 696
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v7, v12, :cond_4

    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v5, v12, :cond_36

    :cond_4
    iget v12, v1, Landroidx/constraintlayout/a/a/f;->aX:I

    const/16 v13, 0x400

    .line 698
    invoke-static {v12, v13}, Landroidx/constraintlayout/a/a/k;->a(II)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 27135
    iget-object v12, v1, Landroidx/constraintlayout/a/a/f;->c:Landroidx/constraintlayout/a/a/a/b$b;

    .line 29108
    iget-object v13, v1, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    .line 28065
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_6

    .line 28075
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroidx/constraintlayout/a/a/e;

    .line 29966
    iget-object v11, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v11, v11, v2

    .line 29975
    iget-object v9, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v9, v9, v6

    .line 30966
    iget-object v10, v8, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v10, v10, v2

    .line 30975
    iget-object v2, v8, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v2, v2, v6

    .line 28076
    invoke-static {v11, v9, v10, v2}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e$a;Landroidx/constraintlayout/a/a/e$a;Landroidx/constraintlayout/a/a/e$a;Landroidx/constraintlayout/a/a/e$a;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 28083
    instance-of v2, v8, Landroidx/constraintlayout/a/a/g;

    if-nez v2, :cond_5

    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x2

    const-wide/16 v9, 0x1

    goto :goto_2

    :cond_5
    move/from16 v22, v0

    move/from16 v20, v3

    move/from16 v18, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v7

    goto/16 :goto_18

    .line 28087
    :cond_6
    iget-object v2, v1, Landroidx/constraintlayout/a/a/f;->aI:Landroidx/constraintlayout/a/e;

    if-eqz v2, :cond_7

    .line 28088
    iget-wide v8, v2, Landroidx/constraintlayout/a/e;->F:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroidx/constraintlayout/a/e;->F:J

    :cond_7
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v6, v14, :cond_18

    .line 28091
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v20, v3

    move-object/from16 v3, v18

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    move/from16 v18, v4

    .line 31966
    iget-object v4, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/16 v19, 0x0

    aget-object v4, v4, v19

    move-object/from16 v21, v5

    .line 31975
    iget-object v5, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/16 v17, 0x1

    aget-object v5, v5, v17

    move/from16 v22, v0

    .line 32966
    iget-object v0, v3, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v0, v0, v19

    move-object/from16 v23, v7

    .line 32975
    iget-object v7, v3, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v7, v7, v17

    .line 28092
    invoke-static {v4, v5, v0, v7}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e$a;Landroidx/constraintlayout/a/a/e$a;Landroidx/constraintlayout/a/a/e$a;Landroidx/constraintlayout/a/a/e$a;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 28094
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->bc:Landroidx/constraintlayout/a/a/a/b$a;

    sget v4, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    invoke-static {v3, v12, v0, v4}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/a/b$a;I)Z

    .line 28096
    :cond_8
    instance-of v0, v3, Landroidx/constraintlayout/a/a/h;

    if-eqz v0, :cond_c

    .line 28097
    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/a/a/h;

    .line 33116
    iget v5, v4, Landroidx/constraintlayout/a/a/h;->aI:I

    if-nez v5, :cond_a

    if-nez v9, :cond_9

    .line 28100
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 28102
    :cond_9
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34116
    :cond_a
    iget v5, v4, Landroidx/constraintlayout/a/a/h;->aI:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_c

    if-nez v2, :cond_b

    .line 28106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28108
    :cond_b
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28111
    :cond_c
    instance-of v4, v3, Landroidx/constraintlayout/a/a/j;

    if-eqz v4, :cond_13

    .line 28112
    instance-of v4, v3, Landroidx/constraintlayout/a/a/a;

    if-eqz v4, :cond_10

    .line 28113
    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/a/a/a;

    .line 28114
    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/a;->e()I

    move-result v5

    if-nez v5, :cond_e

    if-nez v8, :cond_d

    .line 28116
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 28118
    :cond_d
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28120
    :cond_e
    invoke-virtual {v4}, Landroidx/constraintlayout/a/a/a;->e()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_13

    if-nez v10, :cond_f

    .line 28122
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 28124
    :cond_f
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28127
    :cond_10
    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/a/a/j;

    if-nez v8, :cond_11

    .line 28129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 28131
    :cond_11
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v10, :cond_12

    .line 28133
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 28135
    :cond_12
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28138
    :cond_13
    :goto_4
    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->H:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v4, :cond_15

    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->J:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v4, :cond_15

    if-nez v0, :cond_15

    instance-of v4, v3, Landroidx/constraintlayout/a/a/a;

    if-nez v4, :cond_15

    if-nez v11, :cond_14

    .line 28141
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 28143
    :cond_14
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28145
    :cond_15
    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->I:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v4, :cond_17

    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->K:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v4, :cond_17

    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->L:Landroidx/constraintlayout/a/a/d;

    iget-object v4, v4, Landroidx/constraintlayout/a/a/d;->f:Landroidx/constraintlayout/a/a/d;

    if-nez v4, :cond_17

    if-nez v0, :cond_17

    instance-of v0, v3, Landroidx/constraintlayout/a/a/a;

    if-nez v0, :cond_17

    if-nez v15, :cond_16

    .line 28149
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 28151
    :cond_16
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v18

    move/from16 v3, v20

    move-object/from16 v5, v21

    move/from16 v0, v22

    move-object/from16 v7, v23

    goto/16 :goto_3

    :cond_18
    move/from16 v22, v0

    move/from16 v20, v3

    move/from16 v18, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v7

    .line 28154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_19

    .line 28160
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 28161
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_5

    :cond_19
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v8, :cond_1a

    .line 28165
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/j;

    .line 28166
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    move-result-object v6

    .line 28167
    invoke-virtual {v3, v0, v5, v6}, Landroidx/constraintlayout/a/a/j;->a(Ljava/util/ArrayList;ILandroidx/constraintlayout/a/a/a/o;)V

    .line 28168
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/a/a/a/o;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_6

    .line 28172
    :cond_1a
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->LEFT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    .line 35048
    iget-object v3, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1b

    .line 36048
    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 28174
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/d;

    .line 28175
    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_7

    .line 28179
    :cond_1b
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->RIGHT:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    .line 37048
    iget-object v3, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1c

    .line 38048
    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 28181
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/d;

    .line 28182
    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_8

    .line 28186
    :cond_1c
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->CENTER:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    .line 39048
    iget-object v3, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1d

    .line 40048
    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 28188
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/d;

    .line 28189
    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_9

    :cond_1d
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v11, :cond_1e

    .line 28194
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    .line 28195
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_a

    :cond_1e
    if-eqz v9, :cond_1f

    .line 28204
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/h;

    const/4 v5, 0x1

    .line 28205
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_b

    :cond_1f
    const/4 v5, 0x1

    if-eqz v10, :cond_20

    .line 28209
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/j;

    .line 28210
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    move-result-object v6

    .line 28211
    invoke-virtual {v3, v0, v5, v6}, Landroidx/constraintlayout/a/a/j;->a(Ljava/util/ArrayList;ILandroidx/constraintlayout/a/a/a/o;)V

    .line 28212
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/a/a/a/o;->a(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_c

    .line 28216
    :cond_20
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->TOP:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    .line 41048
    iget-object v3, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_21

    .line 42048
    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 28218
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/d;

    .line 28219
    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_d

    .line 28223
    :cond_21
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->BASELINE:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    .line 43048
    iget-object v3, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_22

    .line 44048
    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 28225
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/d;

    .line 28226
    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_e

    .line 28230
    :cond_22
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->BOTTOM:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    .line 45048
    iget-object v3, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_23

    .line 46048
    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 28232
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/d;

    .line 28233
    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_f

    .line 28237
    :cond_23
    sget-object v2, Landroidx/constraintlayout/a/a/d$a;->CENTER:Landroidx/constraintlayout/a/a/d$a;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d$a;)Landroidx/constraintlayout/a/a/d;

    move-result-object v2

    .line 47048
    iget-object v3, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_24

    .line 48048
    iget-object v2, v2, Landroidx/constraintlayout/a/a/d;->a:Ljava/util/HashSet;

    .line 28239
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/d;

    .line 28240
    iget-object v3, v3, Landroidx/constraintlayout/a/a/d;->d:Landroidx/constraintlayout/a/a/e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_10

    :cond_24
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v15, :cond_25

    .line 28245
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    .line 28246
    invoke-static {v3, v5, v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Landroidx/constraintlayout/a/a/e;ILjava/util/ArrayList;Landroidx/constraintlayout/a/a/a/o;)Landroidx/constraintlayout/a/a/a/o;

    goto :goto_11

    :cond_25
    const/4 v2, 0x0

    :goto_12
    if-ge v2, v14, :cond_28

    .line 28252
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    .line 48511
    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, v5, :cond_26

    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, v5, :cond_26

    const/4 v4, 0x1

    goto :goto_13

    :cond_26
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_27

    .line 28254
    iget v4, v3, Landroidx/constraintlayout/a/a/e;->aG:I

    invoke-static {v0, v4}, Landroidx/constraintlayout/a/a/a/i;->a(Ljava/util/ArrayList;I)Landroidx/constraintlayout/a/a/a/o;

    move-result-object v4

    .line 28255
    iget v3, v3, Landroidx/constraintlayout/a/a/e;->aH:I

    invoke-static {v0, v3}, Landroidx/constraintlayout/a/a/a/i;->a(Ljava/util/ArrayList;I)Landroidx/constraintlayout/a/a/a/o;

    move-result-object v3

    if-eqz v4, :cond_27

    if-eqz v3, :cond_27

    const/4 v5, 0x0

    .line 28260
    invoke-virtual {v4, v5, v3}, Landroidx/constraintlayout/a/a/a/o;->a(ILandroidx/constraintlayout/a/a/a/o;)V

    const/4 v5, 0x2

    .line 49175
    iput v5, v3, Landroidx/constraintlayout/a/a/a/o;->e:I

    .line 28262
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 28270
    :cond_28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_30

    .line 49966
    iget-object v2, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 28297
    sget-object v4, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, v4, :cond_2b

    .line 28300
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_29
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/a/a/a/o;

    .line 50048
    iget v7, v6, Landroidx/constraintlayout/a/a/a/o;->e:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_29

    .line 50049
    iput-boolean v3, v6, Landroidx/constraintlayout/a/a/a/o;->d:Z

    .line 50050
    iget-object v7, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    .line 28305
    invoke-virtual {v6, v7, v3}, Landroidx/constraintlayout/a/a/a/o;->a(Landroidx/constraintlayout/a/d;I)I

    move-result v7

    if-le v7, v5, :cond_29

    move-object v4, v6

    move v5, v7

    goto :goto_14

    :cond_2a
    if-eqz v4, :cond_2b

    .line 28318
    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 50051
    iget-object v6, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v2, v6, v3

    .line 28319
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/f;->g(I)V

    const/4 v2, 0x1

    .line 50053
    iput-boolean v2, v4, Landroidx/constraintlayout/a/a/a/o;->d:Z

    goto :goto_15

    :cond_2b
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 50054
    :goto_15
    iget-object v3, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v3, v3, v2

    .line 28325
    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v3, v2, :cond_2e

    .line 28328
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_2c
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/a/a/a/o;

    .line 50055
    iget v6, v5, Landroidx/constraintlayout/a/a/a/o;->e:I

    if-eqz v6, :cond_2c

    const/4 v6, 0x0

    .line 50056
    iput-boolean v6, v5, Landroidx/constraintlayout/a/a/a/o;->d:Z

    .line 50057
    iget-object v6, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    const/4 v7, 0x1

    .line 28333
    invoke-virtual {v5, v6, v7}, Landroidx/constraintlayout/a/a/a/o;->a(Landroidx/constraintlayout/a/d;I)I

    move-result v6

    if-le v6, v3, :cond_2c

    move-object v2, v5

    move v3, v6

    goto :goto_16

    :cond_2d
    const/4 v7, 0x1

    if-eqz v2, :cond_2e

    .line 28346
    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    .line 50058
    iget-object v5, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aput-object v0, v5, v7

    .line 28347
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/a/a/f;->h(I)V

    .line 50060
    iput-boolean v7, v2, Landroidx/constraintlayout/a/a/a/o;->d:Z

    goto :goto_17

    :cond_2e
    const/4 v2, 0x0

    :goto_17
    if-nez v4, :cond_2f

    if-eqz v2, :cond_30

    :cond_2f
    const/4 v0, 0x1

    goto :goto_19

    :cond_30
    :goto_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_35

    .line 700
    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    move-object/from16 v2, v23

    if-ne v2, v0, :cond_32

    .line 701
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v0

    move/from16 v3, v22

    if-ge v3, v0, :cond_31

    if-lez v3, :cond_31

    .line 705
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/a/a/f;->g(I)V

    const/4 v4, 0x1

    .line 706
    iput-boolean v4, v1, Landroidx/constraintlayout/a/a/f;->aZ:Z

    goto :goto_1a

    .line 708
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v0

    goto :goto_1b

    :cond_32
    move/from16 v3, v22

    :goto_1a
    move v0, v3

    .line 711
    :goto_1b
    sget-object v3, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    move-object/from16 v4, v21

    if-ne v4, v3, :cond_34

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v3

    move/from16 v5, v18

    if-ge v5, v3, :cond_33

    if-lez v5, :cond_33

    .line 716
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/f;->h(I)V

    const/4 v3, 0x1

    .line 717
    iput-boolean v3, v1, Landroidx/constraintlayout/a/a/f;->ba:Z

    goto :goto_1c

    .line 719
    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v3

    goto :goto_1d

    :cond_34
    move/from16 v5, v18

    :goto_1c
    move v3, v5

    :goto_1d
    move v5, v3

    move v3, v0

    const/4 v0, 0x1

    goto :goto_1f

    :cond_35
    move/from16 v5, v18

    move-object/from16 v4, v21

    move/from16 v3, v22

    move-object/from16 v2, v23

    goto :goto_1e

    :cond_36
    move/from16 v20, v3

    move-object v2, v7

    move v3, v0

    move-object/from16 v24, v5

    move v5, v4

    move-object/from16 v4, v24

    :goto_1e
    const/4 v0, 0x0

    :goto_1f
    const/16 v6, 0x40

    .line 730
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/a/a/f;->p(I)Z

    move-result v7

    if-nez v7, :cond_38

    const/16 v7, 0x80

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/a/a/f;->p(I)Z

    move-result v7

    if-eqz v7, :cond_37

    goto :goto_20

    :cond_37
    const/4 v7, 0x0

    goto :goto_21

    :cond_38
    :goto_20
    const/4 v7, 0x1

    .line 732
    :goto_21
    iget-object v8, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    const/4 v9, 0x0

    iput-boolean v9, v8, Landroidx/constraintlayout/a/d;->j:Z

    .line 733
    iget-object v8, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    iput-boolean v9, v8, Landroidx/constraintlayout/a/d;->k:Z

    .line 735
    iget v8, v1, Landroidx/constraintlayout/a/a/f;->aX:I

    if-eqz v8, :cond_39

    if-eqz v7, :cond_39

    .line 737
    iget-object v7, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/constraintlayout/a/d;->k:Z

    goto :goto_22

    :cond_39
    const/4 v8, 0x1

    .line 741
    :goto_22
    iget-object v7, v1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    .line 50061
    iget-object v10, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v10, v10, v9

    .line 742
    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v10, v9, :cond_3b

    .line 50062
    iget-object v9, v1, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v9, v9, v8

    .line 742
    sget-object v8, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v9, v8, :cond_3a

    goto :goto_23

    :cond_3a
    const/4 v8, 0x0

    goto :goto_24

    :cond_3b
    :goto_23
    const/4 v8, 0x1

    .line 745
    :goto_24
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->A()V

    move/from16 v10, v20

    const/4 v9, 0x0

    :goto_25
    if-ge v9, v10, :cond_3d

    .line 751
    iget-object v11, v1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/a/a/e;

    .line 752
    instance-of v12, v11, Landroidx/constraintlayout/a/a/m;

    if-eqz v12, :cond_3c

    .line 753
    check-cast v11, Landroidx/constraintlayout/a/a/m;

    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/m;->z()V

    :cond_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    .line 756
    :cond_3d
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/a/a/f;->p(I)Z

    move-result v6

    move v9, v0

    const/4 v0, 0x0

    const/4 v11, 0x1

    :goto_26
    if-eqz v11, :cond_4d

    const/4 v12, 0x1

    add-int/lit8 v13, v0, 0x1

    .line 763
    :try_start_0
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/d;->b()V

    .line 764
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->A()V

    .line 778
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/d;)V

    const/4 v0, 0x0

    :goto_27
    if-ge v0, v10, :cond_3e

    .line 780
    iget-object v12, v1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/a/a/e;

    .line 781
    iget-object v14, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    invoke-virtual {v12, v14}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 784
    :cond_3e
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/a/a/f;->b(Landroidx/constraintlayout/a/d;)Z

    move-result v11

    .line 785
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 786
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/d;

    iget-object v12, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    iget-object v14, v1, Landroidx/constraintlayout/a/a/f;->I:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v12, v14}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v12

    invoke-direct {v1, v0, v12}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v12, 0x0

    .line 787
    :try_start_1
    iput-object v12, v1, Landroidx/constraintlayout/a/a/f;->bf:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 789
    :cond_3f
    :try_start_2
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 790
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/d;

    iget-object v12, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    iget-object v14, v1, Landroidx/constraintlayout/a/a/f;->K:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v12, v14}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v12

    invoke-direct {v1, v0, v12}, Landroidx/constraintlayout/a/a/f;->b(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/h;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v12, 0x0

    .line 791
    :try_start_3
    iput-object v12, v1, Landroidx/constraintlayout/a/a/f;->bh:Ljava/lang/ref/WeakReference;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 793
    :cond_40
    :try_start_4
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 794
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/d;

    iget-object v12, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    iget-object v14, v1, Landroidx/constraintlayout/a/a/f;->H:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v12, v14}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v12

    invoke-direct {v1, v0, v12}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/h;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v12, 0x0

    .line 795
    :try_start_5
    iput-object v12, v1, Landroidx/constraintlayout/a/a/f;->bg:Ljava/lang/ref/WeakReference;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 797
    :cond_41
    :try_start_6
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 798
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/d;

    iget-object v12, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    iget-object v14, v1, Landroidx/constraintlayout/a/a/f;->J:Landroidx/constraintlayout/a/a/d;

    invoke-virtual {v12, v14}, Landroidx/constraintlayout/a/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/a/h;

    move-result-object v12

    invoke-direct {v1, v0, v12}, Landroidx/constraintlayout/a/a/f;->b(Landroidx/constraintlayout/a/a/d;Landroidx/constraintlayout/a/h;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v12, 0x0

    .line 799
    :try_start_7
    iput-object v12, v1, Landroidx/constraintlayout/a/a/f;->bi:Ljava/lang/ref/WeakReference;

    goto :goto_28

    :cond_42
    const/4 v12, 0x0

    .line 802
    :goto_28
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/d;->e()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2a

    :catch_0
    move-exception v0

    goto :goto_29

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    .line 805
    :goto_29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "EXCEPTION : "

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2a
    if-eqz v11, :cond_43

    .line 809
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    sget-object v11, Landroidx/constraintlayout/a/a/k;->a:[Z

    invoke-direct {v1, v0, v11}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/d;[Z)V

    goto :goto_2c

    .line 811
    :cond_43
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/a/a/f;->b(Z)V

    const/4 v0, 0x0

    :goto_2b
    if-ge v0, v10, :cond_44

    .line 813
    iget-object v11, v1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/a/a/e;

    .line 814
    invoke-virtual {v11, v6}, Landroidx/constraintlayout/a/a/e;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_44
    :goto_2c
    if-eqz v8, :cond_47

    const/16 v0, 0x8

    if-ge v13, v0, :cond_47

    .line 819
    sget-object v0, Landroidx/constraintlayout/a/a/k;->a:[Z

    const/4 v11, 0x2

    aget-boolean v0, v0, v11

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2d
    if-ge v0, v10, :cond_45

    .line 825
    iget-object v11, v1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/a/a/e;

    .line 826
    iget v12, v11, Landroidx/constraintlayout/a/a/e;->X:I

    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v18

    add-int v12, v12, v18

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 827
    iget v12, v11, Landroidx/constraintlayout/a/a/e;->Y:I

    invoke-virtual {v11}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v11

    add-int/2addr v12, v11

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    goto :goto_2d

    .line 829
    :cond_45
    iget v0, v1, Landroidx/constraintlayout/a/a/f;->ae:I

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 830
    iget v11, v1, Landroidx/constraintlayout/a/a/f;->af:I

    invoke-static {v11, v15}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 831
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v2, v12, :cond_46

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v12

    if-ge v12, v0, :cond_46

    .line 837
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/f;->g(I)V

    .line 838
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    const/4 v12, 0x0

    aput-object v9, v0, v12

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_2e

    :cond_46
    const/4 v0, 0x0

    .line 843
    :goto_2e
    sget-object v12, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, v12, :cond_48

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v12

    if-ge v12, v11, :cond_48

    .line 849
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/a/a/f;->h(I)V

    .line 850
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    const/4 v11, 0x1

    aput-object v9, v0, v11

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_2f

    :cond_47
    const/4 v0, 0x0

    .line 857
    :cond_48
    :goto_2f
    iget v11, v1, Landroidx/constraintlayout/a/a/f;->ae:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 858
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v12

    if-le v11, v12, :cond_49

    .line 863
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/a/a/f;->g(I)V

    .line 864
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    const/4 v11, 0x0

    aput-object v9, v0, v11

    const/4 v0, 0x1

    const/4 v9, 0x1

    .line 868
    :cond_49
    iget v11, v1, Landroidx/constraintlayout/a/a/f;->af:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 869
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v12

    if-le v11, v12, :cond_4a

    .line 874
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/a/a/f;->h(I)V

    .line 875
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    const/4 v11, 0x1

    aput-object v9, v0, v11

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_30

    :cond_4a
    const/4 v11, 0x1

    :goto_30
    if-nez v9, :cond_4c

    .line 881
    iget-object v12, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v14, 0x0

    aget-object v12, v12, v14

    sget-object v15, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v12, v15, :cond_4b

    if-lez v3, :cond_4b

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->o()I

    move-result v12

    if-le v12, v3, :cond_4b

    .line 889
    iput-boolean v11, v1, Landroidx/constraintlayout/a/a/f;->aZ:Z

    .line 891
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    aput-object v9, v0, v14

    .line 892
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/a/a/f;->g(I)V

    const/4 v0, 0x1

    const/4 v9, 0x1

    .line 896
    :cond_4b
    iget-object v12, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v12, v12, v11

    sget-object v14, Landroidx/constraintlayout/a/a/e$a;->WRAP_CONTENT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v12, v14, :cond_4c

    if-lez v5, :cond_4c

    .line 898
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/a/a/f;->p()I

    move-result v12

    if-le v12, v5, :cond_4c

    .line 904
    iput-boolean v11, v1, Landroidx/constraintlayout/a/a/f;->ba:Z

    .line 906
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    sget-object v9, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    aput-object v9, v0, v11

    .line 907
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/a/a/f;->h(I)V

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_31

    :cond_4c
    move v11, v0

    :goto_31
    move v0, v13

    goto/16 :goto_26

    .line 920
    :cond_4d
    check-cast v7, Ljava/util/ArrayList;

    iput-object v7, v1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    if-eqz v9, :cond_4e

    .line 923
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 924
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v2, 0x1

    aput-object v4, v0, v2

    .line 927
    :cond_4e
    iget-object v0, v1, Landroidx/constraintlayout/a/a/f;->aJ:Landroidx/constraintlayout/a/d;

    .line 50063
    iget-object v0, v0, Landroidx/constraintlayout/a/d;->n:Landroidx/constraintlayout/a/c;

    .line 927
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/a/a/f;->a(Landroidx/constraintlayout/a/c;)V

    return-void
.end method
