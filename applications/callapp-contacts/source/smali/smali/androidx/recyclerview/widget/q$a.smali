.class final Landroidx/recyclerview/widget/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static d:Landroidx/core/e/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/e/c$a<",
            "Landroidx/recyclerview/widget/q$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Landroidx/recyclerview/widget/RecyclerView$f$b;

.field c:Landroidx/recyclerview/widget/RecyclerView$f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 307
    new-instance v0, Landroidx/core/e/c$b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/e/c$b;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/q$a;->d:Landroidx/core/e/c$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Landroidx/recyclerview/widget/q$a;
    .locals 1

    .line 313
    sget-object v0, Landroidx/recyclerview/widget/q$a;->d:Landroidx/core/e/c$a;

    invoke-interface {v0}, Landroidx/core/e/c$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/q$a;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Landroidx/recyclerview/widget/q$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/q$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Landroidx/recyclerview/widget/q$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 318
    iput v0, p0, Landroidx/recyclerview/widget/q$a;->a:I

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Landroidx/recyclerview/widget/q$a;->b:Landroidx/recyclerview/widget/RecyclerView$f$b;

    .line 320
    iput-object v0, p0, Landroidx/recyclerview/widget/q$a;->c:Landroidx/recyclerview/widget/RecyclerView$f$b;

    .line 321
    sget-object v0, Landroidx/recyclerview/widget/q$a;->d:Landroidx/core/e/c$a;

    invoke-interface {v0, p0}, Landroidx/core/e/c$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method static b()V
    .locals 1

    .line 326
    :cond_0
    sget-object v0, Landroidx/recyclerview/widget/q$a;->d:Landroidx/core/e/c$a;

    invoke-interface {v0}, Landroidx/core/e/c$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method
