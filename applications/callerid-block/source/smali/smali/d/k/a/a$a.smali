.class Ld/k/a/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/k/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ld/k/a/a;


# direct methods
.method constructor <init>(Ld/k/a/a;)V
    .locals 0

    iput-object p1, p0, Ld/k/a/a$a;->a:Ld/k/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Ld/k/a/a$a;->a:Ld/k/a/a;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Ld/k/a/a;->e:J

    iget-object v0, p0, Ld/k/a/a$a;->a:Ld/k/a/a;

    iget-wide v1, v0, Ld/k/a/a;->e:J

    invoke-virtual {v0, v1, v2}, Ld/k/a/a;->c(J)V

    iget-object v0, p0, Ld/k/a/a$a;->a:Ld/k/a/a;

    iget-object v0, v0, Ld/k/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ld/k/a/a$a;->a:Ld/k/a/a;

    invoke-virtual {v0}, Ld/k/a/a;->e()Ld/k/a/a$c;

    move-result-object v0

    invoke-virtual {v0}, Ld/k/a/a$c;->a()V

    :cond_0
    return-void
.end method
