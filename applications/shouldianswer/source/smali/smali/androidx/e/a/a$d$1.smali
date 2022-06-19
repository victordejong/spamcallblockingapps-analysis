.class Landroidx/e/a/a$d$1;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/e/a/a$d;-><init>(Landroidx/e/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/e/a/a$d;


# direct methods
.method constructor <init>(Landroidx/e/a/a$d;)V
    .locals 0

    .line 230
    iput-object p1, p0, Landroidx/e/a/a$d$1;->a:Landroidx/e/a/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 233
    iget-object v0, p0, Landroidx/e/a/a$d$1;->a:Landroidx/e/a/a$d;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/e/a/a$d;->b:J

    .line 234
    iget-object v0, p0, Landroidx/e/a/a$d$1;->a:Landroidx/e/a/a$d;

    iget-object v0, v0, Landroidx/e/a/a$d;->a:Landroidx/e/a/a$a;

    invoke-virtual {v0}, Landroidx/e/a/a$a;->a()V

    return-void
.end method
