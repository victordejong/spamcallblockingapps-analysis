.class final Landroidx/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/e/a/a$c;,
        Landroidx/e/a/a$d;,
        Landroidx/e/a/a$e;,
        Landroidx/e/a/a$a;,
        Landroidx/e/a/a$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/e/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Landroidx/e/a/a$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/e/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field d:J

.field e:Z

.field private final f:Landroidx/e/a/a$a;

.field private g:Landroidx/e/a/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/e/a/a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Landroidx/e/a/a;->b:Landroidx/b/g;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/e/a/a;->c:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Landroidx/e/a/a$a;

    invoke-direct {v0, p0}, Landroidx/e/a/a$a;-><init>(Landroidx/e/a/a;)V

    iput-object v0, p0, Landroidx/e/a/a;->f:Landroidx/e/a/a$a;

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Landroidx/e/a/a;->d:J

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Landroidx/e/a/a;->e:Z

    return-void
.end method

.method public static a()Landroidx/e/a/a;
    .locals 2

    .line 88
    sget-object v0, Landroidx/e/a/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Landroidx/e/a/a;

    invoke-direct {v1}, Landroidx/e/a/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/e/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/e/a/a$b;)V
    .locals 2

    .line 141
    iget-object v0, p0, Landroidx/e/a/a;->b:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Landroidx/e/a/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 144
    iget-object v0, p0, Landroidx/e/a/a;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Landroidx/e/a/a;->e:Z

    :cond_0
    return-void
.end method

.method final b()Landroidx/e/a/a$c;
    .locals 2

    .line 111
    iget-object v0, p0, Landroidx/e/a/a;->g:Landroidx/e/a/a$c;

    if-nez v0, :cond_1

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 113
    new-instance v0, Landroidx/e/a/a$e;

    iget-object v1, p0, Landroidx/e/a/a;->f:Landroidx/e/a/a$a;

    invoke-direct {v0, v1}, Landroidx/e/a/a$e;-><init>(Landroidx/e/a/a$a;)V

    iput-object v0, p0, Landroidx/e/a/a;->g:Landroidx/e/a/a$c;

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Landroidx/e/a/a$d;

    iget-object v1, p0, Landroidx/e/a/a;->f:Landroidx/e/a/a$a;

    invoke-direct {v0, v1}, Landroidx/e/a/a$d;-><init>(Landroidx/e/a/a$a;)V

    iput-object v0, p0, Landroidx/e/a/a;->g:Landroidx/e/a/a$c;

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/e/a/a;->g:Landroidx/e/a/a$c;

    return-object v0
.end method
