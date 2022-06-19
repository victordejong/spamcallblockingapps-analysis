.class public Lq1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/p;

.field public final synthetic b:Lq1/b;


# direct methods
.method public constructor <init>(Lq1/b;Lx1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/a;->b:Lq1/b;

    iput-object p2, p0, Lq1/a;->a:Lx1/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lo1/h;->c()Lo1/h;

    move-result-object v0

    sget-object v1, Lq1/b;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lq1/a;->a:Lx1/p;

    iget-object v4, v4, Lx1/p;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Scheduling work %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v4}, Lo1/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lq1/a;->b:Lq1/b;

    iget-object v0, v0, Lq1/b;->a:Lq1/c;

    new-array v1, v2, [Lx1/p;

    iget-object v2, p0, Lq1/a;->a:Lx1/p;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lq1/c;->d([Lx1/p;)V

    return-void
.end method
