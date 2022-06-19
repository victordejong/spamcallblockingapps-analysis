.class public Lx2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/e;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Ly2/t;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lv2/e;

.field public final d:Lz2/c;

.field public final e:La3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lu2/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lx2/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lv2/e;Ly2/t;Lz2/c;La3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx2/c;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lx2/c;->c:Lv2/e;

    .line 4
    iput-object p3, p0, Lx2/c;->a:Ly2/t;

    .line 5
    iput-object p4, p0, Lx2/c;->d:Lz2/c;

    .line 6
    iput-object p5, p0, Lx2/c;->e:La3/a;

    return-void
.end method


# virtual methods
.method public a(Lu2/i;Lu2/f;Lr2/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx2/c;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lx2/b;

    invoke-direct {v1, p0, p1, p3, p2}, Lx2/b;-><init>(Lx2/c;Lu2/i;Lr2/h;Lu2/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
