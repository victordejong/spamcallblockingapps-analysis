.class public Lq81$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq81;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq81;


# direct methods
.method public constructor <init>(Lq81;)V
    .locals 0

    iput-object p1, p0, Lq81$a;->a:Lq81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lq81;->F()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lq81$a$a;

    invoke-direct {v1, p0}, Lq81$a$a;-><init>(Lq81$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
