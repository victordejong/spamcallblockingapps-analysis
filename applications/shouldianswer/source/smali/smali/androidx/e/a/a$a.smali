.class Landroidx/e/a/a$a;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/e/a/a;


# direct methods
.method constructor <init>(Landroidx/e/a/a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 60
    iget-object v0, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/e/a/a;->c:J

    .line 61
    iget-object v0, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    iget-wide v1, v0, Landroidx/e/a/a;->c:J

    invoke-virtual {v0, v1, v2}, Landroidx/e/a/a;->a(J)V

    .line 62
    iget-object v0, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    iget-object v0, v0, Landroidx/e/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Landroidx/e/a/a$a;->a:Landroidx/e/a/a;

    invoke-virtual {v0}, Landroidx/e/a/a;->b()Landroidx/e/a/a$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/e/a/a$c;->a()V

    :cond_0
    return-void
.end method
