.class public final Landroidx/work/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Landroidx/work/NetworkType;

.field d:Z

.field e:Z

.field f:J

.field g:J

.field h:Landroidx/work/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/work/b$a;->a:Z

    iput-boolean v0, p0, Landroidx/work/b$a;->b:Z

    sget-object v1, Landroidx/work/NetworkType;->b:Landroidx/work/NetworkType;

    iput-object v1, p0, Landroidx/work/b$a;->c:Landroidx/work/NetworkType;

    iput-boolean v0, p0, Landroidx/work/b$a;->d:Z

    iput-boolean v0, p0, Landroidx/work/b$a;->e:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/work/b$a;->f:J

    iput-wide v0, p0, Landroidx/work/b$a;->g:J

    new-instance v0, Landroidx/work/c;

    invoke-direct {v0}, Landroidx/work/c;-><init>()V

    iput-object v0, p0, Landroidx/work/b$a;->h:Landroidx/work/c;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/b;
    .locals 1

    new-instance v0, Landroidx/work/b;

    invoke-direct {v0, p0}, Landroidx/work/b;-><init>(Landroidx/work/b$a;)V

    return-object v0
.end method

.method public b(Landroidx/work/NetworkType;)Landroidx/work/b$a;
    .locals 0

    iput-object p1, p0, Landroidx/work/b$a;->c:Landroidx/work/NetworkType;

    return-object p0
.end method
