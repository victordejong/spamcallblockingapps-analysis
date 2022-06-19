.class public final Lwv$i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final c:Lwv$i;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lwv$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwv$i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwv$i;-><init>(Z)V

    sput-object v0, Lwv$i;->c:Lwv$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lwv;->g:Lwv$b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lwv$b;->e(Lwv$i;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwv$i;)V
    .locals 1

    sget-object v0, Lwv;->g:Lwv$b;

    invoke-virtual {v0, p0, p1}, Lwv$b;->d(Lwv$i;Lwv$i;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lwv$i;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lwv$i;->a:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
