.class public Lan0$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lan0;-><init>(Landroid/content/Context;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lan0;


# direct methods
.method public constructor <init>(Lan0;)V
    .locals 0

    iput-object p1, p0, Lan0$a;->a:Lan0;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lan0$a;->a:Lan0;

    invoke-virtual {v0, p1}, Lan0;->c(Landroid/os/Message;)V

    return-void
.end method
