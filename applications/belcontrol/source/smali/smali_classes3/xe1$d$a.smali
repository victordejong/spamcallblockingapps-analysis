.class public Lxe1$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxe1$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lxe1$d;


# direct methods
.method public constructor <init>(Lxe1$d;)V
    .locals 0

    iput-object p1, p0, Lxe1$d$a;->a:Lxe1$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lxe1$d$a;->a:Lxe1$d;

    iget-object v0, v0, Lxe1$d;->a:Lxe1;

    invoke-static {v0}, Lxe1;->j(Lxe1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Luf1;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
