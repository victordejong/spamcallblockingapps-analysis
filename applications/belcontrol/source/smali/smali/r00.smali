.class public Lr00;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lo10$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lz00$d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lz00$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Lz00$c;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo10$c;Lz00$d;Ljava/util/List;ZLz00$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lo10$c;",
            "Lz00$d;",
            "Ljava/util/List<",
            "Lz00$b;",
            ">;Z",
            "Lz00$c;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lr00;->a:Lo10$c;

    iput-object p1, p0, Lr00;->b:Landroid/content/Context;

    iput-object p2, p0, Lr00;->c:Ljava/lang/String;

    iput-object p4, p0, Lr00;->d:Lz00$d;

    iput-object p5, p0, Lr00;->e:Ljava/util/List;

    iput-boolean p6, p0, Lr00;->f:Z

    iput-object p7, p0, Lr00;->g:Lz00$c;

    iput-object p8, p0, Lr00;->h:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lr00;->i:Ljava/util/concurrent/Executor;

    iput-boolean p10, p0, Lr00;->j:Z

    iput-boolean p11, p0, Lr00;->k:Z

    iput-boolean p12, p0, Lr00;->l:Z

    iput-object p13, p0, Lr00;->m:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lr00;->l:Z

    if-eqz p2, :cond_1

    return v1

    :cond_1
    iget-boolean p2, p0, Lr00;->k:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lr00;->m:Ljava/util/Set;

    if-eqz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method
