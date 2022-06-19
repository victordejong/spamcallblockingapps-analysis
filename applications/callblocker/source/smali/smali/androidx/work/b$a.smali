.class public final Landroidx/work/b$a;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/Executor;

.field b:Landroidx/work/v;

.field c:Landroidx/work/k;

.field d:Ljava/util/concurrent/Executor;

.field e:I

.field f:I

.field g:I

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/b$a;->e:I

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/b$a;->f:I

    .line 241
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/work/b$a;->g:I

    .line 242
    const/16 v0, 0x14

    iput v0, p0, Landroidx/work/b$a;->h:I

    .line 243
    return-void
.end method


# virtual methods
.method public a()Landroidx/work/b;
    .locals 1

    .prologue
    .line 400
    new-instance v0, Landroidx/work/b;

    invoke-direct {v0, p0}, Landroidx/work/b;-><init>(Landroidx/work/b$a;)V

    return-object v0
.end method
