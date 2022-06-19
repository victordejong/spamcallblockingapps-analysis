.class public Lnd$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lnd;


# direct methods
.method public constructor <init>(Lnd;)V
    .locals 0

    iput-object p1, p0, Lnd$d;->a:Lnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lnd$d;->a:Lnd;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnd;->R(Z)Z

    return-void
.end method
