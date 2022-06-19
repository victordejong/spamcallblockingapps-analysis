.class Landroidx/e/a/a;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


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
.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/e/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field private final d:Landroidx/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/g<",
            "Landroidx/e/a/a$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/e/a/a$a;

.field private f:Landroidx/e/a/a$c;

.field private g:Z


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
    new-instance v0, Landroidx/c/g;

    invoke-direct {v0}, Landroidx/c/g;-><init>()V

    iput-object v0, p0, Landroidx/e/a/a;->d:Landroidx/c/g;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Landroidx/e/a/a$a;

    invoke-direct {v0, p0}, Landroidx/e/a/a$a;-><init>(Landroidx/e/a/a;)V

    iput-object v0, p0, Landroidx/e/a/a;->e:Landroidx/e/a/a$a;

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Landroidx/e/a/a;->c:J

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Landroidx/e/a/a;->g:Z

    return-void
.end method

.method public static a()Landroidx/e/a/a;
    .locals 2

    .line 88
    sget-object v0, Landroidx/e/a/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Landroidx/e/a/a;->a:Ljava/lang/ThreadLocal;

    new-instance v1, Landroidx/e/a/a;

    invoke-direct {v1}, Landroidx/e/a/a;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 91
    :cond_0
    sget-object v0, Landroidx/e/a/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/e/a/a;

    return-object v0
.end method

.method private b(Landroidx/e/a/a$b;J)Z
    .locals 4

    .line 171
    iget-object v0, p0, Landroidx/e/a/a;->d:Landroidx/c/g;

    invoke-virtual {v0, p1}, Landroidx/c/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-gez p2, :cond_1

    .line 176
    iget-object p2, p0, Landroidx/e/a/a;->d:Landroidx/c/g;

    invoke-virtual {p2, p1}, Landroidx/c/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c()V
    .locals 2

    .line 183
    iget-boolean v0, p0, Landroidx/e/a/a;->g:Z

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 185
    iget-object v1, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Landroidx/e/a/a;->g:Z

    :cond_2
    return-void
.end method


# virtual methods
.method a(J)V
    .locals 5

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 152
    :goto_0
    iget-object v3, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 153
    iget-object v3, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/e/a/a$b;

    if-nez v3, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    invoke-direct {p0, v3, v0, v1}, Landroidx/e/a/a;->b(Landroidx/e/a/a$b;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    invoke-interface {v3, p1, p2}, Landroidx/e/a/a$b;->a(J)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0}, Landroidx/e/a/a;->c()V

    return-void
.end method

.method public a(Landroidx/e/a/a$b;)V
    .locals 2

    .line 141
    iget-object v0, p0, Landroidx/e/a/a;->d:Landroidx/c/g;

    invoke-virtual {v0, p1}, Landroidx/c/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 144
    iget-object v0, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Landroidx/e/a/a;->g:Z

    :cond_0
    return-void
.end method

.method public a(Landroidx/e/a/a$b;J)V
    .locals 3

    .line 125
    iget-object v0, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroidx/e/a/a;->b()Landroidx/e/a/a$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/e/a/a$c;->a()V

    .line 128
    :cond_0
    iget-object v0, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    .line 133
    iget-object v0, p0, Landroidx/e/a/a;->d:Landroidx/c/g;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/c/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method b()Landroidx/e/a/a$c;
    .locals 2

    .line 111
    iget-object v0, p0, Landroidx/e/a/a;->f:Landroidx/e/a/a$c;

    if-nez v0, :cond_1

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 113
    new-instance v0, Landroidx/e/a/a$e;

    iget-object v1, p0, Landroidx/e/a/a;->e:Landroidx/e/a/a$a;

    invoke-direct {v0, v1}, Landroidx/e/a/a$e;-><init>(Landroidx/e/a/a$a;)V

    iput-object v0, p0, Landroidx/e/a/a;->f:Landroidx/e/a/a$c;

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Landroidx/e/a/a$d;

    iget-object v1, p0, Landroidx/e/a/a;->e:Landroidx/e/a/a$a;

    invoke-direct {v0, v1}, Landroidx/e/a/a$d;-><init>(Landroidx/e/a/a$a;)V

    iput-object v0, p0, Landroidx/e/a/a;->f:Landroidx/e/a/a$c;

    .line 118
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/e/a/a;->f:Landroidx/e/a/a$c;

    return-object v0
.end method
