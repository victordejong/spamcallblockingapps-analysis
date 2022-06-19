.class public abstract Landroidx/work/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Landroidx/work/v$a<",
        "**>;W:",
        "Landroidx/work/v;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/util/UUID;

.field c:Landroidx/work/impl/model/WorkSpec;

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Landroidx/work/v$a;->a:Z

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/v$a;->d:Ljava/util/Set;

    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/v$a;->b:Ljava/util/UUID;

    .line 130
    iput-object p1, p0, Landroidx/work/v$a;->e:Ljava/lang/Class;

    .line 131
    new-instance v0, Landroidx/work/impl/model/WorkSpec;

    iget-object v1, p0, Landroidx/work/v$a;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/work/v$a;->c:Landroidx/work/impl/model/WorkSpec;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/v$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    return-void
.end method


# virtual methods
.method abstract a()Landroidx/work/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Landroidx/work/v$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroidx/work/v$a;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p1

    iget-object p1, p0, Landroidx/work/v$a;->c:Landroidx/work/impl/model/WorkSpec;

    iget-wide p1, p1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long p3, v0, p1

    if-lez p3, :cond_0

    .line 270
    invoke-virtual {p0}, Landroidx/work/v$a;->a()Landroidx/work/v$a;

    move-result-object p1

    return-object p1

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroidx/work/b;)Landroidx/work/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/b;",
            ")TB;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Landroidx/work/v$a;->c:Landroidx/work/impl/model/WorkSpec;

    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 186
    invoke-virtual {p0}, Landroidx/work/v$a;->a()Landroidx/work/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroidx/work/d;)Landroidx/work/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/d;",
            ")TB;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Landroidx/work/v$a;->c:Landroidx/work/impl/model/WorkSpec;

    iput-object p1, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    .line 198
    invoke-virtual {p0}, Landroidx/work/v$a;->a()Landroidx/work/v$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Landroidx/work/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Landroidx/work/v$a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0}, Landroidx/work/v$a;->a()Landroidx/work/v$a;

    move-result-object p1

    return-object p1
.end method

.method abstract b()Landroidx/work/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public final c()Landroidx/work/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Landroidx/work/v$a;->b()Landroidx/work/v;

    move-result-object v0

    .line 299
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/v$a;->b:Ljava/util/UUID;

    .line 300
    new-instance v1, Landroidx/work/impl/model/WorkSpec;

    iget-object v2, p0, Landroidx/work/v$a;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-direct {v1, v2}, Landroidx/work/impl/model/WorkSpec;-><init>(Landroidx/work/impl/model/WorkSpec;)V

    iput-object v1, p0, Landroidx/work/v$a;->c:Landroidx/work/impl/model/WorkSpec;

    .line 301
    iget-object v2, p0, Landroidx/work/v$a;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    return-object v0
.end method
