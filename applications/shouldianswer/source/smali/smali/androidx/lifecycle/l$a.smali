.class Landroidx/lifecycle/l$a;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/lifecycle/g$b;

.field b:Landroidx/lifecycle/i;


# direct methods
.method constructor <init>(Landroidx/lifecycle/j;Landroidx/lifecycle/g$b;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    invoke-static {p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)Landroidx/lifecycle/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/l$a;->b:Landroidx/lifecycle/i;

    .line 355
    iput-object p2, p0, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/k;Landroidx/lifecycle/g$a;)V
    .locals 2

    .line 359
    invoke-static {p2}, Landroidx/lifecycle/l;->b(Landroidx/lifecycle/g$a;)Landroidx/lifecycle/g$b;

    move-result-object v0

    .line 360
    iget-object v1, p0, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    invoke-static {v1, v0}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/g$b;Landroidx/lifecycle/g$b;)Landroidx/lifecycle/g$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    .line 361
    iget-object v1, p0, Landroidx/lifecycle/l$a;->b:Landroidx/lifecycle/i;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/k;Landroidx/lifecycle/g$a;)V

    .line 362
    iput-object v0, p0, Landroidx/lifecycle/l$a;->a:Landroidx/lifecycle/g$b;

    return-void
.end method
