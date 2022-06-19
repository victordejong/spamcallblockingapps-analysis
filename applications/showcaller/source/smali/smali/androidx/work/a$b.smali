.class public final Landroidx/work/a$b;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Executor;

.field b:Landroidx/work/s;

.field c:Landroidx/work/i;

.field d:Ljava/util/concurrent/Executor;

.field e:Landroidx/work/o;

.field f:Landroidx/work/g;

.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:I

.field k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Landroidx/work/a$b;->h:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/work/a$b;->i:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Landroidx/work/a$b;->j:I

    const/16 v0, 0x14

    .line 5
    iput v0, p0, Landroidx/work/a$b;->k:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/a;
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/a;

    invoke-direct {v0, p0}, Landroidx/work/a;-><init>(Landroidx/work/a$b;)V

    return-object v0
.end method
