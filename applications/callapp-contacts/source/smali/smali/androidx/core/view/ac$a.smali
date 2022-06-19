.class public final Landroidx/core/view/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/core/view/ac$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 858
    new-instance v0, Landroidx/core/view/ac$d;

    invoke-direct {v0}, Landroidx/core/view/ac$d;-><init>()V

    iput-object v0, p0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    return-void

    .line 859
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 860
    new-instance v0, Landroidx/core/view/ac$c;

    invoke-direct {v0}, Landroidx/core/view/ac$c;-><init>()V

    iput-object v0, p0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    return-void

    .line 862
    :cond_1
    new-instance v0, Landroidx/core/view/ac$b;

    invoke-direct {v0}, Landroidx/core/view/ac$b;-><init>()V

    iput-object v0, p0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/ac;)V
    .locals 2

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 873
    new-instance v0, Landroidx/core/view/ac$d;

    invoke-direct {v0, p1}, Landroidx/core/view/ac$d;-><init>(Landroidx/core/view/ac;)V

    iput-object v0, p0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    return-void

    .line 874
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 875
    new-instance v0, Landroidx/core/view/ac$c;

    invoke-direct {v0, p1}, Landroidx/core/view/ac$c;-><init>(Landroidx/core/view/ac;)V

    iput-object v0, p0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    return-void

    .line 877
    :cond_1
    new-instance v0, Landroidx/core/view/ac$b;

    invoke-direct {v0, p1}, Landroidx/core/view/ac$b;-><init>(Landroidx/core/view/ac;)V

    iput-object v0, p0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/graphics/b;)Landroidx/core/view/ac$a;
    .locals 1

    .line 893
    iget-object v0, p0, Landroidx/core/view/ac$a;->a:Landroidx/core/view/ac$b;

    invoke-virtual {v0, p1}, Landroidx/core/view/ac$b;->a(Landroidx/core/graphics/b;)V

    return-object p0
.end method
