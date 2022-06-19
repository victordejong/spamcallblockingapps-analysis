.class public Lqm0$c;
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
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lqm0$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lqm0$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqm0$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lqm0$c;->b:Lqm0$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lqm0$c;->b:Lqm0$e;

    iget-object v1, p0, Lqm0$c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lqm0;->b(Lqm0$e;Landroid/content/Context;)V

    return-void
.end method
