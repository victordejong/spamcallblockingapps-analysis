.class final Landroidx/c/a/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# static fields
.field static final a:Landroidx/c/a/a$d;


# instance fields
.field final b:Ljava/lang/Runnable;

.field final c:Ljava/util/concurrent/Executor;

.field d:Landroidx/c/a/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 202
    new-instance v0, Landroidx/c/a/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/c/a/a$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/c/a/a$d;->a:Landroidx/c/a/a$d;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Landroidx/c/a/a$d;->b:Ljava/lang/Runnable;

    .line 212
    iput-object p2, p0, Landroidx/c/a/a$d;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
