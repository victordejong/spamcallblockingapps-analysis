.class public final Landroidx/work/c$a;
.super Ljava/lang/Object;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Landroidx/work/m;

.field d:Z

.field e:Z

.field f:J

.field g:J

.field h:Landroidx/work/d;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-boolean v1, p0, Landroidx/work/c$a;->a:Z

    .line 284
    iput-boolean v1, p0, Landroidx/work/c$a;->b:Z

    .line 285
    sget-object v0, Landroidx/work/m;->a:Landroidx/work/m;

    iput-object v0, p0, Landroidx/work/c$a;->c:Landroidx/work/m;

    .line 286
    iput-boolean v1, p0, Landroidx/work/c$a;->d:Z

    .line 287
    iput-boolean v1, p0, Landroidx/work/c$a;->e:Z

    .line 289
    iput-wide v2, p0, Landroidx/work/c$a;->f:J

    .line 290
    iput-wide v2, p0, Landroidx/work/c$a;->g:J

    .line 291
    new-instance v0, Landroidx/work/d;

    invoke-direct {v0}, Landroidx/work/d;-><init>()V

    iput-object v0, p0, Landroidx/work/c$a;->h:Landroidx/work/d;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/c;
    .locals 1

    .prologue
    .line 453
    new-instance v0, Landroidx/work/c;

    invoke-direct {v0, p0}, Landroidx/work/c;-><init>(Landroidx/work/c$a;)V

    return-object v0
.end method
