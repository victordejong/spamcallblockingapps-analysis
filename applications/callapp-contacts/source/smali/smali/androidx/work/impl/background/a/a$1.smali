.class final Landroidx/work/impl/background/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/background/a/a;->a(Landroidx/work/impl/model/WorkSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/work/impl/model/WorkSpec;

.field final synthetic b:Landroidx/work/impl/background/a/a;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/a/a;Landroidx/work/impl/model/WorkSpec;)V
    .locals 0

    .line 71
    iput-object p1, p0, Landroidx/work/impl/background/a/a$1;->b:Landroidx/work/impl/background/a/a;

    iput-object p2, p0, Landroidx/work/impl/background/a/a$1;->a:Landroidx/work/impl/model/WorkSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 74
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    sget-object v0, Landroidx/work/impl/background/a/a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/impl/background/a/a$1;->a:Landroidx/work/impl/model/WorkSpec;

    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Scheduling work %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    iget-object v1, p0, Landroidx/work/impl/background/a/a$1;->b:Landroidx/work/impl/background/a/a;

    iget-object v1, v1, Landroidx/work/impl/background/a/a;->b:Landroidx/work/impl/background/a/b;

    new-array v0, v0, [Landroidx/work/impl/model/WorkSpec;

    iget-object v2, p0, Landroidx/work/impl/background/a/a$1;->a:Landroidx/work/impl/model/WorkSpec;

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Landroidx/work/impl/background/a/b;->a([Landroidx/work/impl/model/WorkSpec;)V

    return-void
.end method
