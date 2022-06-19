.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$a;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final b:Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;

.field c:I

.field volatile d:Ljava/lang/Object;

.field private e:Landroidx/a/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/a/a/b/b",
            "<",
            "Landroidx/lifecycle/o",
            "<-TT;>;",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.a;>;"
        }
    .end annotation
.end field

.field private volatile f:Ljava/lang/Object;

.field private g:I

.field private h:Z

.field private i:Z

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroidx/a/a/b/b;

    invoke-direct {v0}, Landroidx/a/a/b/b;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/a/a/b/b;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/LiveData;->c:I

    .line 75
    sget-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroidx/lifecycle/LiveData$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData$1;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Runnable;

    .line 109
    sget-object v0, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I

    .line 111
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 460
    invoke-static {}, Landroidx/a/a/a/a;->a()Landroidx/a/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/a/a/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot invoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on a background thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_0
    return-void
.end method

.method private b(Landroidx/lifecycle/LiveData$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.a;)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$a;->d:Z

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$a;->a(Z)V

    goto :goto_0

    .line 126
    :cond_2
    iget v0, p1, Landroidx/lifecycle/LiveData$a;->e:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->g:I

    if-ge v0, v1, :cond_0

    .line 129
    iget v0, p0, Landroidx/lifecycle/LiveData;->g:I

    iput v0, p1, Landroidx/lifecycle/LiveData$a;->e:I

    .line 131
    iget-object v0, p1, Landroidx/lifecycle/LiveData$a;->c:Landroidx/lifecycle/o;

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/lifecycle/o;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    .line 320
    sget-object v1, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroidx/lifecycle/LiveData$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData",
            "<TT;>.a;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->h:Z

    if-eqz v0, :cond_0

    .line 137
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->i:Z

    .line 157
    :goto_0
    return-void

    .line 140
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->h:Z

    .line 142
    :cond_1
    iput-boolean v2, p0, Landroidx/lifecycle/LiveData;->i:Z

    .line 143
    if-eqz p1, :cond_3

    .line 144
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/LiveData$a;)V

    .line 145
    const/4 p1, 0x0

    .line 155
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->i:Z

    if-nez v0, :cond_1

    .line 156
    iput-boolean v2, p0, Landroidx/lifecycle/LiveData;->h:Z

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/a/a/b/b;

    .line 148
    invoke-virtual {v0}, Landroidx/a/a/b/b;->c()Landroidx/a/a/b/b$d;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData$a;

    invoke-direct {p0, v0}, Landroidx/lifecycle/LiveData;->b(Landroidx/lifecycle/LiveData$a;)V

    .line 150
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->i:Z

    if-eqz v0, :cond_4

    goto :goto_1
.end method

.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/h;",
            "Landroidx/lifecycle/o",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 189
    const-string/jumbo v0, "observe"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 190
    invoke-interface {p1}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/e$b;->a:Landroidx/lifecycle/e$b;

    if-ne v0, v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v1, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/h;Landroidx/lifecycle/o;)V

    .line 195
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/a/a/b/b;

    invoke-virtual {v0, p2, v1}, Landroidx/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData$a;

    .line 196
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData$a;->a(Landroidx/lifecycle/h;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot add the same observer with different lifecycles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_2
    if-nez v0, :cond_0

    .line 203
    invoke-interface {p1}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/g;)V

    goto :goto_0
.end method

.method public a(Landroidx/lifecycle/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/o",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    const-string/jumbo v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->e:Landroidx/a/a/b/b;

    invoke-virtual {v0, p1}, Landroidx/a/a/b/b;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LiveData$a;

    .line 244
    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData$a;->b()V

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData$a;->a(Z)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 286
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->d:Ljava/lang/Object;

    .line 287
    monitor-exit v1

    .line 288
    if-nez v0, :cond_1

    .line 292
    :goto_1
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 291
    :cond_1
    invoke-static {}, Landroidx/a/a/a/a;->a()Landroidx/a/a/a/a;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/LiveData;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/a/a/a/a;->b(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 304
    const-string/jumbo v0, "setValue"

    invoke-static {v0}, Landroidx/lifecycle/LiveData;->a(Ljava/lang/String;)V

    .line 305
    iget v0, p0, Landroidx/lifecycle/LiveData;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->g:I

    .line 306
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->f:Ljava/lang/Object;

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/LiveData$a;)V

    .line 308
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Landroidx/lifecycle/LiveData;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
