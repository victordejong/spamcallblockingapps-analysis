.class public Lmg$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmg;-><init>([Ljh;Lbs;Lyg;Lgs;Ljt;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmg;


# direct methods
.method public constructor <init>(Lmg;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lmg$a;->a:Lmg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lmg$a;->a:Lmg;

    invoke-virtual {v0, p1}, Lmg;->q(Landroid/os/Message;)V

    return-void
.end method
