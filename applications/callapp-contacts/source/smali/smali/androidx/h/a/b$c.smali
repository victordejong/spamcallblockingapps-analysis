.class Landroidx/h/a/b$c;
.super Landroidx/lifecycle/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/h/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final c:Landroidx/lifecycle/ab$b;


# instance fields
.field a:Landroidx/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/h<",
            "Landroidx/h/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 285
    new-instance v0, Landroidx/h/a/b$c$1;

    invoke-direct {v0}, Landroidx/h/a/b$c$1;-><init>()V

    sput-object v0, Landroidx/h/a/b$c;->c:Landroidx/lifecycle/ab$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 284
    invoke-direct {p0}, Landroidx/lifecycle/aa;-><init>()V

    .line 299
    new-instance v0, Landroidx/b/h;

    invoke-direct {v0}, Landroidx/b/h;-><init>()V

    iput-object v0, p0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    const/4 v0, 0x0

    .line 300
    iput-boolean v0, p0, Landroidx/h/a/b$c;->b:Z

    return-void
.end method

.method static a(Landroidx/lifecycle/ac;)Landroidx/h/a/b$c;
    .locals 2

    .line 296
    new-instance v0, Landroidx/lifecycle/ab;

    sget-object v1, Landroidx/h/a/b$c;->c:Landroidx/lifecycle/ab$b;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ab;-><init>(Landroidx/lifecycle/ac;Landroidx/lifecycle/ab$b;)V

    const-class p0, Landroidx/h/a/b$c;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ab;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p0

    check-cast p0, Landroidx/h/a/b$c;

    return-object p0
.end method


# virtual methods
.method final a(I)Landroidx/h/a/b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/h/a/b$a<",
            "TD;>;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    const/4 v1, 0x0

    .line 1109
    invoke-virtual {v0, p1, v1}, Landroidx/b/h;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 320
    check-cast p1, Landroidx/h/a/b$a;

    return-object p1
.end method

.method public final a()V
    .locals 6

    .line 348
    invoke-super {p0}, Landroidx/lifecycle/aa;->a()V

    .line 349
    iget-object v0, p0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    invoke-virtual {v0}, Landroidx/b/h;->b()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 351
    iget-object v3, p0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    invoke-virtual {v3, v2}, Landroidx/b/h;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/h/a/b$a;

    const/4 v4, 0x1

    .line 352
    invoke-virtual {v3, v4}, Landroidx/h/a/b$a;->a(Z)Landroidx/h/b/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    .line 1444
    iget v2, v0, Landroidx/b/h;->c:I

    .line 1445
    iget-object v3, v0, Landroidx/b/h;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    const/4 v5, 0x0

    .line 1448
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1451
    :cond_1
    iput v1, v0, Landroidx/b/h;->c:I

    .line 1452
    iput-boolean v1, v0, Landroidx/b/h;->a:Z

    return-void
.end method
