.class public final Lcom/facebook/rebound/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/rebound/i;


# static fields
.field private static final b:Lcom/facebook/rebound/h;

.field private static c:I


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/rebound/e;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/rebound/k;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/rebound/i;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private final g:Lcom/facebook/rebound/g;

.field private final h:Lcom/facebook/rebound/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/facebook/rebound/h;->a()Lcom/facebook/rebound/h;

    move-result-object v0

    sput-object v0, Lcom/facebook/rebound/f;->b:Lcom/facebook/rebound/h;

    const/4 v0, 0x0

    .line 34
    sput v0, Lcom/facebook/rebound/f;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x28

    const/4 v1, 0x6

    const/16 v2, 0x46

    const/16 v3, 0xa

    .line 77
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/rebound/f;-><init>(IIII)V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/facebook/rebound/k;->c()Lcom/facebook/rebound/k;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/f;->d:Lcom/facebook/rebound/k;

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/facebook/rebound/f;->f:I

    int-to-double v0, p1

    int-to-double p1, p2

    .line 89
    invoke-static {v0, v1, p1, p2}, Lcom/facebook/rebound/g;->a(DD)Lcom/facebook/rebound/g;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/rebound/f;->g:Lcom/facebook/rebound/g;

    int-to-double p2, p3

    int-to-double v0, p4

    .line 90
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/rebound/g;->a(DD)Lcom/facebook/rebound/g;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/rebound/f;->h:Lcom/facebook/rebound/g;

    .line 92
    sget-object p3, Lcom/facebook/rebound/f;->b:Lcom/facebook/rebound/h;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "main spring "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/facebook/rebound/f;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/rebound/f;->c:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/facebook/rebound/h;->a(Lcom/facebook/rebound/g;Ljava/lang/String;)Z

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "attachment spring "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p4, Lcom/facebook/rebound/f;->c:I

    add-int/lit8 v0, p4, 0x1

    sput v0, Lcom/facebook/rebound/f;->c:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/facebook/rebound/h;->a(Lcom/facebook/rebound/g;Ljava/lang/String;)Z

    return-void
.end method

.method public static a()Lcom/facebook/rebound/f;
    .locals 1

    .line 42
    new-instance v0, Lcom/facebook/rebound/f;

    invoke-direct {v0}, Lcom/facebook/rebound/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/facebook/rebound/f;
    .locals 2

    .line 128
    iput p1, p0, Lcom/facebook/rebound/f;->f:I

    .line 129
    iget-object v0, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/rebound/e;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 133
    :cond_0
    iget-object p1, p0, Lcom/facebook/rebound/f;->d:Lcom/facebook/rebound/k;

    invoke-virtual {p1}, Lcom/facebook/rebound/k;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/e;

    .line 134
    iget-object v1, p0, Lcom/facebook/rebound/f;->h:Lcom/facebook/rebound/g;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rebound/f;->b()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/rebound/f;->g:Lcom/facebook/rebound/g;

    invoke-virtual {p1, v0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    return-object p0
.end method

.method public final a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/f;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/facebook/rebound/f;->d:Lcom/facebook/rebound/k;

    invoke-virtual {v0}, Lcom/facebook/rebound/k;->a()Lcom/facebook/rebound/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rebound/f;->h:Lcom/facebook/rebound/g;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/facebook/rebound/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/facebook/rebound/e;)V
    .locals 6

    .line 161
    iget-object v0, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/facebook/rebound/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/i;

    .line 165
    iget v2, p0, Lcom/facebook/rebound/f;->f:I

    const/4 v3, -0x1

    if-ne v0, v2, :cond_0

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    move v5, v3

    move v3, v0

    move v0, v5

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-le v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    if-ltz v3, :cond_3

    .line 173
    iget-object v2, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/rebound/e;

    .line 1153
    iget-object v3, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v3, v3, Lcom/facebook/rebound/e$a;->a:D

    .line 174
    invoke-virtual {v2, v3, v4}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    :cond_3
    if-ltz v0, :cond_4

    .line 176
    iget-object v2, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 177
    iget-object v2, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/e;

    .line 2153
    iget-object v2, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, v2, Lcom/facebook/rebound/e$a;->a:D

    .line 177
    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 179
    :cond_4
    invoke-interface {v1, p1}, Lcom/facebook/rebound/i;->a(Lcom/facebook/rebound/e;)V

    return-void
.end method

.method public final b()Lcom/facebook/rebound/e;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/facebook/rebound/f;->f:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/e;

    return-object v0
.end method

.method public final b(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/facebook/rebound/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/i;

    invoke-interface {v0, p1}, Lcom/facebook/rebound/i;->b(Lcom/facebook/rebound/e;)V

    return-void
.end method

.method public final c(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/facebook/rebound/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/i;

    invoke-interface {v0, p1}, Lcom/facebook/rebound/i;->c(Lcom/facebook/rebound/e;)V

    return-void
.end method

.method public final d(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/facebook/rebound/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/i;

    invoke-interface {v0, p1}, Lcom/facebook/rebound/i;->d(Lcom/facebook/rebound/e;)V

    return-void
.end method
