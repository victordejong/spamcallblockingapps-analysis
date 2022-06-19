.class public final Landroidx/work/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field b:Z

.field public c:Landroidx/work/l;

.field d:Z

.field e:Z

.field f:J

.field g:J

.field h:Landroidx/work/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Landroidx/work/b$a;->a:Z

    .line 284
    iput-boolean v0, p0, Landroidx/work/b$a;->b:Z

    .line 285
    sget-object v1, Landroidx/work/l;->NOT_REQUIRED:Landroidx/work/l;

    iput-object v1, p0, Landroidx/work/b$a;->c:Landroidx/work/l;

    .line 286
    iput-boolean v0, p0, Landroidx/work/b$a;->d:Z

    .line 287
    iput-boolean v0, p0, Landroidx/work/b$a;->e:Z

    const-wide/16 v0, -0x1

    .line 289
    iput-wide v0, p0, Landroidx/work/b$a;->f:J

    .line 290
    iput-wide v0, p0, Landroidx/work/b$a;->g:J

    .line 291
    new-instance v0, Landroidx/work/c;

    invoke-direct {v0}, Landroidx/work/c;-><init>()V

    iput-object v0, p0, Landroidx/work/b$a;->h:Landroidx/work/c;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/l;)Landroidx/work/b$a;
    .locals 0

    .line 326
    iput-object p1, p0, Landroidx/work/b$a;->c:Landroidx/work/l;

    return-object p0
.end method

.method public final a()Landroidx/work/b;
    .locals 1

    .line 453
    new-instance v0, Landroidx/work/b;

    invoke-direct {v0, p0}, Landroidx/work/b;-><init>(Landroidx/work/b$a;)V

    return-object v0
.end method
