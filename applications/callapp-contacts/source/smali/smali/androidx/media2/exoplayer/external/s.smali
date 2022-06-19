.class final synthetic Landroidx/media2/exoplayer/external/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/a$b;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/h$a;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/s;->a:Landroidx/media2/exoplayer/external/h$a;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/ae$b;)V
    .locals 2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/s;->a:Landroidx/media2/exoplayer/external/h$a;

    .line 1800
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/h$a;->d:Z

    iget-object v0, v0, Landroidx/media2/exoplayer/external/h$a;->a:Landroidx/media2/exoplayer/external/ac;

    iget v0, v0, Landroidx/media2/exoplayer/external/ac;->e:I

    invoke-interface {p1, v1, v0}, Landroidx/media2/exoplayer/external/ae$b;->a(ZI)V

    return-void
.end method
