.class public final Lqp$a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqp$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lqp;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqp$a$a;->a:Landroid/os/Handler;

    iput-object p2, p0, Lqp$a$a;->b:Lqp;

    return-void
.end method
