.class public final Ls40$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ly40;

.field public d:Z

.field public e:Z

.field public f:J

.field public g:J

.field public h:Lt40;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ls40$a;->a:Z

    iput-boolean v0, p0, Ls40$a;->b:Z

    sget-object v1, Ly40;->a:Ly40;

    iput-object v1, p0, Ls40$a;->c:Ly40;

    iput-boolean v0, p0, Ls40$a;->d:Z

    iput-boolean v0, p0, Ls40$a;->e:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ls40$a;->f:J

    iput-wide v0, p0, Ls40$a;->g:J

    new-instance v0, Lt40;

    invoke-direct {v0}, Lt40;-><init>()V

    iput-object v0, p0, Ls40$a;->h:Lt40;

    return-void
.end method


# virtual methods
.method public a()Ls40;
    .locals 1

    new-instance v0, Ls40;

    invoke-direct {v0, p0}, Ls40;-><init>(Ls40$a;)V

    return-object v0
.end method

.method public b(Ly40;)Ls40$a;
    .locals 0

    iput-object p1, p0, Ls40$a;->c:Ly40;

    return-object p0
.end method
