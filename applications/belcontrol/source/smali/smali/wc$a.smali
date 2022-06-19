.class public Lwc$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lwc;


# direct methods
.method public constructor <init>(Lwc;)V
    .locals 0

    iput-object p1, p0, Lwc$a;->a:Lwc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lwc$a;->a:Lwc;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lwc;->e:J

    iget-object v0, p0, Lwc$a;->a:Lwc;

    iget-wide v1, v0, Lwc;->e:J

    invoke-virtual {v0, v1, v2}, Lwc;->c(J)V

    iget-object v0, p0, Lwc$a;->a:Lwc;

    iget-object v0, v0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lwc$a;->a:Lwc;

    invoke-virtual {v0}, Lwc;->e()Lwc$c;

    move-result-object v0

    invoke-virtual {v0}, Lwc$c;->a()V

    :cond_0
    return-void
.end method
