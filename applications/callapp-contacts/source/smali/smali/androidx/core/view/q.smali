.class public final Landroidx/core/view/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 92
    iget v0, p0, Landroidx/core/view/q;->a:I

    iget v1, p0, Landroidx/core/view/q;->b:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 115
    iput v0, p0, Landroidx/core/view/q;->b:I

    return-void

    .line 117
    :cond_0
    iput v0, p0, Landroidx/core/view/q;->a:I

    return-void
.end method

.method public final a(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 77
    iput p1, p0, Landroidx/core/view/q;->b:I

    return-void

    .line 79
    :cond_0
    iput p1, p0, Landroidx/core/view/q;->a:I

    return-void
.end method
