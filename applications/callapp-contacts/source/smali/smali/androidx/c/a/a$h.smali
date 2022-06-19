.class final Landroidx/c/a/a$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# static fields
.field static final a:Landroidx/c/a/a$h;


# instance fields
.field volatile b:Ljava/lang/Thread;

.field volatile c:Landroidx/c/a/a$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 121
    new-instance v0, Landroidx/c/a/a$h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/c/a/a$h;-><init>(Z)V

    sput-object v0, Landroidx/c/a/a$h;->a:Landroidx/c/a/a$h;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    sget-object v0, Landroidx/c/a/a;->b:Landroidx/c/a/a$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/c/a/a$a;->a(Landroidx/c/a/a$h;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 151
    iget-object v0, p0, Landroidx/c/a/a$h;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Landroidx/c/a/a$h;->b:Ljava/lang/Thread;

    .line 154
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method final a(Landroidx/c/a/a$h;)V
    .locals 1

    .line 143
    sget-object v0, Landroidx/c/a/a;->b:Landroidx/c/a/a$a;

    invoke-virtual {v0, p0, p1}, Landroidx/c/a/a$a;->a(Landroidx/c/a/a$h;Landroidx/c/a/a$h;)V

    return-void
.end method
