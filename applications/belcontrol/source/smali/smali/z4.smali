.class public Lz4;
.super La5;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4$a;
    }
.end annotation


# instance fields
.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, La5;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz4;->g:Ljava/lang/String;

    sget v0, Lt4;->e:I

    iput v0, p0, Lz4;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lz4;->i:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lz4;->j:F

    iput v1, p0, Lz4;->k:F

    iput v1, p0, Lz4;->l:F

    iput v1, p0, Lz4;->m:F

    iput v1, p0, Lz4;->n:F

    iput v1, p0, Lz4;->o:F

    iput v0, p0, Lz4;->p:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Li5;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Ld7;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p0, p1}, Lz4$a;->a(Lz4;Landroid/content/res/TypedArray;)V

    return-void
.end method
