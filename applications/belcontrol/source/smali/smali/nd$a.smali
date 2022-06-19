.class public Lnd$a;
.super Ld;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lnd;


# direct methods
.method public constructor <init>(Lnd;Z)V
    .locals 0

    iput-object p1, p0, Lnd$a;->c:Lnd;

    invoke-direct {p0, p2}, Ld;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lnd$a;->c:Lnd;

    invoke-virtual {v0}, Lnd;->p0()V

    return-void
.end method
