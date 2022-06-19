.class public final synthetic Lxo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final a:Lyo;


# direct methods
.method public constructor <init>(Lyo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxo;->a:Lyo;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lxo;->a:Lyo;

    invoke-virtual {v0, p1}, Lyo;->y(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
