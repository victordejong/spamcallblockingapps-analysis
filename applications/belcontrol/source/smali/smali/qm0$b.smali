.class public Lqm0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lqm0$e;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lqm0$e;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqm0$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lqm0$b;->b:Lqm0$e;

    iput-boolean p3, p0, Lqm0$b;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lqm0$b;->b:Lqm0$e;

    iget-object v1, p0, Lqm0$b;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lqm0$b;->c:Z

    invoke-static {v0, v1, v2}, Lqm0;->a(Lqm0$e;Landroid/content/Context;Z)V

    return-void
.end method
