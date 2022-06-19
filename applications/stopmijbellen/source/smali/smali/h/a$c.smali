.class public Lh/a$c;
.super Lh/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public K:Ls/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls/d<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public L:Ls/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/a$c;Lh/a;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lh/e$a;-><init>(Lh/e$a;Lh/e;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p1, Lh/a$c;->K:Ls/d;

    iput-object p2, p0, Lh/a$c;->K:Ls/d;

    .line 3
    iget-object p1, p1, Lh/a$c;->L:Ls/h;

    iput-object p1, p0, Lh/a$c;->L:Ls/h;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ls/d;

    invoke-direct {p1}, Ls/d;-><init>()V

    iput-object p1, p0, Lh/a$c;->K:Ls/d;

    .line 5
    new-instance p1, Ls/h;

    invoke-direct {p1}, Ls/h;-><init>()V

    iput-object p1, p0, Lh/a$c;->L:Ls/h;

    :goto_0
    return-void
.end method

.method public static h(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/a$c;->K:Ls/d;

    invoke-virtual {v0}, Ls/d;->c()Ls/d;

    move-result-object v0

    iput-object v0, p0, Lh/a$c;->K:Ls/d;

    .line 2
    iget-object v0, p0, Lh/a$c;->L:Ls/h;

    invoke-virtual {v0}, Ls/h;->b()Ls/h;

    move-result-object v0

    iput-object v0, p0, Lh/a$c;->L:Ls/h;

    return-void
.end method

.method public i(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Lh/a$c;->L:Ls/h;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ls/h;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Lh/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh/a;-><init>(Lh/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance v0, Lh/a;

    invoke-direct {v0, p0, p1}, Lh/a;-><init>(Lh/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method
