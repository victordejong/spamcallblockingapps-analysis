.class public Lom0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lom0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lom0;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lom0;


# direct methods
.method public constructor <init>(Lom0;JLjava/io/File;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lom0$a;->d:Lom0;

    iput-wide p2, p0, Lom0$a;->a:J

    iput-object p4, p0, Lom0$a;->b:Ljava/io/File;

    iput-object p5, p0, Lom0$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 5

    iget-wide v0, p0, Lom0$a;->a:J

    iget-object v2, p0, Lom0$a;->d:Lom0;

    invoke-static {v2}, Lom0;->a(Lom0;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lom0$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lom0$a;->d:Lom0;

    iget-object v1, p0, Lom0$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lom0$a;->b:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lom0;->b(Lom0;Ljava/lang/String;Ljava/io/File;)V

    :goto_0
    return-void
.end method
