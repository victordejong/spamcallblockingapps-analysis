.class public Lx81$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx81;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx81;


# direct methods
.method public constructor <init>(Lx81;)V
    .locals 0

    iput-object p1, p0, Lx81$a;->a:Lx81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lx81$a;->a:Lx81;

    invoke-static {v0}, Lx81;->F(Lx81;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lx81$a$a;

    invoke-direct {v1, p0}, Lx81$a$a;-><init>(Lx81$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
